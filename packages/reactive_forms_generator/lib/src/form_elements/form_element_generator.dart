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
    final enclosingElement =
        (fieldElement.enclosingElement as ConstructorElement).enclosingElement;

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

  List<String> itemSyncValidatorList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      return annotation
              ?.getField('itemValidators')
              ?.toListValue()
              ?.map((e) {
                return validatorName(e.toFunctionValue());
              })
              .whereType<String>()
              .toList() ??
          [];
    }
    return [];
  }

  DartObject? annotation(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);

      return annotation;
    }
    return null;
  }

  String? annotationType(TypeChecker typeChecker) =>
      (annotation(typeChecker)?.type as ParameterizedType)
          .typeArguments
          .first
          .toString();

  bool annotationTyped(TypeChecker typeChecker) {
    final typeAnnotationType = annotationType(typeChecker);

    return typeAnnotationType != 'dynamic' && typeAnnotationType != 'Never';
  }

  Element get fieldElement => field;

  List<String> syncValidatorList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      return annotation
              ?.getField('validators')
              ?.toListValue()
              ?.map((e) {
                return validatorName(e.toFunctionValue());
              })
              .whereType<String>()
              .toList() ??
          [];
    }
    return [];
  }

  List<String> syncValidatorTypedList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      return annotation
              ?.getField('validatorsTyped')
              ?.toListValue()
              ?.map((e) {
                return validatorName(e.toFunctionValue());
              })
              .whereType<String>()
              .toList() ??
          [];
    }
    return [];
  }

  List<String> asyncValidatorTypedList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      return annotation
              ?.getField('asyncValidatorsTyped')
              ?.toListValue()
              ?.map((e) {
                return validatorName(e.toFunctionValue());
              })
              .whereType<String>()
              .toList() ??
          [];
    }
    return [];
  }

  List<String> itemAsyncValidatorList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      return annotation
              ?.getField('itemAsyncValidators')
              ?.toListValue()
              ?.map((e) {
                return validatorName(e.toFunctionValue());
              })
              .whereType<String>()
              .toList() ??
          [];
    }
    return [];
  }

  List<String> asyncValidatorList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      return annotation
              ?.getField('asyncValidators')
              ?.toListValue()
              ?.map((e) {
                return validatorName(e.toFunctionValue());
              })
              .whereType<String>()
              .toList() ??
          [];
    }
    return [];
  }

  int asyncValidatorsDebounceTime(TypeChecker typeChecker) {
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

  int itemAsyncValidatorsDebounceTime(TypeChecker typeChecker) {
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

  bool itemDisabled(TypeChecker typeChecker) {
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

  bool disabled(TypeChecker typeChecker) {
    bool? disabled;
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      disabled = annotation
          ?.getField(
            'disabled',
          )
          ?.toBoolValue();
    }
    return disabled ?? false;
  }

  bool touched(TypeChecker typeChecker) {
    bool? touched;
    if (typeChecker.hasAnnotationOfExact(fieldElement)) {
      final annotation = typeChecker.firstAnnotationOfExact(fieldElement);
      touched = annotation
          ?.getField(
            'touched',
          )
          ?.toBoolValue();
    }
    return touched ?? false;
  }

  String element();
}
