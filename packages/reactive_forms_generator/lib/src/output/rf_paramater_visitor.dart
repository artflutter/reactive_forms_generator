// ignore_for_file: implementation_imports
// import 'package:analyzer/dart/ast/ast.dart';

// import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

// import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/src/dart/element/type.dart' as t;

// import 'package:analyzer/dart/element/visitor.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import "package:collection/collection.dart";
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/output/extensions.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:reactive_forms_generator/src/output/rf_annotation_arguments_visitor.dart';
import 'package:reactive_forms_generator/src/output/rf_annotation_visitor.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/src/dart/ast/token.dart';
import 'package:analyzer/src/dart/ast/utilities.dart';
import 'package:analyzer/src/dart/element/element.dart';

class RfParameterVisitor extends GeneralizingAstVisitor<dynamic> {
  final Map<String, FieldDeclaration> fieldDeclaration = {};
  final Map<String, FormalParameter> fieldFormalParameter = {};
  final List<String> requiredValidators;

  RfParameterVisitor({required this.requiredValidators});

  @override
  void visitFormalParameter(FormalParameter node) {
    // final x = node;

    // final ppp = x.metadata.required;
    //
    //   // x.metadata.map((e) {
    //   //   e.arguments.
    //   //   return e.name.toString().startsWith('Rf');
    //   // } );
    //
    switch (node) {
      case DefaultFormalParameterImpl():
        // final p = node;
        final hasDefaultValue =
            node.parameter.declaredElement?.hasDefaultValue == true;
        final hasDefaultAnnotation = node.parameter.metadata.fold(
            false, (acc, e) => acc || e.name.toString().startsWith('Default'));

        final hasRfGroupAnnotation = node.parameter.declaredElement?.type
                .element?.hasRfGroupAnnotation ==
            true;

        final type = node.parameter.declaredElement?.type;
        final isList = type != null &&
            type.isDartCoreList == true &&
            type is ParameterizedType &&
            (type as t.InterfaceTypeImpl)
                    .typeArguments
                    .firstOrNull
                    ?.element
                    ?.hasRfGroupAnnotation ==
                true;

        // final hasRfGroupAnnotation = node.parameter.declaredElement?.type
        //         .element?.hasRfGroupAnnotation ==
        //     true;
        // final isNullable =
        //     node.parameter.declaredElement?.type.nullabilitySuffix ==
        //         NullabilitySuffix.question;

        if (/*!isNullable &&*/
            (hasRfGroupAnnotation || isList) &&
                (hasDefaultValue || hasDefaultAnnotation)) {
          NodeReplacer.replace(node, node.newParameter2);
        }
        // if (node.metadata.required) {
        //   NodeReplacer.replace(node, node.newParameter);
        //
        //   final enclosingElement =
        //       node.declaredElement?.enclosingElement?.enclosingElement;
        //
        //   // if (enclosingElement is ClassElementImpl) {
        //   //   final t = RfParameterVisitor2(name: node.name.toString());
        //   //   enclosingElement.accept(t);
        //   //
        //   //   final f = t.field;
        //   //
        //   //   if (f != null) {
        //   //
        //   //     NodeReplacer.replace(f, field.newField);
        //   //   }
        //   //
        //   //   print(f);
        //   // }
        //   //
        //   //   // if (t.field != nu) final fields = enclosingElement.fields;
        //   //   //
        //   //   // for (var field in fields) {
        //   //   //   if (field.name == node.name.toString()) {
        //   //   //     NodeReplacer.replace(field, field.newField);
        //   //   //   }
        //   //   // }
        //   // }
        // }
        break;
      default:
      // // TODO: Handle this case.
      // case FieldFormalParameter():
      // // TODO: Handle this case.
      // case FunctionTypedFormalParameter():
      // // TODO: Handle this case.
      // case SimpleFormalParameter():
      // // TODO: Handle this case.
      // case SuperFormalParameter():
      // // TODO: Handle this case.
      // case FieldFormalParameterImpl():
      // // TODO: Handle this case.
      // case FunctionTypedFormalParameterImpl():
      // // TODO: Handle this case.
      // case SimpleFormalParameterImpl():
      // // TODO: Handle this case.
      // case SuperFormalParameterImpl():
      // // TODO: Handle this case.
      // case FieldFormalParameterImpl():
      // // TODO: Handle this case.
      // case FunctionTypedFormalParameterImpl():
      // // TODO: Handle this case.
      // case SimpleFormalParameterImpl():
      // // TODO: Handle this case.
      // case SuperFormalParameterImpl():
      // // TODO: Handle this case.
      // case DefaultFormalParameter():
      //   break;
    }

    super.visitNode(node);
  }

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

      final validators =
          rfAnnotationArguments.arguments[FormElementGenerator.validatorKey];

      final p = requiredValidators.fold(false, (acc, e) {
        return acc || validators?.contains(e) == true;
      });

      if (p) {
        fieldFormalParameter[e.name.toString()] = e;
      }
    }

    node.visitChildren(this);
    return null;
  }
}

class RfParameterVisitor2 extends GeneralizingAstVisitor<dynamic> {
  @override
  void visitNamedType(NamedType node) {
    final element = node.element;
    if (node is NamedTypeImpl &&
        element is ClassElementImpl &&
        element.metadata.hasRfGroupAnnotation) {
      try {
        NodeReplacer.replace(
            node,
            NamedTypeImpl(
              importPrefix: node.importPrefix,
              name2: StringToken(
                TokenType.STRING,
                '${node.name2}Output',
                0,
              ),
              typeArguments: node.typeArguments,
              question: node.question,
            ));
      } catch (e) {
        rethrow;
      }
    }

    super.visitTypeAnnotation(node);
  }
}

// class RfParameterVisitor2 extends GeneralizingAstVisitor<dynamic> {
//   final String name;
//   FieldElement? field;
//
//   RfParameterVisitor2({required this.name});
//
// // @override
// // void visitFieldElement(FieldElement element) {
// //   final e = element;
// //
// //   if (element.name == name) {
// //     field = element;
// //   }
// //
// //   // element.visitChildren(this);
// // }
//
// // @override
// // visitFieldDeclaration(FieldDeclaration node) {
// //   final field = node.fields.variables.firstOrNull;
// //   if (field != null && field.name.toString() == name) {
// //     this.field = node;
// //   }
// //   super.visitFieldDeclaration(node);
// // }
// }

// class RfEParameterVisitor extends RecursiveElementVisitor<dynamic> {
//   final Map<String, FieldElement> fieldDeclaration = {};
//   final Map<String, DefaultFormalParameter> fieldFormalParameter = {};
//
//   @override
//   visitFieldElement(FieldElement element) {
//     fieldDeclaration[element.name] = element;
//
//     super.visitFieldElement(element);
//     return null;
//   }
//
//   @override
//   visitFieldFormalParameterElement(FieldFormalParameterElement element) {
//     // final rfAnnotationVisitor = RfAnnotationVisitor();
//     // final rfAnnotationArguments = RfAnnotationArgumentsVisitor();
//     // node.accept(rfAnnotationVisitor);
//     //
//     // if (rfAnnotationVisitor.rfAnnotation != null) {
//     //   node.accept(rfAnnotationArguments);
//     // }
//     //
//     // if (rfAnnotationArguments.arguments.containsKey('validators') &&
//     //     rfAnnotationArguments.arguments['validators']
//     //         ?.contains('RequiredValidator()') ==
//     //         true) {
//     //   fieldFormalParameter[node.name.toString()] = node;
//     // }
//     //
//     element.visitChildren(this);
//     return null;
//   }
// }
