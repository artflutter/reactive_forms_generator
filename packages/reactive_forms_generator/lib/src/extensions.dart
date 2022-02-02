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

extension ClassElementExt on ClassElement {
  List<ParameterElement> get annotatedParameters => constructors
      .where((e) => e.hasReactiveFormAnnotatedParameters)
      .first
      .parameters;

  bool get hasNonAnnotatedRequiredParameters {
    return annotatedParameters.any(
      (e) =>
          !e.isReactiveFormAnnotated &&
          e.type.nullabilitySuffix == NullabilitySuffix.none &&
          (e.isRequiredPositional || e.isRequiredNamed),
    );
  }
}

extension ParameterElementExt on ParameterElement {
  String get fieldName => name;

  String get addListItemName => 'add${fieldName.pascalCase}Item';

  String get removeListItemName => 'remove${fieldName.pascalCase}ItemAtIndex';

  String get addListItemListName => 'add${fieldName.pascalCase}ItemList';

  String get fieldValueName => '${fieldName}Value';

  String get fieldControlName => '${fieldName}Control';

  String get fieldControlNameName => '${fieldName}ControlName';

  String get fieldControlPath => '${fieldName}ControlPath';

  String get fieldContainsMethodName => 'contains${fieldName.pascalCase}';

  bool get isNullable => type.nullabilitySuffix == NullabilitySuffix.question;

  String get nullabilitySuffix => isNullable ? '?' : '';

  bool get isReactiveFormAnnotated =>
      isFormGroupArray || isFormGroup || isFormControl || isFormArray;

  String get className {
    final element = type.element as ClassElement;

    String baseName = '';

    if (formChecker.hasAnnotationOfExact(element)) {
      final annotation = formChecker.firstAnnotationOfExact(element);
      baseName = annotation?.getField('name')?.toStringValue() ?? element.name;
    }

    baseName = element.name;

    if (isFormGroupArray) {
      final element = typeParameter.element as ClassElement;

      if (formChecker.hasAnnotationOfExact(element)) {
        final annotation = formChecker.firstAnnotationOfExact(element);
        baseName =
            annotation?.getField('name')?.toStringValue() ?? element.name;
      }

      baseName = element.name;
    }

    return '${baseName}Form';
  }

  String get valueUpdateMethodName => '${name}ValueUpdate';

  String get valuePatchMethodName => '${name}ValuePatch';

  String get clearMethodName => '${name}Clear';

  // needs careful usage and possibly refactoring
  DartType get typeParameter => (type as ParameterizedType).typeArguments.first;

  bool get isFormGroupArray {
    if (!formArrayChecker.hasAnnotationOfExact(this)) {
      return false;
    }

    final type = this.type;
    final typeArguments =
        type is ParameterizedType ? type.typeArguments : const <DartType>[];

    final typeParameter = typeArguments.first;

    return typeParameter.element is ClassElement &&
        formGroupChecker.hasAnnotationOf(typeParameter.element!);
  }

  bool get isFormArray {
    if (!formArrayChecker.hasAnnotationOfExact(this)) {
      return false;
    }

    final type = this.type;
    final typeArguments =
        type is ParameterizedType ? type.typeArguments : const <DartType>[];

    final typeParameter = typeArguments.first;

    return typeParameter.element is ClassElement &&
        !formGroupChecker.hasAnnotationOf(typeParameter.element!);
  }

  bool get isFormControl => formControlChecker.hasAnnotationOfExact(this);

  bool get isFormGroup {
    final element = type.element;
    return element != null
        ? formGroupChecker.hasAnnotationOfExact(element)
        : false;
  }

  bool get isForm => formChecker.hasAnnotationOfExact(this);
  //
  // bool get hasNoReactiveFormAnnotation =>
  //     !isFormGroup && !isForm && !isFormArray && !isFormControl;
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
