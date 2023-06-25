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

  String get itemValidators {
    final params = annotationParams
        .where((e) => e.startsWith('itemValidators'))
        .map((e) => e.split(":"))
        .expand((e) => e)
        .toList();

    return params.length == 2 ? params.last : '[]';
  }

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

          return match?.split(',').map((e) => e.trim()).toList() ?? [];
        }
      }
    }

    return [];
  }

  String get validators {
    final params = annotationParams
        .where((e) => e.startsWith('validators'))
        .map((e) => e.split(":"))
        .expand((e) => e)
        .toList();

    return params.length == 2 ? params.last : '[]';

    // if (typeChecker.hasAnnotationOfExact(fieldElement)) {
    //   for (final meta in fieldElement.metadata) {
    //     final obj = meta.computeConstantValue()!;
    //     if (typeChecker.isExactlyType(obj.type!)) {
    //       final regExp = RegExp(
    //         r'@FormControlAnnotation\((?<params>[\s\S]*)\)',
    //         multiLine: true,
    //         caseSensitive: true,
    //       );
    //       final params = regExp
    //           .firstMatch(meta.toSource())
    //           ?.namedGroup('params')
    //           ?.split(',')
    //           .map((e) => e.trim())
    //           .where((e) => e.startsWith('validators'))
    //           .map((e) => e.split(":"))
    //           .expand((e) => e)
    //           .toList() ??
    //           [];
    //
    //       return params.length == 2 ? params[1] : '[]';
    //     }
    //   }
    // }
    // return '[]';
  }

  // List<String> syncValidatorTypedList(TypeChecker typeChecker) {
  //   if (typeChecker.hasAnnotationOfExact(fieldElement)) {
  //     final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
  //     return annotation
  //             ?.getField('validatorsTyped')
  //             ?.toListValue()
  //             ?.map((e) {
  //               return validatorName(e.toFunctionValue());
  //             })
  //             .whereType<String>()
  //             .toList() ??
  //         [];
  //   }
  //   return [];
  // }

  // List<String> asyncValidatorTypedList(TypeChecker typeChecker) {
  //   if (typeChecker.hasAnnotationOfExact(fieldElement)) {
  //     final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
  //     return annotation
  //             ?.getField('asyncValidatorsTyped')
  //             ?.toListValue()
  //             ?.map((e) {
  //               return validatorName(e.toFunctionValue());
  //             })
  //             .whereType<String>()
  //             .toList() ??
  //         [];
  //   }
  //   return [];
  // }

  String get itemAsyncValidators {
    final params = annotationParams
        .where((e) => e.startsWith('itemAsyncValidators'))
        .map((e) => e.split(":"))
        .expand((e) => e)
        .toList();

    return params.length == 2 ? params.last : '[]';
  }

  String get asyncValidators {
    final params = annotationParams
        .where((e) => e.startsWith('asyncValidators'))
        .map((e) => e.split(":"))
        .expand((e) => e)
        .toList();

    return params.length == 2 ? params.last : '[]';
  }

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
