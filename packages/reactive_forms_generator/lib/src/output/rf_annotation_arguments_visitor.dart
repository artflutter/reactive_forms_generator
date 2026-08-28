// ignore_for_file: implementation_imports
// import 'package:analyzer/dart/element/nullability_suffix.dart';
// import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/src/dart/ast/token.dart';
import 'package:reactive_forms_generator/src/output/extensions.dart';
import 'package:reactive_forms_generator/src/output/helpers.dart';

// import 'package:reactive_forms_generator/src/types.dart';
// import 'package:analyzer/src/dart/element/element.dart';

class RfAnnotationArgumentsVisitor extends RecursiveAstVisitor<dynamic> {
  final arguments = <String, String>{};

  @override
  visitArgumentList(ArgumentList node) {
    for (var argument in node.arguments) {
      if (argument is NamedArgument) {
        arguments.addEntries([
          MapEntry(
            argument.name.lexeme,
            argument.argumentExpression.toSource().toString(),
          ),
        ]);
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
        sealedKeyword: node.sealedKeyword,
        baseKeyword: node.baseKeyword,
        interfaceKeyword: node.interfaceKeyword,
        finalKeyword: node.finalKeyword,
        mixinKeyword: node.mixinKeyword,
        classKeyword: node.classKeyword,
        namePart: NameWithTypeParametersImpl(
          typeName: _outputToken(_className(node.namePart)),
          typeParameters: node.namePart.typeParameters,
        ),
        extendsClause: node.extendsClause,
        withClause: node.withClause != null
            ? WithClauseImpl(
                withKeyword: node.withClause!.withKeyword,
                mixinTypes: node.withClause!.mixinTypes.map((e) {
                  return NamedTypeImpl(
                    importPrefix: e.importPrefix,
                    name: StringToken(
                      TokenType.STRING,
                      '${e.name.lexeme}Output',
                      0,
                    ),
                    typeArguments: e.typeArguments,
                    question: e.question,
                  );
                }).toList(),
              )
            : null,
        implementsClause: node.implementsClause,
        nativeClause: node.nativeClause,
        body: switch (node.body) {
          final BlockClassBodyImpl body => BlockClassBodyImpl(
            leftBracket: body.leftBracket,
            members: body.members.map((e) {
              return switch (e) {
                final ConstructorDeclarationImpl _ => _outputConstructor(e),
                final FieldDeclarationImpl _ => FieldDeclarationImpl(
                  comment: null,
                  metadata: e.metadata,
                  abstractKeyword: e.abstractKeyword,
                  augmentKeyword: e.augmentKeyword,
                  covariantKeyword: e.covariantKeyword,
                  externalKeyword: e.externalKeyword,
                  staticKeyword: e.staticKeyword,
                  fields: VariableDeclarationListImpl(
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
                _ => e,
              };
            }).toList(),
            rightBracket: body.rightBracket,
          ),
          final EmptyClassBodyImpl body => EmptyClassBodyImpl(
            semicolon: body.semicolon,
          ),
        },
      );

      replaceNode(node, newNode);
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
      replaceNode(node, _outputConstructor(node));
    }
    super.visitConstructorDeclaration(node);
  }
}

String _className(ClassNamePartImpl namePart) {
  return switch (namePart) {
    NameWithTypeParametersImpl() => namePart.typeName.lexeme,
    PrimaryConstructorDeclarationImpl() => namePart.typeName.lexeme,
  };
}

StringToken _outputToken(String name) {
  return StringToken(TokenType.STRING, '${name}Output', 0);
}

ConstructorDeclarationImpl _outputConstructor(ConstructorDeclarationImpl node) {
  final typeName = node.typeName;
  return ConstructorDeclarationImpl(
    comment: null,
    metadata: node.metadata,
    augmentKeyword: node.augmentKeyword,
    externalKeyword: node.externalKeyword,
    constKeyword: node.constKeyword,
    factoryKeyword: node.factoryKeyword,
    newKeyword: node.newKeyword,
    typeName: typeName != null
        ? SimpleIdentifierImpl(token: _outputToken(typeName.name))
        : null,
    period: node.period,
    name: node.name,
    parameters: node.parameters,
    separator: node.separator,
    initializers: node.initializers,
    redirectedConstructor: _outputConstructorName(node.redirectedConstructor),
    body: _outputFunctionBody(node.body, typeName?.name),
  );
}

ConstructorNameImpl? _outputConstructorName(ConstructorNameImpl? name) {
  if (name == null) {
    return null;
  }

  final type = name.type;
  return ConstructorNameImpl(
    type: NamedTypeImpl(
      importPrefix: type.importPrefix,
      name: _outputToken(type.name.lexeme),
      typeArguments: type.typeArguments,
      question: type.question,
    ),
    period: name.period,
    name: name.name,
  );
}

FunctionBodyImpl _outputFunctionBody(FunctionBodyImpl body, String? typeName) {
  return switch (body) {
    final BlockFunctionBodyImpl _ => body,
    final EmptyFunctionBodyImpl _ => body,
    final ExpressionFunctionBodyImpl _ => ExpressionFunctionBodyImpl(
      keyword: body.keyword,
      star: body.star,
      functionDefinition: body.functionDefinition,
      expression: switch (body.expression) {
        final MethodInvocationImpl expression => MethodInvocationImpl(
          target: expression.target,
          operator: expression.operator,
          methodName: SimpleIdentifierImpl(
            token: StringToken(
              TokenType.STRING,
              typeName == null
                  ? expression.methodName.name
                  : expression.methodName.name.replaceFirst(
                      typeName,
                      '${typeName}Output',
                    ),
              0,
            ),
          ),
          typeArguments: expression.typeArguments,
          argumentList: expression.argumentList,
        ),
        _ => body.expression,
      },
      semicolon: body.semicolon,
    ),
    final NativeFunctionBodyImpl _ => body,
  };
}
