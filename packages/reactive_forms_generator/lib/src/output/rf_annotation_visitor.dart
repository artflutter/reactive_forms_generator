import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';

class RfAnnotationVisitor extends RecursiveAstVisitor<dynamic> {
  Annotation? rfAnnotation;

  @override
  visitAnnotation(Annotation node) {
    if (node.name.toString().startsWith('Rf')) {
      rfAnnotation = node;
    }
    node.visitChildren(this);

    return null;
  }
}
