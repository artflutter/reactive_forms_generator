import 'package:analyzer/dart/element/element.dart';

import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_element_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:recase/recase.dart';

import 'library_builder.dart';

class FormGenerator {
  final ClassElement element;

  const FormGenerator(this.element);

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
      element.fields.map(fieldControlField).toList();

  Method fieldValueMethod(FieldElement field) => Method(
        (b) => b
          ..name = fieldValueName(field)
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference(field.type.toString())
          ..body = Code(
            'form.value[${className}.${fieldName(field)}] as ${field.type}',
          ),
      );

  List<Method> get fieldValueMethodList =>
      element.fields.map(fieldValueMethod).toList();

  Method fieldContainsMethod(FieldElement field) => Method(
        (b) => b
          ..name = 'contains${field.name.pascalCase}'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('bool')
          ..body = Code(
            'form.contains(${className}.${fieldName(field)})',
          ),
      );

  List<Method> get fieldContainsMethodList =>
      element.fields.map(fieldContainsMethod).toList();

  Method errors(FieldElement field) => Method(
        (b) => b
          ..name = '${field.name}Errors'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('Object?')
          ..body = Code(
            'form.errors[${className}.${fieldName(field)}]',
          ),
      );

  List<Method> get fieldErrorsMethodList => element.fields.map(errors).toList();

  Method focus(FieldElement field) => Method(
        (b) => b
          ..name = '${field.name}Focus'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('void')
          ..body = Code(
            'form.focus(${className}.${fieldName(field)})',
          ),
      );

  List<Method> get fieldFocusMethodList => element.fields.map(focus).toList();

  Method control(FieldElement field) => Method(
        (b) => b
          ..name = fieldControlName(field)
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('FormControl<${field.type}>')
          ..body = Code(
            'form.control(${className}.${fieldName(field)}) as FormControl<${field.type}>',
          ),
      );

  List<Method> get fieldControlMethodList =>
      element.fields.map(control).toList();

  Method get modelMethod => Method(
        (b) {
          final fields = element.fields.map(
            (field) => '${fieldName(field)}:${fieldValueName(field)}',
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

  Spec get generate => Class(
        (b) => b
          ..name = className
          ..fields.addAll(
            [
              ...staticFieldNameList,
              ...fieldControlFieldList,
              Field(
                (b) => b
                  ..name = 'form'
                  ..late = true
                  ..type = Reference('FormGroup'),
              ),
            ],
          )
          ..constructors.add(
            Constructor(
              (b) => b
                ..requiredParameters.addAll([
                  Parameter(
                    (b) => b
                      ..name = element.name.camelCase
                      ..type = Reference(element.name),
                  ),
                ])
                ..body = Code(
                  'form = fb.group(_formElements(${element.name.camelCase}));',
                ),
            ),
          )
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
                  final formElements = element.fields.map(
                    (f) {
                      FormElementGenerator? formElementGenerator = null;
                      if (formControlChecker.hasAnnotationOfExact(f)) {
                        formElementGenerator = FormControlGenerator(f);
                      }

                      if (formArrayChecker.hasAnnotationOfExact(f)) {
                        formElementGenerator = FormArrayGenerator(f);
                      }

                      if (formElementGenerator != null) {
                        return '${className}.${f.name}: ${formElementGenerator.element(
                          '${element.name.camelCase}.${f.name}',
                        )}';
                      }

                      return null;
                    },
                  ).whereType<String>();

                  b
                    ..name = '_formElements'
                    ..lambda = true
                    ..requiredParameters.add(Parameter(
                      (b) => b
                        ..name = element.name.camelCase
                        ..type = Reference(element.name),
                    ))
                    ..returns = Reference('Map<String, Object>')
                    ..body = Code('{${formElements.join(',')}}');
                },
              )
            ],
          ),
      );
}
