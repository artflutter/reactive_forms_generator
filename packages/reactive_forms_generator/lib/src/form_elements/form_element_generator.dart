import 'package:analyzer/dart/element/element.dart';
import 'package:source_gen/source_gen.dart';
import 'package:recase/recase.dart';

abstract class FormElementGenerator {
  final FieldElement field;

  FormElementGenerator(this.field);

  String get value =>
      '${(field.enclosingElement as ClassElement).name.camelCase}.${field.name}';

  String? validatorName(ExecutableElement? e) {
    var name = e?.name;

    if (e is MethodElement) {
      name = '${e.enclosingElement.name}.$name';
    }

    return name;
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
