// // ignore_for_file: implementation_imports
// import 'package:analyzer/dart/ast/ast.dart';
// import 'package:analyzer/dart/element/element.dart';
// import 'package:analyzer/src/dart/ast/ast.dart';
// import 'package:analyzer/dart/ast/visitor.dart';
//
// class ClassDeclarationVisitor extends RecursiveAstVisitor<void> {
//   final ClassElement classElement;
//
//   ClassDeclaration? _classDeclaration;
//
//   ClassDeclarationVisitor(this.classElement);
//
//   ClassDeclaration? get classDeclaration => _classDeclaration;
//
//   @override
//   void visitClassDeclaration(ClassDeclaration node) {
//     if (node.name.lexeme == classElement.name) {
//       _classDeclaration = node;
//     }
//     super.visitClassDeclaration(node);
//   }
// }
