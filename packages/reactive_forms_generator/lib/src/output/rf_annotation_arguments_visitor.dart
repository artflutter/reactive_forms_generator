// ignore_for_file: implementation_imports
// import 'package:analyzer/dart/element/nullability_suffix.dart';
// import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/src/dart/ast/token.dart';
import 'package:analyzer/src/dart/ast/utilities.dart';
import 'package:reactive_forms_generator/src/output/extensions.dart';

// import 'package:reactive_forms_generator/src/types.dart';
// import 'package:analyzer/src/dart/element/element.dart';

class RfAnnotationArgumentsVisitor extends RecursiveAstVisitor<dynamic> {
  final arguments = <String, String>{};

  @override
  visitArgumentList(ArgumentList node) {
    for (var argument in node.arguments) {
      if (argument is NamedExpression) {
        arguments.addEntries(
          [
            MapEntry(
              argument.name.label.name,
              argument.expression.toSource().toString(),
            ),
          ],
        );
      } else {
        // For positional arguments
      }
    }
    return super.visitArgumentList(node);
  }
}

class ClassRenameVisitor extends GeneralizingAstVisitor<void> {
  // List<ClassDeclarationImpl> updatedClass = [];

  ClassRenameVisitor();

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    if (node is ClassDeclarationImpl) {
      final newNode = ClassDeclarationImpl(
        comment: null,
        metadata: node.metadata
            // .where(
            //   (e) => !e.name.toString().startsWith('Rf'),
            // )
            .toList(),
        augmentKeyword: node.augmentKeyword,
        abstractKeyword: node.abstractKeyword,
        macroKeyword: node.macroKeyword,
        sealedKeyword: node.sealedKeyword,
        baseKeyword: node.baseKeyword,
        interfaceKeyword: node.interfaceKeyword,
        finalKeyword: node.finalKeyword,
        mixinKeyword: node.mixinKeyword,
        classKeyword: node.classKeyword,
        name: StringToken(
          TokenType.STRING,
          '${node.name.lexeme}Output',
          0,
        ),
        typeParameters: node.typeParameters,
        extendsClause: node.extendsClause,
        withClause: node.withClause != null
            ? WithClauseImpl(
                withKeyword: node.withClause!.withKeyword,
                mixinTypes: node.withClause!.mixinTypes.map(
                  (e) {
                    return NamedTypeImpl(
                      importPrefix: e.importPrefix,
                      name2: StringToken(
                        TokenType.STRING,
                        '${e.name2.lexeme}Output',
                        0,
                      ),
                      typeArguments: e.typeArguments,
                      question: e.question,
                    );
                  },
                ).toList(),
              )
            : null,
        implementsClause: node.implementsClause,
        nativeClause: node.nativeClause,
        leftBracket: node.leftBracket,
        members: node.members.map((e) {
          return switch (e) {
            final ConstructorDeclarationImpl _ => ConstructorDeclarationImpl(
                comment: null,
                metadata: e.metadata,
                augmentKeyword: e.augmentKeyword,
                externalKeyword: e.externalKeyword,
                constKeyword: e.constKeyword,
                factoryKeyword: e.factoryKeyword,
                returnType: SimpleIdentifierImpl(
                  StringToken(
                    TokenType.STRING,
                    '${e.returnType.name}Output',
                    0,
                  ),
                ),
                period: e.period,
                name: e.name,
                parameters: e.parameters,
                separator: e.separator,
                initializers: e.initializers,
                redirectedConstructor: e.redirectedConstructor != null
                    ? ConstructorNameImpl(
                        type: NamedTypeImpl(
                          importPrefix:
                              e.redirectedConstructor!.type.importPrefix,
                          name2: StringToken(
                            TokenType.STRING,
                            '${e.redirectedConstructor!.type.name2}Output',
                            0,
                          ),
                          typeArguments:
                              e.redirectedConstructor!.type.typeArguments,
                          question: e.redirectedConstructor!.type.question,
                        ),
                        period: e.redirectedConstructor!.period,
                        name: e.redirectedConstructor!.name,
                      )
                    : null,
                body: switch (e.body) {
                  final BlockFunctionBody _ => e.body,
                  final EmptyFunctionBodyImpl _ => e.body,
                  final ExpressionFunctionBodyImpl _ =>
                    ExpressionFunctionBodyImpl(
                      keyword: (e.body as ExpressionFunctionBodyImpl).keyword,
                      star: (e.body as ExpressionFunctionBodyImpl).star,
                      functionDefinition: (e.body as ExpressionFunctionBodyImpl)
                          .functionDefinition,
                      expression: switch (
                          (e.body as ExpressionFunctionBodyImpl).expression) {
                        MethodInvocationImpl() => MethodInvocationImpl(
                            target: ((e.body as ExpressionFunctionBodyImpl)
                                    .expression as MethodInvocationImpl)
                                .target,
                            operator: ((e.body as ExpressionFunctionBodyImpl)
                                    .expression as MethodInvocationImpl)
                                .operator,
                            methodName: SimpleIdentifierImpl(
                              StringToken(
                                TokenType.STRING,
                                ((e.body as ExpressionFunctionBodyImpl)
                                        .expression as MethodInvocationImpl)
                                    .methodName
                                    .name
                                    .replaceFirst(
                                      e.returnType.name,
                                      '${e.returnType.name}Output',
                                    ),
                                0,
                              ),
                            ),
                            typeArguments:
                                ((e.body as ExpressionFunctionBodyImpl)
                                        .expression as MethodInvocationImpl)
                                    .typeArguments,
                            argumentList:
                                ((e.body as ExpressionFunctionBodyImpl)
                                        .expression as MethodInvocationImpl)
                                    .argumentList,
                          ),
                        _ => (e.body as ExpressionFunctionBodyImpl).expression,
                      },
                      semicolon:
                          (e.body as ExpressionFunctionBodyImpl).semicolon,
                    ),
                  final NativeFunctionBodyImpl _ => e.body,
                },
              ),
            final FieldDeclarationImpl _ => FieldDeclarationImpl(
                comment: null,
                metadata: e.metadata,
                abstractKeyword: e.abstractKeyword,
                augmentKeyword: e.augmentKeyword,
                covariantKeyword: e.covariantKeyword,
                externalKeyword: e.externalKeyword,
                staticKeyword: e.staticKeyword,
                fieldList: VariableDeclarationListImpl(
                  comment: null,
                  metadata: e.fields.metadata,
                  lateKeyword: e.fields.lateKeyword,
                  keyword: e.fields.keyword,
                  type: e.fields.type?.newTypeO,
                  variables: e.fields.variables.map((e) {
                    return e;
                  }).toList(),
                ),
                //e.fields
                semicolon: e.semicolon,
              ),
            final MethodDeclarationImpl _ => MethodDeclarationImpl(
                comment: null,
                metadata: e.metadata,
                augmentKeyword: e.augmentKeyword,
                externalKeyword: e.externalKeyword,
                modifierKeyword: e.modifierKeyword,
                returnType: e.returnType,
                propertyKeyword: e.propertyKeyword,
                operatorKeyword: e.operatorKeyword,
                name: e.name,
                typeParameters: e.typeParameters,
                parameters: e.parameters,
                body: e.body,
              ),
          };
        }).toList(),
        rightBracket: node.rightBracket,
      );

      NodeReplacer.replace(node, newNode);
    }
    super.visitClassDeclaration(node);
  }

