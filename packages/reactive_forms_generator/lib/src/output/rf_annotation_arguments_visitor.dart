// ignore_for_file: implementation_imports
import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/dart/ast/visitor.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:analyzer/src/dart/ast/token.dart';
import 'package:analyzer/src/dart/ast/utilities.dart';
import 'package:reactive_forms_generator/src/output/extensions.dart';

extension RfAnnotationArguments on Annotation {
  Expression? namedArgument(String name) {
    final argumentList = arguments;
    if (argumentList == null) {
      return null;
    }

    for (final argument in argumentList.arguments) {
      if (argument is NamedExpression && argument.name.label.name == name) {
        return argument.expression;
      }
    }

    return null;
  }

  Map<String, String> get namedArgumentSources {
    final argumentList = arguments;
    if (argumentList == null) {
      return const <String, String>{};
    }

    final result = <String, String>{};
    for (final argument in argumentList.arguments) {
      if (argument is NamedExpression) {
        result[argument.name.label.name] = argument.expression.toSource();
      }
    }

    return result;
  }
}

extension RfParameterAnnotation on FormalParameter {
  Annotation? get rfAnnotation {
    for (final annotation in metadata) {
      final name = annotation.name.toSource().split('.').last;
      if (name.startsWith('Rf')) {
        return annotation;
      }
    }

    return null;
  }
}

extension RfValidatorArgument on Expression? {
  bool containsAnyValidator(Iterable<String> validators) {
    final expression = this;
    if (expression == null) {
      return false;
    }

    if (expression is ListLiteral) {
      return expression.elements.any((element) {
        final source = element.toSource();
        return validators.any(source.contains);
      });
    }

    final source = expression.toSource();
    return validators.any(source.contains);
  }
}

class ClassRenameVisitor extends RecursiveAstVisitor<void> {
  const ClassRenameVisitor();

  @override
  void visitClassDeclaration(ClassDeclaration node) {
    if (node is ClassDeclarationImpl) {
      NodeReplacer.replace(node, node.outputClass);
    }
  }
}

extension on ClassDeclarationImpl {
  ClassDeclarationImpl get outputClass {
    return ClassDeclarationImpl(
      comment: null,
      metadata: metadata.toList(),
      augmentKeyword: augmentKeyword,
      abstractKeyword: abstractKeyword,
      sealedKeyword: sealedKeyword,
      baseKeyword: baseKeyword,
      interfaceKeyword: interfaceKeyword,
      finalKeyword: finalKeyword,
      mixinKeyword: mixinKeyword,
      classKeyword: classKeyword,
      namePart: namePart.outputClassNamePart,
      extendsClause: extendsClause,
      withClause: withClause?.outputWithClause,
      implementsClause: implementsClause,
      nativeClause: nativeClause,
      body: body.outputClassBody,
    );
  }
}

extension on ClassNamePartImpl {
  ClassNamePartImpl get outputClassNamePart {
    return switch (this) {
      final NameWithTypeParametersImpl part => NameWithTypeParametersImpl(
        typeName: _outputToken(part.typeName.lexeme),
        typeParameters: part.typeParameters,
      ),
      final PrimaryConstructorDeclarationImpl part =>
        PrimaryConstructorDeclarationImpl(
          constKeyword: part.constKeyword,
          typeName: _outputToken(part.typeName.lexeme),
          typeParameters: part.typeParameters,
          constructorName: part.constructorName,
          formalParameters: part.formalParameters,
        ),
    };
  }
}

extension on ClassBodyImpl {
  ClassBodyImpl get outputClassBody {
    return switch (this) {
      final BlockClassBodyImpl body => BlockClassBodyImpl(
        leftBracket: body.leftBracket,
        members: body.members.map((member) => member.outputMember).toList(),
        rightBracket: body.rightBracket,
      ),
      final EmptyClassBodyImpl body => EmptyClassBodyImpl(
        semicolon: body.semicolon,
      ),
      _ => this,
    };
  }
}

