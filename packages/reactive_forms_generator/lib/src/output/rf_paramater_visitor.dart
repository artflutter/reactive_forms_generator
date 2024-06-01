// ignore_for_file: implementation_imports
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/visitor.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import "package:collection/collection.dart";
import 'package:reactive_forms_generator/src/output/rf_annotation_arguments_visitor.dart';
import 'package:reactive_forms_generator/src/output/rf_annotation_visitor.dart';

class RfParameterVisitor extends RecursiveAstVisitor<dynamic> {
  final Map<String, FieldDeclaration> fieldDeclaration = {};
  final Map<String, FormalParameter> fieldFormalParameter = {};

  @override
  visitFieldDeclaration(FieldDeclaration node) {
    final field = node.fields.variables.firstOrNull;
    if (field != null) {
      fieldDeclaration[field.name.toString()] = node;
    }
    super.visitFieldDeclaration(node);
  }

  @override
  visitFormalParameterList(FormalParameterList node) {
    for (var e in node.parameters) {
      final rfAnnotationVisitor = RfAnnotationVisitor();
      final rfAnnotationArguments = RfAnnotationArgumentsVisitor();
      e.visitChildren(rfAnnotationVisitor);

      if (rfAnnotationVisitor.rfAnnotation != null) {
        e.visitChildren(rfAnnotationArguments);
      }

      if (rfAnnotationArguments.arguments.containsKey('validators') &&
          rfAnnotationArguments.arguments['validators']
                  ?.contains('RequiredValidator()') ==
              true) {
        fieldFormalParameter[e.name.toString()] = e;
      }
    }

    node.visitChildren(this);
    return null;
  }
}

class RfEParameterVisitor extends RecursiveElementVisitor<dynamic> {
  final Map<String, FieldElement> fieldDeclaration = {};
  final Map<String, DefaultFormalParameter> fieldFormalParameter = {};

  @override
  visitFieldElement(FieldElement element) {
    fieldDeclaration[element.name] = element;

    super.visitFieldElement(element);
    return null;
  }

  @override
  visitFieldFormalParameterElement(FieldFormalParameterElement element) {
    // final rfAnnotationVisitor = RfAnnotationVisitor();
    // final rfAnnotationArguments = RfAnnotationArgumentsVisitor();
    // node.accept(rfAnnotationVisitor);
    //
    // if (rfAnnotationVisitor.rfAnnotation != null) {
    //   node.accept(rfAnnotationArguments);
    // }
    //
    // if (rfAnnotationArguments.arguments.containsKey('validators') &&
    //     rfAnnotationArguments.arguments['validators']
    //         ?.contains('RequiredValidator()') ==
    //         true) {
    //   fieldFormalParameter[node.name.toString()] = node;
    // }
    //
    element.visitChildren(this);
    return null;
  }
}
