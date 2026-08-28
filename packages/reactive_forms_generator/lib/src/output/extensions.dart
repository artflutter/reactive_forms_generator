// ignore_for_file: implementation_imports
// import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/ast/token.dart';
import 'package:analyzer/src/dart/ast/token.dart';
import 'package:analyzer/src/dart/ast/ast.dart';
import 'package:analyzer/src/generated/utilities_dart.dart';
import 'package:reactive_forms_generator/src/types.dart';

// extension ElementExt on Element {
//   // Future<Declaration> clone() async {
//   //   final unit = await session!.getResolvedUnit(
//   //     source!.fullName,
//   //   );
//   //   unit as ResolvedUnitResult;
//   //   final Object? ast = unit.unit.declarations.firstWhereOrNull(
//   //     (declaration) {
//   //       return declaration.declaredElement?.name == name!;
//   //     },
//   //   );
//   //   if (ast == null) {
//   //     throw InvalidGenerationSourceError(
//   //       'Ast not found',
//   //       element: this,
//   //     );
//   //   }
//   //   if (ast is! Declaration) {
//   //     throw InvalidGenerationSourceError(
//   //       'Ast is not a Declaration',
//   //       element: this,
//   //     );
//   //   }
//   //
//   //   final clonedSource = parseString(content: ast.toSource());
//   //
//   //   final Object? clonedAst = clonedSource.unit.declarations.firstWhereOrNull(
//   //     (declaration) {
//   //       return declaration is ClassDeclaration &&
//   //           (declaration).name.lexeme == name;
//   //     },
//   //   );
//   //   if (clonedAst == null) {
//   //     throw InvalidGenerationSourceError('Ast not found', element: this);
//   //   }
//   //   if (clonedAst is! Declaration) {
//   //     throw InvalidGenerationSourceError(
//   //       'Ast is not a Declaration',
//   //       element: this,
//   //     );
//   //   }
//   //
//   //   return clonedAst;
//   // }
// }

extension FormalParameterImplExt on FormalParameterImpl {
  /// Copy of a plain required positional parameter with the type rewritten.
  FormalParameterImpl get newParameter {
    final parameter = this;
    if (parameter is RegularFormalParameterImpl &&
        parameter.functionTypedSuffix == null) {
      return RegularFormalParameterImpl(
        comment: null,
        metadata: parameter.metadata.toList(),
        kind: parameter.kind,
        requiredKeyword: parameter.requiredKeyword,
        covariantKeyword: parameter.covariantKeyword,
        constFinalOrVarKeyword: parameter.constFinalOrVarKeyword,
        type: parameter.type?.newType,
        name: parameter.name,
        functionTypedSuffix: null,
        defaultClause: null,
      );
    }
    return parameter;
  }

  /// Rewrite an optional/named parameter into a required named one without a
  /// default value, dropping `Default*` annotations.
  FormalParameterImpl get newParameter2 {
    final parameter = this;
    final newMetadata = parameter.metadata
        .where((e) => !e.name.toString().startsWith('Default'))
        .toList();
    switch (parameter) {
      case FieldFormalParameterImpl _:
        return FieldFormalParameterImpl(
          comment: null,
          metadata: newMetadata,
          kind: ParameterKind.NAMED_REQUIRED,
          requiredKeyword: KeywordToken(Keyword.REQUIRED, 0),
          covariantKeyword: parameter.covariantKeyword,
          constFinalOrVarKeyword: parameter.constFinalOrVarKeyword,
          type: parameter.type,
          thisKeyword: parameter.thisKeyword,
          period: parameter.period,
          name: parameter.name,
          functionTypedSuffix: parameter.functionTypedSuffix,
          defaultClause: null,
        );
      case RegularFormalParameterImpl _:
        return RegularFormalParameterImpl(
          comment: null,
          metadata: parameter.functionTypedSuffix != null
              ? parameter.metadata.toList()
              : newMetadata,
          kind: ParameterKind.NAMED_REQUIRED,
          requiredKeyword: KeywordToken(Keyword.REQUIRED, 0),
          covariantKeyword: parameter.covariantKeyword,
          constFinalOrVarKeyword: parameter.constFinalOrVarKeyword,
          type: parameter.functionTypedSuffix != null
              ? parameter.type
              : parameter.type?.newType,
          name: parameter.name,
          functionTypedSuffix: parameter.functionTypedSuffix,
          defaultClause: null,
        );
      case SuperFormalParameterImpl _:
        return SuperFormalParameterImpl(
          comment: null,
          metadata: newMetadata,
          kind: ParameterKind.NAMED_REQUIRED,
          requiredKeyword: KeywordToken(Keyword.REQUIRED, 0),
          covariantKeyword: parameter.covariantKeyword,
          constFinalOrVarKeyword: parameter.constFinalOrVarKeyword,
          type: parameter.type,
          superKeyword: parameter.superKeyword,
          period: parameter.period,
          name: parameter.name,
          functionTypedSuffix: parameter.functionTypedSuffix,
          defaultClause: null,
        );
    }
  }
}

extension TypeAnnotationImplExt on TypeAnnotationImpl {
  TypeAnnotationImpl get newType {
    final type = this;
    return switch (type) {
      final GenericFunctionTypeImpl _ => this,
      final NamedTypeImpl _ => NamedTypeImpl(
        importPrefix: type.importPrefix,
        name: type.name,
        typeArguments: type.typeArguments,
        question: null,
      ),
      final RecordTypeAnnotationImpl _ => this,
    };
  }

  TypeAnnotationImpl get newTypeO {
    final type = this;

    return switch (type) {
      GenericFunctionTypeImpl() => throw UnimplementedError(),
      NamedTypeImpl() => NamedTypeImpl(
        importPrefix: type.importPrefix,
        name: type.element?.hasRfGroupAnnotation == true
            ? StringToken(TokenType.STRING, '${type.name.lexeme}Output', 0)
            : type.name,
        typeArguments: type.typeArguments?.newTypeArguments,
        question: type.question,
      ),
      RecordTypeAnnotationImpl() => throw UnimplementedError(),
    };
  }
}

extension TypeArgumentListImplExt on TypeArgumentListImpl {
  TypeArgumentListImpl get newTypeArguments {
    return TypeArgumentListImpl(
      leftBracket: leftBracket,
      arguments: arguments.map((e) {
        return e.newTypeO;
      }).toList(),
      rightBracket: rightBracket,
    );
  }
}

extension FieldDeclarationImplExt on FieldDeclarationImpl {
  FieldDeclarationImpl get newField => FieldDeclarationImpl(
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
      type: fields.type?.newType,
      variables: fields.variables,
    ),
    semicolon: semicolon,
  );
}
