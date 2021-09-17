import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/src/dart/element/element.dart' as e;
import 'package:analyzer/src/generated/utilities_dart.dart' as u;
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/src/dart/element/type.dart' as t;

import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_elements/form_array_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_group_generator.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:recase/recase.dart';

import 'library_builder.dart';

enum ValidatorsApplyMode {
  merge,
  override,
}

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

  List<ParameterElement> get formControls => parameters
      .where(
        (e) => e.isFormControl,
      )
      .toList();

  List<ParameterElement> get formArrays => parameters
      .where(
        (e) => e.isFormArray && !e.isFormGroupArray,
      )
      .toList();

  List<ParameterElement> get formGroups => parameters
      .where(
        (e) => e.isFormGroup,
      )
      .toList();

  List<ParameterElement> get formGroupArrays => parameters
      .where(
        (e) => e.isFormGroupArray,
      )
      .toList();

  String get className => '${element.name}Form';

  List<ParameterElement> get parameters => element.constructors
      .where((e) => e.hasReactiveFormAnnotatedParameters)
      .first
      .parameters;

  List<ParameterElement> get annotatedParameters =>
      parameters.where((e) => e.isReactiveFormAnnotated).toList();

  Field staticFieldName(ParameterElement field) => Field(
        (b) => b
          ..static = true
          ..type = stringRef
          ..name = '${field.fieldControlNameName}'
          ..assignment = Code('"${field.fieldName}"'),
      );

  List<Field> get staticFieldNameList {
    return annotatedParameters.map(staticFieldName).toList();
  }

  Field field(ParameterElement field) => Field(
        (b) => b
          ..type = stringRef
          ..name = field.fieldName
          ..assignment = Code('"${field.fieldName}"'),
      );

  List<Field> get fieldNameList => annotatedParameters.map(field).toList();

  Method fieldControlNameMethod(ParameterElement field) => Method(
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

  Method fieldValueMethod(ParameterElement field) {
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

  Method fieldContainsMethod(ParameterElement field) => Method(
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

  Method errors(ParameterElement field) => Method(
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

  Method focus(ParameterElement field) => Method(
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

  Method control(ParameterElement field) {
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

  Method formGroup(ParameterElement field) {
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

  Method array(ParameterElement field) {
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

  Method addGroupControl(ParameterElement field) {
    final type = field.typeParameter.getDisplayString(withNullability: false);

    final formGroupGenerator = FormGenerator(
        field.typeParameter.element as ClassElement, field.typeParameter);

    return Method(
      (b) => b
        ..name = 'add${field.fieldName.pascalCase}Item'
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(type),
          ),
        )
        ..returns = Reference('void')
        ..body = Code(
          '''
              final formGroup = ${formGroupGenerator.className}(value, form, pathBuilder(\'${field.fieldName}\')).formElements();

              ${field.fieldControlName}.add(formGroup);''',
        ),
    );
  }

  Method addArrayControl(ParameterElement field) {
    // until https://github.com/joanpablo/reactive_forms/issues/204 is somehow resolved
    final type = field.typeParameter.getDisplayString(withNullability: false);

    final formArrayGenerator = FormArrayGenerator(field, field.typeParameter);

    final validators =
        formArrayGenerator.itemSyncValidatorList(formArrayChecker);
    final asyncValidators =
        formArrayGenerator.itemAsyncValidatorList(formArrayChecker);
    final asyncValidatorsDebounceTime =
        formArrayGenerator.itemAsyncValidatorsDebounceTime(formArrayChecker);
    final disabled = formArrayGenerator.itemDisabled(formArrayChecker);

    return Method(
      (b) => b
        ..name = 'add${field.fieldName.pascalCase}Item'
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(type),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'asyncValidators'
              ..named = true
              ..type = Reference('List<AsyncValidatorFunction>?'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'validators'
              ..named = true
              ..type = Reference('List<ValidatorFunction>?'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'asyncValidatorsDebounceTime'
              ..named = true
              ..type = Reference('int?'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'disabled'
              ..named = true
              ..type = Reference('bool?'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'validatorsApplyMode'
              ..named = true
              ..defaultTo = Code('ValidatorsApplyMode.merge')
              ..type = Reference('ValidatorsApplyMode'),
          ),
        )
        ..returns = Reference('void')
        ..body = Code(
          '''
              List<ValidatorFunction> resultingValidators = ${validators}; 
              List<AsyncValidatorFunction> resultingAsyncValidators = ${asyncValidators};
              
              switch(validatorsApplyMode) { 
                case ValidatorsApplyMode.merge:
                  if(validators != null)
                    resultingValidators.addAll(validators);
                  if(asyncValidators != null)
                    resultingAsyncValidators.addAll(asyncValidators);
                  break;
                case ValidatorsApplyMode.override:
                  if(validators != null)
                    resultingValidators = validators;
                    
                  if(asyncValidators != null)
                    resultingAsyncValidators = asyncValidators;
                  break;
              }
               
              ${field.fieldControlName}.add(FormControl<${type}>(
                value: value, 
                validators: resultingValidators,
                asyncValidators: resultingAsyncValidators,
                asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? ${asyncValidatorsDebounceTime},
                disabled: disabled ?? ${disabled},
              ));''',
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

  List<Method> get addGroupControlMethodList =>
      formGroupArrays.map(addGroupControl).toList();

  Method get modelMethod => Method(
        (b) {
          final parameterValues = parameters.map((e) {
            if (!e.isReactiveFormAnnotated) {
              return '${e.fieldName}:${element.name.camelCase}.${e.fieldName}';
            }

            if (e.isPositional ||
                e.isRequiredPositional ||
                (e.isOptional && e.isPositional)) {
              return e.fieldValueName;
            }

            return '${e.fieldName}:${e.fieldValueName}';
          });

          b
            ..name = 'model'
            ..returns = Reference(element.name)
            ..type = MethodType.getter
            ..lambda = true
            ..body = Code('''
              ${element.name}(${parameterValues.join(', ')})
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
                ...staticFieldNameList,
                ...nestedFormGroupFields,
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
                ...addGroupControlMethodList,
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
                          e.ParameterElementImpl(
                            name: 'FakeParameterElement',
                            nameOffset: 20,
                            parameterKind: u.ParameterKind.REQUIRED,
                          )..type = t.InterfaceTypeImpl(
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
