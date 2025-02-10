// ignore_for_file: implementation_imports
import 'package:analyzer/src/dart/ast/utilities.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:reactive_forms_generator/src/output/extensions.dart';

void replaceR(
  Map<String, FieldDeclaration> fieldDeclaration,
  Map<String, FormalParameter> fieldFormalParameter,
) {
  fieldFormalParameter.forEach((key, node) {
    if (node is SimpleFormalParameterImpl) {
      NodeReplacer.replace(node, node.newParameter);
    } else if (node is DefaultFormalParameterImpl) {
      final parameter = node.parameter;

      if (parameter is SimpleFormalParameterImpl) {
        final field = fieldDeclaration[key];
        if (field != null && field is FieldDeclarationImpl) {
          NodeReplacer.replace(field, field.newField);
        }

        NodeReplacer.replace(node, node.newParameter2);
      }

      if (parameter is FieldFormalParameterImpl) {
        final field = fieldDeclaration[key];
        if (field != null && field is FieldDeclarationImpl) {
          NodeReplacer.replace(field, field.newField);
        }

        NodeReplacer.replace(node, node.newParameter2);
      }
    }
  });
}

String generateModifiedCode(String code, List<Annotation> annotations) {
  final buffer = StringBuffer();
  int lastIndex = 0;

  for (var annotation in annotations) {
    final offset = annotation.offset;
    final end = annotation.end;

    buffer.write(code.substring(lastIndex, offset));
    buffer.write('');
    lastIndex = end;
  }
  buffer.write(code.substring(lastIndex));

  return buffer.toString();
}
