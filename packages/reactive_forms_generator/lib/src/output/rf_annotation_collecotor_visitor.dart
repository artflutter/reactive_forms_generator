// import 'package:analyzer/dart/ast/ast.dart';
// import 'package:analyzer/dart/ast/visitor.dart';
//
// class RfAnnotationCollectorVisitor extends RecursiveAstVisitor<dynamic> {
//   final List<Annotation> annotationsToRemove = [];
//
//   @override
//   visitAnnotation(Annotation node) {
//     if (node.name.toString() == 'Rf') {
//       annotationsToRemove.add(node);
//     }
//     super.visitAnnotation(node);
//   }
// }
