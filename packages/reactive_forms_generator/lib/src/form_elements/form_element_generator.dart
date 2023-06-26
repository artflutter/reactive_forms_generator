import 'package:analyzer/dart/constant/value.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:source_gen/source_gen.dart';
import 'package:recase/recase.dart';

abstract class FormElementGenerator {
  final ClassElement root;
  final ParameterElement field;
  final DartType? type;

  FormElementGenerator(this.root, this.field, this.type);

  String get value {
    final enclosingElement = constructorElement.enclosingElement;

    final optionalChaining = (enclosingElement == root &&
                type?.nullabilitySuffix != NullabilitySuffix.question) ||
            (enclosingElement == root && !root.isNullable)
        ? ''
        : '?';

    return '${enclosingElement.name.camelCase}$optionalChaining.${fieldElement.name}';
  }

  String? validatorName(ExecutableElement? e) {
    var name = e?.name;

    if (e is MethodElement) {
      name = '${e.enclosingElement.name}.$name';
    }

    return name;
  }

  TypeChecker get typeChecker;

  String get itemValidators => param('itemValidators') ?? '[]';

  DartObject? get annotation {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);

      return annotation;
    }
    return null;
  }

  String? get annotationType =>
      (annotation?.type as ParameterizedType?)?.typeArguments.first.toString();

  bool get annotationTyped {
    return annotationType != null &&
        annotationType != 'dynamic' &&
        annotationType != 'Never';
  }

  Element get fieldElement => field;

  ConstructorElement get constructorElement =>
      fieldElement.enclosingElement as ConstructorElement;

  List<String> get annotationParams {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      for (final meta in fieldElement.metadata) {
        final obj = meta.computeConstantValue()!;
        if (typeChecker.isExactlyType(obj.type!)) {
          final regExp = RegExp(
            r'@\S+\((?<params>[\s\S]*)\)',
            multiLine: true,
            caseSensitive: true,
          );

          final match =
              regExp.firstMatch(meta.toSource())?.namedGroup('params');

          return match?.split(':').map((e) => e.trim()).toList() ?? [];
        }
      }
    }

    return [];
  }

  String? param(String name) {
    final index = annotationParams
        .indexWhere((e) => e.startsWith(name) || e.endsWith(name));
    if (index != -1) {
      final paramItem = annotationParams[index + 1];
      final regExp = RegExp(
        r'(?<param>\[[\s\S]*\])',
        multiLine: true,
        caseSensitive: true,
      );

      final match = regExp.firstMatch(paramItem)?.namedGroup('param');

      return match;
    }
    return null;
  }

  String get validators => param('validators') ?? '[]';

  String get itemAsyncValidators => param('itemAsyncValidators') ?? '[]';

  String get asyncValidators => param('asyncValidators') ?? '[]';

  int get asyncValidatorsDebounceTime {
    int? debounceTime;
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      debounceTime = annotation
          ?.getField(
            'asyncValidatorsDebounceTime',
          )
          ?.toIntValue();
    }
    return debounceTime ?? 250;
  }

  int get itemAsyncValidatorsDebounceTime {
    int? debounceTime;
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      debounceTime = annotation
          ?.getField(
            'itemAsyncValidatorsDebounceTime',
          )
          ?.toIntValue();
    }
    return debounceTime ?? 250;
  }

  bool get itemDisabled {
    bool? disabled;
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      disabled = annotation
          ?.getField(
            'itemDisabled',
          )
          ?.toBoolValue();
    }
    return disabled ?? false;
  }

  bool get disabled {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      return annotation?.getField('disabled')?.toBoolValue() ?? false;
    }
    return false;
  }

  bool get touched {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      return annotation?.getField('touched')?.toBoolValue() ?? false;
    }

    return false;
  }

  String element();
}
