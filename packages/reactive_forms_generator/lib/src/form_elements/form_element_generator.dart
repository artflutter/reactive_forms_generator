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
        (field.enclosingElement as ConstructorElement).enclosingElement;

    // final optionalChaining =
    //     type?.nullabilitySuffix != NullabilitySuffix.question ||
    //             (enclosingElement == root && !root.isNullable) ||
    //             (enclosingElement != root && !root.isNullable)
    //         ? ''
    //         : '?';

    final optionalChaining = (enclosingElement == root &&
                type?.nullabilitySuffix != NullabilitySuffix.question) ||
            (enclosingElement == root && !root.isNullable)
        // (enclosingElement != root && !root.isNullable) ||
        // !root.isNullable
        ? ''
        : '?';

    // if (enclosingElement.name.camelCase == 'incidenceFilter') {
    //   print('root => $root');
    //   print('root isNullable => ${root.isNullable}');
    //   print('enclosingElement => ${enclosingElement}');
    //   print(optionalChaining);
    //   print(
    //       '${enclosingElement.name.camelCase}$optionalChaining.${field.name}');
    //   print('----------');
    // }

    // print('field => $field');
    // print('type => $type');
    // print('root => $root');
    // print('----------');

    // print(enclosingElement.hasNonAnnotatedRequiredParameters);
    // print(enclosingElement.thisType.getDisplayString(withNullability: true));
    // print('${enclosingElement.name.camelCase}$optionalChaining.${field.name}');
    // print('----------');

    return '${enclosingElement.name.camelCase}$optionalChaining.${field.name}';
  }

  String? validatorName(ExecutableElement? e) {
    var name = e?.name;

    if (e is MethodElement) {
      name = '${e.enclosingElement.name}.$name';
    }

    return name;
  }

  List<String> itemSyncValidatorList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
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
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);

      return annotation;
    }
    return null;
  }

  List<String> syncValidatorList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
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

  List<String> itemAsyncValidatorList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
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
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
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
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
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
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
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
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
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
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
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
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
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
