import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:collection/collection.dart';
import 'package:reactive_forms_generator/src/output/rf_annotation_arguments.dart';
import 'package:test/test.dart';

void main() {
  group('AnnotationNamedArguments', () {
    test('returns null and empty sources when annotation has no arguments', () {
      final annotation = _firstAnnotation('@RfControl this.email');

      expect(annotation.namedArgument('validators'), isNull);
      expect(annotation.namedArgumentSources, isEmpty);
    });

    test(
      'finds named arguments by exact name and ignores positional arguments',
      () {
        final annotation = _firstAnnotation(
          "@RfControl('ignored', validators: const [RequiredValidator()], "
          'disabled: true) this.email',
        );

        expect(
          annotation.namedArgument('validators')?.toSource(),
          'const [RequiredValidator()]',
        );
        expect(annotation.namedArgument('validator'), isNull);
        expect(annotation.namedArgumentSources, {
          'validators': 'const [RequiredValidator()]',
          'disabled': 'true',
        });
      },
    );

    test('returns unmodifiable named argument maps', () {
      final annotation = _firstAnnotation(
        '@RfControl(disabled: true) this.email',
      );
      final sources = annotation.namedArgumentSources;

      expect(() => sources['disabled'] = 'false', throwsUnsupportedError);
    });
  });

  group('FormalParameterRfAnnotation', () {
    test('ignores unsupported RF-prefixed annotations', () {
      final parameter = _firstParameter('@RfSomethingElse() this.email');

      expect(parameter.rfAnnotation, isNull);
    });

    test('finds supported short and long annotation names', () {
      final shortName = _firstParameter('@RfControl() this.email');
      final longName = _firstParameter('@FormControlAnnotation() this.email');

      expect(shortName.rfAnnotation?.name.toSource(), 'RfControl');
      expect(longName.rfAnnotation?.name.toSource(), 'FormControlAnnotation');
    });

    test('finds aliased annotations by the final identifier name', () {
      final parameter = _firstParameter('@annotations.RfControl() this.email');

      expect(parameter.rfAnnotation?.name.toSource(), 'annotations.RfControl');
    });
  });

  group('ValidatorExpressionMatcher', () {
    test('matches configured constructor validators in list literals', () {
      final expression = _validatorsExpression('const [RequiredValidator()]');

      expect(expression.containsAnyValidator(['RequiredValidator()']), isTrue);
    });

    test('does not match partial validator names', () {
      final expression = _validatorsExpression('const [MyRequiredValidator()]');

      expect(expression.containsAnyValidator(['RequiredValidator()']), isFalse);
    });

    test('matches identifiers and property accesses by selected name', () {
      final identifier = _validatorsExpression('const [requiredValidator]');
      final propertyAccess = _validatorsExpression(
        'const [Validators.required]',
      );

      expect(identifier.containsAnyValidator(['requiredValidator()']), isTrue);
      expect(
        propertyAccess.containsAnyValidator(['Validators.required']),
        isTrue,
      );
    });
  });
}

Annotation _firstAnnotation(String parameterSource) {
  return _firstParameter(parameterSource).metadata.single;
}

Expression _validatorsExpression(String validatorsSource) {
  return _firstAnnotation(
    '@RfControl(validators: $validatorsSource) this.email',
  ).namedArgument('validators')!;
}

FormalParameter _firstParameter(String parameterSource) {
  final unit = parseString(
    content:
        '''
class User {
  final String email;

  User($parameterSource);
}
''',
  ).unit;

  final classBody = unit.declarations.whereType<ClassDeclaration>().single.body;

  return (classBody as BlockClassBody).members
      .whereType<ConstructorDeclaration>()
      .single
      .parameters
      .parameters
      .firstWhereOrNull((parameter) => parameter.name?.lexeme == 'email')!;
}
