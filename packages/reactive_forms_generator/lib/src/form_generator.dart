import 'package:analyzer/dart/element/element.dart';

import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_element_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:recase/recase.dart';

import 'library_builder.dart';

class FormGenerator {
  final ClassElement element;

  final Map<String, FormGenerator> formGroupGenerators = {};

  FormGenerator(this.element) {
    nestedFormElements.forEach(
      (e) => formGroupGenerators[e.name] = FormGenerator(
        e.type.element! as ClassElement,
      ),
    );
  }

  List<FieldElement> get formElements => element.fields
      .where(
        (e) =>
            formControlChecker.hasAnnotationOfExact(e) ||
            formArrayChecker.hasAnnotationOfExact(e),
      )
      .toList();

  List<FieldElement> get nestedFormElements => element.fields
      .where(
        (e) => e.type.element is ClassElement,
      )
      .where(
        (e) => formGroupChecker.hasAnnotationOfExact(e.type.element!),
      )
      .toList();

  String get className => '${element.name}Form';

  String fieldName(FieldElement field) => field.name;

  String fieldValueName(FieldElement field) => '${field.name}Value';

  String fieldControlName(FieldElement field) => '${field.name}Control';

  Field staticFieldName(FieldElement field) => Field(
        (b) => b
          ..static = true
          ..type = stringRef
          ..name = field.name
          ..assignment = Code('"${field.name}"'),
      );

  List<Field> get staticFieldNameList =>
      element.fields.map(staticFieldName).toList();

  Field fieldControlField(FieldElement field) => Field(
        (b) => b
          ..type = stringRef
          ..name = '${field.name}ControlName'
          ..assignment = Code('"${field.name}"'),
      );

  List<Field> get fieldControlFieldList =>
      formElements.map(fieldControlField).toList();

  List<Field> get nestedFormGroupFields => nestedFormElements
      .map(
        (e) => Field(
          (b) {
            final name = formGroupGenerators[e.name]!.className;
            b
              ..name = name.camelCase
              ..late = true
              ..type = Reference(name);
          },
        ),
      )
      .toList();

  Method fieldValueMethod(FieldElement field) => Method(
        (b) => b
          ..name = fieldValueName(field)
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference(field.type.toString())
          ..body = Code(
            'form.value[$className.${fieldName(field)}] as ${field.type}',
          ),
      );

  List<Method> get fieldValueMethodList =>
      formElements.map(fieldValueMethod).toList();

  Method fieldContainsMethod(FieldElement field) => Method(
        (b) => b
          ..name = 'contains${field.name.pascalCase}'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('bool')
          ..body = Code(
            'form.contains($className.${fieldName(field)})',
          ),
      );

  List<Method> get fieldContainsMethodList =>
      formElements.map(fieldContainsMethod).toList();

  Method errors(FieldElement field) => Method(
        (b) => b
          ..name = '${field.name}Errors'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('Object?')
          ..body = Code(
            'form.errors[$className.${fieldName(field)}]',
          ),
      );

  List<Method> get fieldErrorsMethodList => formElements.map(errors).toList();

  Method focus(FieldElement field) => Method(
        (b) => b
          ..name = '${field.name}Focus'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('void')
          ..body = Code(
            'form.focus($className.${fieldName(field)})',
          ),
      );

  List<Method> get fieldFocusMethodList => formElements.map(focus).toList();

  Method control(FieldElement field) {
    final type = field.type.getDisplayString(withNullability: false);

    return Method(
      (b) => b
        ..name = fieldControlName(field)
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference('FormControl<$type>')
        ..body = Code(
          'form.control($className.${fieldName(field)}) as FormControl<$type>',
        ),
    );
  }

  List<Method> get fieldControlMethodList => formElements.map(control).toList();

  Method get modelMethod => Method(
        (b) {
          final fields = formElements
              .map(
                (field) => '${fieldName(field)}:${fieldValueName(field)}',
              )
              .toList();

          fields.addAll(
            nestedFormElements.map(
              (field) =>
                  '${fieldName(field)}:${formGroupGenerators[fieldName(field)]!.className.camelCase}.model',
            ),
          );

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
          final formGroupInitializers = formGroupGenerators.values.map(
            (e) {
              final nestedElement = nestedFormElements.firstWhere(
                (nestedElement) =>
                    nestedElement.type.element!.name == e.element.name,
              );
              return '${e.className.camelCase} = ${e.className}(${element.name.camelCase}.${nestedElement.name});';
            },
          );

          b
            ..requiredParameters.addAll([
              Parameter(
                (b) => b
                  ..name = element.name.camelCase
                  ..toThis = true,
              ),
            ])
            ..body = Code('''
                form = fb.group(formElements());
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
                ...fieldControlFieldList,
                ...nestedFormGroupFields,
                // ..type = Reference(element.name),
                Field(
                  (b) => b
                    ..name = element.name.camelCase
                    ..type = Reference(element.name),
                ),
                Field(
                  (b) => b
                    ..name = 'form'
                    ..late = true
                    ..type = Reference('FormGroup'),
                ),
              ],
            )
            ..constructors.add(_constructor)
            ..methods.addAll(
              [
                ...fieldValueMethodList,
                ...fieldContainsMethodList,
                ...fieldErrorsMethodList,
                ...fieldFocusMethodList,
                ...fieldControlMethodList,
                modelMethod,
                Method(
                  (b) {
                    final _formElements = formElements
                        .map(
                          (f) {
                            f.type.element;
                            FormElementGenerator? formElementGenerator;

                            if (formControlChecker.hasAnnotationOfExact(f)) {
                              formElementGenerator = FormControlGenerator(f);
                            }

                            if (formArrayChecker.hasAnnotationOfExact(f)) {
                              formElementGenerator = FormArrayGenerator(f);
                            }

                            if (formElementGenerator != null) {
                              return '$className.${f.name}: ${formElementGenerator.element()}';
                            }

                            return null;
                          },
                        )
                        .whereType<String>()
                        .toList();

                    _formElements.addAll(
                      nestedFormElements.map(
                        (f) =>
                            '$className.${f.name}: ${FormGroupGenerator(f).element()}',
                      ),
                    );

                    b
                      ..name = 'formElements'
                      ..lambda = true
                      // ..requiredParameters.add(Parameter(
                      //   (b) => b
                      //     ..name = element.name.camelCase
                      //     ..type = Reference(element.name),
                      // ))
                      ..returns =
                          Reference('Map<String, AbstractControl<dynamic>>')
                      ..body = Code('{${_formElements.join(',')}}');
                  },
                )
              ],
            ),
        ),
        ...formGroupGenerators.values.map((e) => e.generate).expand((e) => e),
      ];
}
