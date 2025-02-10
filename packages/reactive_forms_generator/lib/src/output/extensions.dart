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

extension NormalFormalParameterImplExt on NormalFormalParameterImpl {
  NormalFormalParameterImpl get newParameter {
    final parameter = this;
    switch (parameter) {
      case FieldFormalParameterImpl _:
        return FieldFormalParameterImpl(
          comment: null,
          metadata: parameter.metadata,
          covariantKeyword: parameter.covariantKeyword,
          requiredKeyword: KeywordToken(Keyword.REQUIRED, 0),
          name: parameter.name,
          keyword: parameter.keyword,
          type: parameter.type,
          thisKeyword: parameter.thisKeyword,
          period: parameter.period,
          typeParameters: parameter.typeParameters,
          parameters: parameter.parameters,
          question: parameter.question,
        );
      case FunctionTypedFormalParameterImpl _:
        return this;
      case SimpleFormalParameterImpl _:
        return SimpleFormalParameterImpl(
          comment: null,
          metadata: parameter.metadata,
          covariantKeyword: parameter.covariantKeyword,
          requiredKeyword: KeywordToken(Keyword.REQUIRED, 0),
          keyword: parameter.keyword,
          type: parameter.type?.newType,
          name: parameter.name,
        );
      case SuperFormalParameterImpl _:
        return this;
    }
  }

  NormalFormalParameterImpl get newParameter2 {
    final parameter = this;
    switch (parameter) {
      case FieldFormalParameterImpl _:
        return FieldFormalParameterImpl(
          comment: null,
          metadata: parameter.metadata
              .where((e) => !e.name.toString().startsWith('Default'))
              .toList(),
          covariantKeyword: parameter.covariantKeyword,
          requiredKeyword: KeywordToken(Keyword.REQUIRED, 0),
          name: parameter.name,
          keyword: parameter.keyword,
          type: parameter.type,
          thisKeyword: parameter.thisKeyword,
          period: parameter.period,
          typeParameters: parameter.typeParameters,
          parameters: parameter.parameters,
          question: parameter.question,
        );
      case FunctionTypedFormalParameterImpl _:
        return this;
      case SimpleFormalParameterImpl _:
        return SimpleFormalParameterImpl(
          comment: null,
          metadata: parameter.metadata
              .where((e) => !e.name.toString().startsWith('Default'))
              .toList(),
          covariantKeyword: parameter.covariantKeyword,
          requiredKeyword: KeywordToken(Keyword.REQUIRED, 0),
          keyword: parameter.keyword,
          type: parameter.type?.newType,
          name: parameter.name,
        );
      case SuperFormalParameterImpl _:
        return this;
    }
  }
}

extension DefaultFormalParameterImplExt on DefaultFormalParameterImpl {
  DefaultFormalParameterImpl get newParameter {
    return DefaultFormalParameterImpl(
      parameter: parameter.newParameter,
      kind: ParameterKind.NAMED_REQUIRED,
      separator: null,
      defaultValue: null,
    );
  }

  DefaultFormalParameterImpl get newParameter2 {
    return DefaultFormalParameterImpl(
      parameter: parameter.newParameter2,
      kind: ParameterKind.NAMED_REQUIRED,
      separator: null,
      defaultValue: null,
    );
  }
}

extension SimpleFormalParameterImplExt on SimpleFormalParameterImpl {
  SimpleFormalParameterImpl get newParameter {
    return SimpleFormalParameterImpl(
      comment: null,
      metadata: metadata,
      covariantKeyword: covariantKeyword,
      requiredKeyword: requiredKeyword,
      keyword: keyword,
      type: type?.newType,
      name: name,
    );
  }
}

extension TypeAnnotationImplExt on TypeAnnotationImpl {
  TypeAnnotationImpl get newType {
    final type = this;
    return switch (type) {
      final GenericFunctionTypeImpl _ => this,
      final NamedTypeImpl _ => NamedTypeImpl(
          importPrefix: type.importPrefix,
          name2: type.name2,
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
          name2: type.element?.hasRfGroupAnnotation == true
              ? StringToken(
                  TokenType.STRING,
                  '${type.name2.lexeme}Output',
                  0,
                )
              : type.name2,
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
        fieldList: VariableDeclarationListImpl(
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
