import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:recase/recase.dart';

extension ConstructorElementExt on ConstructorElement {
  bool get hasReactiveFormAnnotatedParameters => parameters.any(
        (e) => e.isReactiveFormAnnotated,
      );
}

extension ParameterElementExt on ParameterElement {
  String get fieldName => name;

  String get fieldValueName => '${fieldName}Value';

  String get fieldControlName => '${fieldName}Control';

  String get fieldControlNameName => '${fieldName}ControlName';

  String get fieldControlPath => '${fieldName}ControlPath';

  String get fieldContainsMethodName => 'contains${fieldName.pascalCase}';

  bool get isNullable => type.nullabilitySuffix == NullabilitySuffix.question;

  String get nullabilitySuffix => isNullable ? '?' : '';

  bool get isReactiveFormAnnotated =>
      isFormGroupArray || isFormGroup || isFormControl || isFormArray;

  // needs careful usage and possibly refactoring
  DartType get typeParameter => (type as ParameterizedType).typeArguments.first;

  bool get isFormGroupArray {
    if (!isFormArray) {
      return false;
    }

    final type = this.type;
    final typeArguments =
        type is ParameterizedType ? type.typeArguments : const <DartType>[];

    final typeParameter = typeArguments.first;

    return typeParameter.element is ClassElement &&
        formGroupChecker.hasAnnotationOf(typeParameter.element!);
  }

  bool get isFormArray => formArrayChecker.hasAnnotationOfExact(this);

  bool get isFormControl => formControlChecker.hasAnnotationOfExact(this);

  bool get isFormGroup {
    final element = type.element;
    return element != null
        ? formGroupChecker.hasAnnotationOfExact(element)
        : false;
  }

  bool get isForm => formChecker.hasAnnotationOfExact(this);
}

extension FieldElementExt on FieldElement {
  String get fieldName => name;

  String get fieldValueName => '${fieldName}Value';

  String get fieldControlName => '${fieldName}Control';

  String get fieldControlNameName => '${fieldName}ControlName';

  String get fieldControlPath => '${fieldName}ControlPath';

  // needs careful usage and possibly refactoring
  DartType get typeParameter => (type as ParameterizedType).typeArguments.first;

  bool get isFormGroupArray {
    if (!isFormArray) {
      return false;
    }

    final type = this.type;
    final typeArguments =
        type is ParameterizedType ? type.typeArguments : const <DartType>[];

    final typeParameter = typeArguments.first;

    return typeParameter.element is ClassElement &&
        formGroupChecker.hasAnnotationOf(typeParameter.element!);
  }

  bool get isFormArray => formArrayChecker.hasAnnotationOfExact(this);

  bool get isFormControl => formControlChecker.hasAnnotationOfExact(this);

  bool get isFormGroup {
    final element = type.element;
    return element != null
        ? formGroupChecker.hasAnnotationOfExact(element)
        : false;
  }

  bool get isForm => formChecker.hasAnnotationOfExact(this);
}

typedef _IterableFunction<T, U> = U Function(T i);
typedef _MergeableFunction<T> = T Function(T oldT, T newT);

Iterable<T> _mergeDuplicatesBy<T, U>(Iterable<T> list,
    _IterableFunction<T, U> fn, _MergeableFunction<T> mergeFn) {
  final values = <U, T>{};
  for (var i in list) {
    final value = fn(i);
    values.update(value, (oldI) => mergeFn(oldI, i), ifAbsent: () => i);
  }
  return values.values.toList();
}

Iterable<T> _removeDuplicatedBy<T, U>(
    Iterable<T> list, _IterableFunction<T, U> fn) {
  final values = <U, bool>{};
  return list.where((i) {
    final value = fn(i);
    return values.update(value, (_) => false, ifAbsent: () => true);
  }).toList();
}

/// Merge multiple values from an iterable given a predicate without modifying
/// the original iterable.
extension ExtensionsOnIterable<T, U> on Iterable<T> {
  /// Merge multiple values from an iterable given a predicate without modifying
  /// the original iterable.
  Iterable<T> mergeDuplicatesBy(
          _IterableFunction<T, U> fn, _MergeableFunction<T> mergeFn) =>
      _mergeDuplicatesBy(this, fn, mergeFn);

  /// Remove duplicated values from an iterable given a predicate without
  /// modifying the original iterable.
  Iterable<T> removeDuplicatedBy(_IterableFunction<T, U> fn) =>
      _removeDuplicatedBy(this, fn);
}