extension on WithClauseImpl {
  WithClauseImpl get outputWithClause {
    return WithClauseImpl(
      withKeyword: withKeyword,
      mixinTypes: mixinTypes.map((type) => type.outputNamedType).toList(),
    );
  }
}

extension on ClassMemberImpl {
  ClassMemberImpl get outputMember {
    return switch (this) {
      final ConstructorDeclarationImpl member => member.outputConstructor,
      final FieldDeclarationImpl member => member.outputField,
      final MethodDeclarationImpl member => member,
      final PrimaryConstructorBodyImpl member => member,
    };
  }
}

extension on ConstructorDeclarationImpl {
  ConstructorDeclarationImpl get outputConstructor {
    final typeName = this.typeName;
    return ConstructorDeclarationImpl(
      comment: null,
      metadata: metadata,
      augmentKeyword: augmentKeyword,
      externalKeyword: externalKeyword,
      constKeyword: constKeyword,
      factoryKeyword: factoryKeyword,
      newKeyword: newKeyword,
      typeName: typeName == null
          ? null
          : SimpleIdentifierImpl(token: _outputToken(typeName.name)),
      period: period,
      name: name,
      parameters: parameters,
      separator: separator,
      initializers: initializers,
      redirectedConstructor: redirectedConstructor?.outputConstructorName,
      body: body.outputBody(typeName?.name),
    );
  }
}

extension on ConstructorNameImpl {
  ConstructorNameImpl get outputConstructorName {
    return ConstructorNameImpl(
      type: type.outputNamedType,
      period: period,
      name: name,
    );
  }
}

extension on FunctionBodyImpl {
  FunctionBodyImpl outputBody(String? returnTypeName) {
    return switch (this) {
      final ExpressionFunctionBodyImpl body => body.outputExpressionBody(
        returnTypeName,
      ),
      _ => this,
    };
  }
}

extension on ExpressionFunctionBodyImpl {
  ExpressionFunctionBodyImpl outputExpressionBody(String? returnTypeName) {
    return ExpressionFunctionBodyImpl(
      keyword: keyword,
      star: star,
      functionDefinition: functionDefinition,
      expression: expression.outputExpression(returnTypeName),
      semicolon: semicolon,
    );
  }
}

extension on ExpressionImpl {
  ExpressionImpl outputExpression(String? returnTypeName) {
    return switch (this) {
      final MethodInvocationImpl expression =>
        expression.outputMethodInvocation(returnTypeName),
      _ => this,
    };
  }
}

extension on MethodInvocationImpl {
  MethodInvocationImpl outputMethodInvocation(String? returnTypeName) {
    if (returnTypeName == null) {
      return this;
    }

    return MethodInvocationImpl(
      target: target,
      operator: operator,
      methodName: SimpleIdentifierImpl(
        token: _identifierToken(
          methodName.name.replaceFirst(
            returnTypeName,
            '${returnTypeName}Output',
          ),
        ),
      ),
      typeArguments: typeArguments,
      argumentList: argumentList,
    );
  }
}

extension on FieldDeclarationImpl {
  FieldDeclarationImpl get outputField {
    return FieldDeclarationImpl(
      comment: null,
      metadata: metadata,
      abstractKeyword: abstractKeyword,
      augmentKeyword: augmentKeyword,
      covariantKeyword: covariantKeyword,
      externalKeyword: externalKeyword,
      staticKeyword: staticKeyword,
      fields: VariableDeclarationListImpl(
        comment: null,
        metadata: fields.metadata,
        lateKeyword: fields.lateKeyword,
        keyword: fields.keyword,
        type: fields.type?.newTypeO,
        variables: fields.variables.toList(),
      ),
      semicolon: semicolon,
    );
  }
}

extension on NamedTypeImpl {
  NamedTypeImpl get outputNamedType {
    return NamedTypeImpl(
      importPrefix: importPrefix,
      name: _outputToken(name.lexeme),
      typeArguments: typeArguments,
      question: question,
    );
  }
}

StringToken _outputToken(String name) => _identifierToken('${name}Output');

StringToken _identifierToken(String name) {
  return StringToken(TokenType.IDENTIFIER, name, 0);
}
