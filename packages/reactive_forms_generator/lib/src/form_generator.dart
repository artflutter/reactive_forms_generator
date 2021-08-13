import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/src/dart/element/element.dart' as e;
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/src/dart/element/type.dart' as t;

import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_elements/form_group_generator.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:recase/recase.dart';

import 'library_builder.dart';

class FormGenerator {
  final ClassElement element;

  final DartType? type;

  final Map<String, FormGenerator> formGroupGenerators = {};

  final Map<String, FormGenerator> nestedFormGroupGenerators = {};

  FormGenerator(this.element, this.type) {
    formGroups.forEach(
      (e) => formGroupGenerators[e.name] = FormGenerator(
        e.type.element! as ClassElement,
        e.type,
      ),
    );

    formGroupArrays.forEach(
      (e) {
        final type = e.type;
        final typeArguments =
            type is ParameterizedType ? type.typeArguments : const <DartType>[];

        final typeParameter = typeArguments.first;

        nestedFormGroupGenerators[e.name] = FormGenerator(
          typeParameter.element! as ClassElement,
          e.type,
        );
      },
    );
  }

  List<FieldElement> get formControls => element.fields
      .where(
        (e) => e.isFormControl,
      )
      .toList();

  List<FieldElement> get formArrays => element.fields
      .where(
        (e) => e.isFormArray && !e.isFormGroupArray,
      )
      .toList();

  List<FieldElement> get formGroups => element.fields
      .where(
        (e) => e.isFormGroup,
      )
      .toList();

  List<FieldElement> get formGroupArrays => element.fields
      .where(
        (e) => e.isFormGroupArray,
      )
      .toList();

  String get className => '${element.name}Form';

  Field staticFieldName(FieldElement field) => Field(
        (b) => b
          ..static = true
          ..type = stringRef
          ..name = '${field.fieldControlNameName}'
          ..assignment = Code('"${field.fieldName}"'),
      );

  List<Field> get staticFieldNameList =>
      element.fields.map(staticFieldName).toList();

  Field field(FieldElement field) => Field(
        (b) => b
          ..type = stringRef
          ..name = field.fieldName
          ..assignment = Code('"${field.fieldName}"'),
      );

  List<Field> get fieldNameList => element.fields.map(field).toList();

  Method fieldControlNameMethod(FieldElement field) => Method(
        (b) => b
          ..returns = stringRef
          ..name = field.fieldControlPath
          ..lambda = true
          ..body = Code('pathBuilder(${field.fieldControlNameName})'),
      );

  List<Method> get fieldControlNameMethodList => [
        ...formControls,
        ...formArrays,
        ...formGroups,
        ...formGroupArrays,
      ].map(fieldControlNameMethod).toList();

  List<Field> get nestedFormGroupFields => formGroups
      .map(
        (e) => Field(
          (b) {
            final name = formGroupGenerators[e.name]!.className;
            b
              ..name = '${e.name}Form'
              ..late = true
              ..type = Reference(name);
          },
        ),
      )
      .toList();

