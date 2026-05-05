import 'package:analyzer/dart/ast/ast.dart';
import 'package:collection/collection.dart';

const _rfAnnotationNames = <String>{
  'RfControl',
  'FormControlAnnotation',
  'RfArray',
  'FormArrayAnnotation',
  'RfGroup',
  'FormGroupAnnotation',
};

extension AnnotationNamedArguments on Annotation {
  Iterable<NamedExpression> get namedArguments =>
      arguments?.arguments.whereType<NamedExpression>() ??
      const <NamedExpression>[];

  Expression? namedArgument(String name) {
    return namedArguments
        .firstWhereOrNull((argument) => argument.name.label.name == name)
        ?.expression;
  }

  Map<String, Expression> get namedArgumentExpressions {
    return Map.unmodifiable({
      for (final argument in namedArguments)
        argument.name.label.name: argument.expression,
    });
  }

  Map<String, String> get namedArgumentSources {
    return Map.unmodifiable({
      for (final argument in namedArguments)
        argument.name.label.name: argument.expression.toSource(),
    });
  }
}

extension FormalParameterRfAnnotation on FormalParameter {
  Annotation? get rfAnnotation {
    return metadata.firstWhereOrNull((annotation) {
      return _rfAnnotationNames.contains(annotation.rfAnnotationName);
    });
  }
}

extension ValidatorExpressionMatcher on Expression? {
  bool containsAnyValidator(Iterable<String> validators) {
    final expression = this;
    if (expression == null) {
      return false;
    }

    final matcher = _ValidatorMatcher(validators);
    return matcher.matches(expression);
  }
}

extension on Annotation {
  String get rfAnnotationName => name.toSource().split('.').last;
}

class _ValidatorMatcher {
  _ValidatorMatcher(Iterable<String> validators)
    : _rawValidators = validators.map((validator) => validator.trim()).toSet(),
      _validatorNames = validators
          .map(_validatorName)
          .whereType<String>()
          .toSet();

  final Set<String> _rawValidators;
  final Set<String> _validatorNames;

  bool matches(Expression expression) {
    if (_rawValidators.isEmpty && _validatorNames.isEmpty) {
      return false;
    }

    if (expression is ListLiteral) {
      return expression.elements.whereType<Expression>().any(
        _matchesValidatorExpression,
      );
    }

    return _matchesValidatorExpression(expression);
  }

  bool _matchesValidatorExpression(Expression expression) {
    final expressionName = _expressionValidatorName(expression);
    if (expressionName != null && _validatorNames.contains(expressionName)) {
      return true;
    }

    return _rawValidators.contains(expression.toSource().trim());
  }

  static String? _expressionValidatorName(Expression expression) {
    return switch (expression) {
      InstanceCreationExpression() =>
        expression.constructorName.type.name.lexeme,
      MethodInvocation() => expression.methodName.name,
      FunctionExpressionInvocation() => _expressionValidatorName(
        expression.function,
      ),
      PrefixedIdentifier() => expression.identifier.name,
      PropertyAccess() => expression.propertyName.name,
      SimpleIdentifier() => expression.name,
      _ => null,
    };
  }

  static String? _validatorName(String validator) {
    var source = validator.trim();
    if (source.isEmpty) {
      return null;
    }

    source = source.replaceFirst(RegExp(r'^(const|new)\s+'), '');

    final parenIndex = source.indexOf('(');
    if (parenIndex >= 0) {
      source = source.substring(0, parenIndex);
    }

    source = source.split('.').last.trim();
    source = source.replaceFirst(RegExp(r'<.*>$'), '');

    return source.isEmpty ? null : source;
  }
}
