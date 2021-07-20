import 'package:analyzer/dart/element/element.dart';

import 'package:code_builder/code_builder.dart';
import 'package:recase/recase.dart';

class FormGenerator {
  final ClassElement element;

  const FormGenerator(this.element);

  String get className => '${element.name}Form';

  String fieldName(FieldElement field) => field.name;

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
}