  Method fieldValueMethod(FieldElement field) {
    String fieldValue = '${field.fieldControlName}.value';

    if (field.isFormGroup) {
      fieldValue = '${field.fieldName}Form.model';
    }

    // do not add additional cast if the field is nullable to avoid
    // unnecessary_cast notes
    if (field.type.nullabilitySuffix == NullabilitySuffix.none) {
      fieldValue += ' as ${field.type}';
    }

    if (field.isFormGroupArray) {
      final typeParameter =
          (field.type as ParameterizedType).typeArguments.first;

      final formGenerator =
          FormGenerator(typeParameter.element! as ClassElement, type);

      // fieldValue =
      //     '${field.name}${formGenerator.className}.map((e) => e.model).toList()';
      fieldValue = '''(${field.fieldControlName}.value ?? [])
          .asMap()
          .map((k, v) => MapEntry(
            k,
            ${typeParameter}Form(
              ${typeParameter}(), form, pathBuilder("deliveryList.\$k"))
              .model))
          .values
          .toList()''';
    } else if (field.isFormArray) {
      final type = (field.type as ParameterizedType).typeArguments.first;

      fieldValue =
          '${field.fieldControlName}.value?.whereType<${type.getDisplayString(
        withNullability: true,
      )}>().toList() ?? []';
    }

    return Method(
      (b) => b
        ..name = field.fieldValueName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference(field.type.toString())
        ..body = Code(fieldValue),
    );
  }

  List<Method> get fieldValueMethodList => [
        ...formControls,
        ...formArrays,
        ...formGroups,
        ...formGroupArrays,
      ].map(fieldValueMethod).toList();

  Method fieldContainsMethod(FieldElement field) => Method(
        (b) => b
          ..name = 'contains${field.name.pascalCase}'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('bool')
          ..body = Code(
            'form.contains(${field.fieldControlPath}())',
          ),
      );

  List<Method> get fieldContainsMethodList => [
        ...formControls,
        ...formArrays,
        ...formGroups,
        ...formGroupArrays,
      ].map(fieldContainsMethod).toList();

  Method errors(FieldElement field) => Method(
        (b) => b
          ..name = '${field.name}Errors'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('Object?')
          ..body = Code(
            '${field.fieldControlName}.errors',
          ),
      );

  List<Method> get fieldErrorsMethodList => [
        ...formControls,
        ...formArrays,
        ...formGroups,
        ...formGroupArrays,
      ].map(errors).toList();

  Method focus(FieldElement field) => Method(
        (b) => b
          ..name = '${field.name}Focus'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('void')
          ..body = Code(
            'form.focus(${field.fieldControlPath}())',
          ),
      );

  List<Method> get fieldFocusMethodList => [
        ...formControls,
        ...formArrays,
        ...formGroups,
        ...formGroupArrays,
      ].map(focus).toList();

  Method control(FieldElement field) {
    String displayType = field.type.getDisplayString(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (field.type.nullabilitySuffix == NullabilitySuffix.question) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    final reference = 'FormControl<$displayType>';

    return Method(
      (b) => b
        ..name = field.fieldControlName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference(reference)
        ..body = Code(
          'form.control(${field.fieldControlPath}()) as ${reference}',
        ),
    );
  }

  Method formGroup(FieldElement field) {
    // String displayType = field.type.getDisplayString(withNullability: true);
    //
    // // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // // generic T => T?
    // if (field.type.nullabilitySuffix == NullabilitySuffix.question) {
    //   displayType = displayType.substring(0, displayType.length - 1);
    // }

    final reference = 'FormGroup';

    return Method(
      (b) => b
        ..name = field.fieldControlName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference(reference)
        ..body = Code(
          'form.control(${field.fieldControlPath}()) as ${reference}',
        ),
    );
  }

  Method array(FieldElement field) {
    final type = (field.type as ParameterizedType).typeArguments.first;

    String displayType = type.getDisplayString(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (type.nullabilitySuffix == NullabilitySuffix.question) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    String typeReference = 'FormArray<$displayType>';

    if (field.isFormGroupArray) {
      typeReference = 'FormArray<Map<String, Object?>>';
    }

    return Method(
      (b) => b
        ..name = field.fieldControlName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference(typeReference)
        ..body = Code(
          'form.control(${field.fieldControlPath}()) as ${typeReference}',
        ),
    );
  }

  Method addArrayControl(FieldElement field) {
    // until https://github.com/joanpablo/reactive_forms/issues/204 is somehow resolved
    final type = field.typeParameter.getDisplayString(withNullability: false);

    return Method(
      (b) => b
        ..name = 'add${field.fieldName.pascalCase}Item'
        ..lambda = true
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(type),
          ),
        )
        ..returns = Reference('void')
        ..body = Code(
          '${field.fieldControlName}.add(FormControl<${type}>(value: value))',
        ),
    );
  }

  List<Method> get fieldControlMethodList => formControls.map(control).toList();

  List<Method> get fieldArrayMethodList => [
        ...formArrays.map(array).toList(),
        ...formGroupArrays.map(array).toList()
      ];

  List<Method> get fieldGroupMethodList => formGroups.map(formGroup).toList();

  List<Method> get addArrayControlMethodList =>
      formArrays.map(addArrayControl).toList();

  Method get modelMethod => Method(
        (b) {
          final fields = element.fields
              .map(
                (field) => '${field.fieldName}:${field.fieldValueName}',
              )
              .toList();

          b
            ..name = 'model'
            ..returns = Reference(element.name)
            ..type = MethodType.getter
            ..lambda = true
            ..body = Code('''
              ${element.name}(${fields.join(', ')})
            ''');
        },
      );

  Constructor get _constructor => Constructor(
        (b) {
          final formGroupInitializers = formGroupGenerators
              .map((name, generator) {
                final item =
                    '${name}Form = ${generator.className}(${element.name.camelCase}.${name}, form, pathBuilder(\'${name}\'));';

                return MapEntry(name, item);
              })
              .values
              .toList();

          formGroupInitializers.addAll(
            formGroupArrays.map(
              (e) {
                final typeParameter =
                    (e.type as ParameterizedType).typeArguments.first;

                final formGenerator =
                    FormGenerator(typeParameter.element! as ClassElement, type);
                return '''${e.name}${formGenerator.className} = ${element.name.camelCase}.${e.name}
                  .asMap()
                  .map((k, v) => MapEntry(k, ${formGenerator.className}(v, form, pathBuilder("${e.name}.\$k"))))
                  .values
                  .toList();
                ''';
              },
            ),
          );

          b
            ..requiredParameters.addAll(
              [
                Parameter(
                  (b) => b
                    ..name = element.name.camelCase
                    ..toThis = true,
                ),
                Parameter(
                  (b) => b
                    ..name = 'form'
                    ..toThis = true,
                ),
                Parameter(
                  (b) => b
                    ..name = 'path'
                    ..toThis = true,
                ),
              ],
            )
            ..body = Code('''
              ${formGroupInitializers.join('')}
            ''');
        },
      );

  List<Spec> get generate => [
        Class(
          (b) => b
            ..name = className
            ..fields.addAll(
              [
                // ...fieldNameList,
                ...staticFieldNameList,
                // ...fieldControlFieldList,
                ...nestedFormGroupFields,
                // ..type = Reference(element.name),
                Field(
                  (b) {
                    String displayType =
                        type?.getDisplayString(withNullability: true) ??
                            element.name;

                    if (type != null &&
                        type is ParameterizedType &&
                        (type as ParameterizedType).typeArguments.isNotEmpty) {
                      displayType = (type as ParameterizedType)
                          .typeArguments
                          .first
                          .getDisplayString(withNullability: true);
                    }

                    b
                      ..name = element.name.camelCase
                      ..modifier = FieldModifier.final$
                      ..type = Reference('$displayType');
                  },
                ),
                Field(
                  (b) => b
                    ..name = 'form'
                    ..modifier = FieldModifier.final$
                    ..type = Reference('FormGroup'),
                ),
                Field(
                  (b) => b
                    ..name = 'path'
                    ..modifier = FieldModifier.final$
                    ..type = Reference('String?'),
                ),
                ...formGroupArrays.map(
                  (e) {
                    final typeParameter =
                        (e.type as ParameterizedType).typeArguments.first;

                    final formGenerator = FormGenerator(
                        typeParameter.element! as ClassElement, type);

                    return Field(
                      (b) => b
                        ..name = '${e.name}${formGenerator.className}'
                        ..type = Reference('List<${formGenerator.className}>')
                        ..late = true,
                    );
                  },
                ),
              ],
            )
            ..constructors.add(_constructor)
            ..methods.addAll(
              [
                ...fieldControlNameMethodList,
                ...fieldValueMethodList,
                ...fieldContainsMethodList,
                ...fieldErrorsMethodList,
                ...fieldFocusMethodList,
                ...fieldControlMethodList,
                ...fieldArrayMethodList,
                ...fieldGroupMethodList,
                ...addArrayControlMethodList,
                modelMethod,
                Method(
                  (b) => b
                    ..name = 'pathBuilder'
                    ..lambda = true
                    ..requiredParameters.add(
                      Parameter(
                        (b) => b
                          ..name = 'pathItem'
                          ..type = Reference('String?'),
                      ),
                    )
                    ..returns = Reference('String')
                    ..body = Code('''
                      [path, pathItem].whereType<String>().join(".")
                    '''),
                ),
                Method(
                  (b) {
                    b
                      ..name = 'formElements'
                      ..lambda = true
                      ..returns = Reference('FormGroup')
                      ..body = Code(
                        FormGroupGenerator(
                          e.FieldElementImpl('FakeFieldElement', 20)
                            ..type = t.InterfaceTypeImpl(
                              element: element,
                              typeArguments: [],
                              nullabilitySuffix: NullabilitySuffix.none,
                            ),
                          type,
                        ).element(),
                      );
                  },
                )
              ],
            ),
        ),
        ...formGroupGenerators.values.map((e) => e.generate).expand((e) => e),
        ...nestedFormGroupGenerators.values
            .map((e) => e.generate)
            .expand((e) => e),
      ];
}
