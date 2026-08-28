// ignore_for_file: implementation_imports
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:analyzer/src/generated/utilities_dart.dart';
import 'package:reactive_forms_generator/src/output/extensions.dart';

// analyzer 13 removed NodeReplacer, so the parent shapes we rewrite are
// handled explicitly here.
void replaceNode(AstNode oldNode, AstNode newNode) {
  final parent = oldNode.parent;

  if (parent is BlockClassBodyImpl &&
      oldNode is ClassMemberImpl &&
      newNode is ClassMemberImpl) {
    final index = parent.members.indexOf(oldNode);
    if (index != -1) {
      parent.members[index] = newNode;
      return;
    }
  }

  if (parent is CompilationUnitImpl &&
      oldNode is CompilationUnitMemberImpl &&
      newNode is CompilationUnitMemberImpl) {
    final index = parent.declarations.indexOf(oldNode);
    if (index != -1) {
      parent.declarations[index] = newNode;
      return;
    }
  }

  if (parent is FormalParameterListImpl &&
      oldNode is FormalParameterImpl &&
      newNode is FormalParameterImpl) {
    final index = parent.parameters.indexOf(oldNode);
    if (index != -1) {
      parent.parameters[index] = newNode;
      return;
    }
  }

  if (parent is TypeArgumentListImpl &&
      oldNode is TypeAnnotationImpl &&
      newNode is TypeAnnotationImpl) {
    final index = parent.arguments.indexOf(oldNode);
    if (index != -1) {
      parent.arguments[index] = newNode;
      return;
    }
  }

  if (parent is VariableDeclarationListImpl &&
      identical(parent.type, oldNode) &&
      newNode is TypeAnnotationImpl) {
    parent.type = newNode;
    return;
  }

  if (parent is FormalParameterImpl &&
      identical(parent.type, oldNode) &&
      newNode is TypeAnnotationImpl) {
    parent.type = newNode;
    return;
  }

  if (parent is MethodDeclarationImpl &&
      identical(parent.returnType, oldNode) &&
      newNode is TypeAnnotationImpl) {
    parent.returnType = newNode;
    return;
  }

  if (parent is ConstructorNameImpl &&
      identical(parent.type, oldNode) &&
      newNode is NamedTypeImpl) {
    parent.type = newNode;
    return;
  }

  throw UnsupportedError(
    'replaceNode: unhandled parent ${parent.runtimeType} '
    'for ${oldNode.runtimeType}',
  );
}

void replaceR(
  Map<String, FieldDeclaration> fieldDeclaration,
  Map<String, FormalParameter> fieldFormalParameter,
) {
  fieldFormalParameter.forEach((key, node) {
    if (node is! FormalParameterImpl) {
      return;
    }

    if (node.kind == ParameterKind.REQUIRED) {
      if (node is RegularFormalParameterImpl &&
          node.functionTypedSuffix == null) {
        replaceNode(node, node.newParameter);
      }
    } else if ((node is RegularFormalParameterImpl &&
            node.functionTypedSuffix == null) ||
        node is FieldFormalParameterImpl) {
      final field = fieldDeclaration[key];
      if (field != null && field is FieldDeclarationImpl) {
        replaceNode(field, field.newField);
      }

      replaceNode(node, node.newParameter2);
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
