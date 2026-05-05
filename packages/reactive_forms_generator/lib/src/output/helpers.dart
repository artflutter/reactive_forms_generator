// ignore_for_file: implementation_imports
import 'package:analyzer/src/dart/ast/utilities.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:reactive_forms_generator/src/output/extensions.dart';

void replaceNode(AstNode oldNode, AstNode newNode) {
  final parent = oldNode.parent;
  if (parent is BlockClassBodyImpl &&
      oldNode is ClassMemberImpl &&
      newNode is ClassMemberImpl) {
    final members = parent.members;
    final index = members.indexWhere((member) => identical(member, oldNode));
    if (index == -1) {
      throw ArgumentError('The old node is not a child of its parent');
    }

    members[index] = newNode;
    return;
  }

  NodeReplacer.replace(oldNode, newNode);
}

void replaceR(
  Map<String, FieldDeclaration> fieldDeclaration,
  Map<String, FormalParameter> fieldFormalParameter,
) {
  fieldFormalParameter.forEach((key, node) {
    if (node is SimpleFormalParameterImpl) {
      replaceNode(node, node.newParameter);
    } else if (node is DefaultFormalParameterImpl) {
      final parameter = node.parameter;

      if (parameter is SimpleFormalParameterImpl) {
        final field = fieldDeclaration[key];
        if (field != null && field is FieldDeclarationImpl) {
          replaceNode(field, field.newField);
        }

        replaceNode(node, node.newParameter2);
      }

      if (parameter is FieldFormalParameterImpl) {
        final field = fieldDeclaration[key];
        if (field != null && field is FieldDeclarationImpl) {
          replaceNode(field, field.newField);
        }

        replaceNode(node, node.newParameter2);
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
