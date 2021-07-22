import 'package:analyzer/dart/element/element.dart';

import 'package:code_builder/code_builder.dart';
import 'package:recase/recase.dart';

import 'library_builder.dart';

class FormGenerator {
  final ClassElement element;

  const FormGenerator(this.element);

  String get className => '${element.name}Form';

  String fieldName(FieldElement field) => field.name;

  Field staticFieldName(FieldElement field) => Field(
        (b) => b
          ..static = true
          ..type = stringRef
          ..name = field.name
          ..assignment = Code('"${field.name}"'),
      );

  List<Field> get staticFieldNameList =>
      element.fields.map(staticFieldName).toList();

  Field fieldControlName(FieldElement field) => Field(
        (b) => b
          ..type = stringRef
          ..name = '${field.name}ControlName'
          ..assignment = Code('"${field.name}"'),
      );

  List<Field> get fieldControlNameList =>
      element.fields.map(fieldControlName).toList();

  Method fieldValueMethod(FieldElement field) => Method(
        (b) => b
          ..name = '${field.name}Value'
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
          ..name = 'contains${field.name.sentenceCase}'
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
          ..name = '${field.name}Control'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('FormControl<${field.type}>')
          ..body = Code(
            'form.control(${className}.${fieldName(field)})',
          ),
      );

  List<Method> get fieldControlMethodList =>
      element.fields.map(control).toList();
}