// @override
// void visitSimpleFormalParameter(SimpleFormalParameter node) {
//   print(node);
//
//   if (node is SimpleFormalParameterImpl) {
//     if (node.metadata.hasRfGroupAnnotation) {}
//     if (node.metadata.hasRfArrayAnnotation) {
//       final type = node.type;
//       final x = switch(type) {
//         null => type,
//         GenericFunctionTypeImpl() => type,
//         NamedTypeImpl() => type.typeArguments NamedTypeImpl(),
//         RecordTypeAnnotationImpl() => type,
//       };
//     }
//   }
//   node.visitChildren(this);
// }

  // @override
  // void visitFormalParameter(FormalParameter node) {
  //   final x = node;
  //
  //   // final ppp = x.metadata.required;
  //   //
  //   //   // x.metadata.map((e) {
  //   //   //   e.arguments.
  //   //   //   return e.name.toString().startsWith('Rf');
  //   //   // } );
  //   //
  //   switch (node) {
  //     case DefaultFormalParameterImpl():
  //       final p = node;
  //       final hasDefaultValue =
  //           node.parameter.declaredElement?.hasDefaultValue == true;
  //       final hasDefaultAnnotation = node.parameter.metadata.fold(
  //           false, (acc, e) => acc || e.name.toString().startsWith('Default'));
  //
  //       final hasRfGroupAnnotation = node.parameter.declaredElement?.type
  //               .element?.hasRfGroupAnnotation ==
  //           true;
  //
  //       final type = node.parameter.declaredElement?.type;
  //       final isList = type != null &&
  //           type.isDartCoreList == true &&
  //           type is ParameterizedType &&
  //           type.typeArguments.firstOrNull?.element?.hasRfGroupAnnotation ==
  //               true;
  //
  //       // final hasRfGroupAnnotation = node.parameter.declaredElement?.type
  //       //         .element?.hasRfGroupAnnotation ==
  //       //     true;
  //       final isNullable =
  //           node.parameter.declaredElement?.type.nullabilitySuffix ==
  //               NullabilitySuffix.question;
  //
  //       if (!isNullable &&
  //           (hasRfGroupAnnotation || isList) &&
  //           (hasDefaultValue || hasDefaultAnnotation)) {
  //         NodeReplacer.replace(node, node.newParameter2);
  //       }
  //       // if (node.metadata.required) {
  //       //   NodeReplacer.replace(node, node.newParameter);
  //       //
  //       //   final enclosingElement =
  //       //       node.declaredElement?.enclosingElement?.enclosingElement;
  //       //
  //       //   // if (enclosingElement is ClassElementImpl) {
  //       //   //   final t = RfParameterVisitor2(name: node.name.toString());
  //       //   //   enclosingElement.accept(t);
  //       //   //
  //       //   //   final f = t.field;
  //       //   //
  //       //   //   if (f != null) {
  //       //   //
  //       //   //     NodeReplacer.replace(f, field.newField);
  //       //   //   }
  //       //   //
  //       //   //   print(f);
  //       //   // }
  //       //   //
  //       //   //   // if (t.field != nu) final fields = enclosingElement.fields;
  //       //   //   //
  //       //   //   // for (var field in fields) {
  //       //   //   //   if (field.name == node.name.toString()) {
  //       //   //   //     NodeReplacer.replace(field, field.newField);
  //       //   //   //   }
  //       //   //   // }
  //       //   // }
  //       // }
  //       break;
  //     // TODO: Handle this case.
  //     case FieldFormalParameter():
  //     // TODO: Handle this case.
  //     case FunctionTypedFormalParameter():
  //     // TODO: Handle this case.
  //     case SimpleFormalParameter():
  //     // TODO: Handle this case.
  //     case SuperFormalParameter():
  //     // TODO: Handle this case.
  //     case FieldFormalParameterImpl():
  //     // TODO: Handle this case.
  //     case FunctionTypedFormalParameterImpl():
  //     // TODO: Handle this case.
  //     case SimpleFormalParameterImpl():
  //     // TODO: Handle this case.
  //     case SuperFormalParameterImpl():
  //     // TODO: Handle this case.
  //     case FieldFormalParameterImpl():
  //     // TODO: Handle this case.
  //     case FunctionTypedFormalParameterImpl():
  //     // TODO: Handle this case.
  //     case SimpleFormalParameterImpl():
  //     // TODO: Handle this case.
  //     case SuperFormalParameterImpl():
  //     // TODO: Handle this case.
  //     case DefaultFormalParameter():
  //       break;
  //   }
  //
  //   super.visitNode(node);
  // }

  // @override
  // visitFormalParameterList(FormalParameterList node) {
  //   for (var e in node.parameters) {
  //     final rfAnnotationVisitor = RfAnnotationVisitor();
  //     final rfAnnotationArguments = RfAnnotationArgumentsVisitor();
  //     e.visitChildren(rfAnnotationVisitor);
  //
  //     if (rfAnnotationVisitor.rfAnnotation != null) {
  //       e.visitChildren(rfAnnotationArguments);
  //     }
  //
  //     if (rfAnnotationArguments.arguments.containsKey('validators') &&
  //         rfAnnotationArguments.arguments['validators']
  //             ?.contains('RequiredValidator()') ==
  //             true) {
  //       fieldFormalParameter[e.name.toString()] = e;
  //     }
  //   }
  //
  //   node.visitChildren(this);
  //   return null;
  // }

  @override
  void visitConstructorDeclaration(ConstructorDeclaration node) {
    if (node is ConstructorDeclarationImpl && node.name == null) {
      final updatedNode = ConstructorDeclarationImpl(
        comment: null,
        metadata: node.metadata,
        augmentKeyword: node.augmentKeyword,
        externalKeyword: node.externalKeyword,
        constKeyword: node.constKeyword,
        factoryKeyword: node.factoryKeyword,
        returnType: SimpleIdentifierImpl(
          StringToken(
            TokenType.STRING,
            '${node.returnType.name}Output',
            0,
          ),
        ),
        period: node.period,
        name: node.name,
        parameters: node.parameters,
        separator: node.separator,
        initializers: node.initializers,
        redirectedConstructor: node.redirectedConstructor,
        body: node.body,
      );
      NodeReplacer.replace(node, updatedNode);
    }
    super.visitConstructorDeclaration(node);
  }
}
