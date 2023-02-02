import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:recase/recase.dart';

import '../utils.dart';

extension ConstructorElementExt on ConstructorElement {
  bool get hasReactiveFormAnnotatedParameters => parameters.any(
        (e) => e.isReactiveFormAnnotated,
      );
}

extension ClassElementExt on ClassElement {
  String get fullTypeName => thisType.toString();

  String get generics {
    final generics = thisType.typeArguments.join(', ');

    return generics.isNotEmpty ? "<$generics>" : "";
  }

  Iterable<Reference> get genericTypes => thisType.typeArguments.map(
        (e) => Reference(
          e.getDisplayString(withNullability: false),
        ),
      );

  List<ParameterElement> get annotatedParameters {
    final annotatedConstructors =
        constructors.where((e) => e.hasReactiveFormAnnotatedParameters);

    if (annotatedConstructors.isNotEmpty) {
      return annotatedConstructors.first.parameters;
    }

    return [];
  }

  bool get hasNonAnnotatedRequiredParameters {
    return annotatedParameters.any(
      (e) =>
          !e.isReactiveFormAnnotated &&
          e.type.nullabilitySuffix == NullabilitySuffix.none &&
          (e.isRequiredPositional || e.isRequiredNamed),
    );
  }

  bool get isNullable {
    return annotatedParameters.fold(true, (acc, e) {
      if (e.isNotReactiveFormAnnotatedAndNullable) {
        final element = e.type.element;
        if (element is ClassElement) {
          if (element.annotatedParameters.isEmpty) {
            return acc && false;
          } else {
            acc = acc && element.isNullable;
          }
        }

        return acc;
      }

      return acc;
    });
  }
}

// extension ClassElementExt on ClassElement {
//
// }
extension ParameterElementExt on ParameterElement {
  String get fieldName => name;

  String get addListItemName => 'add${fieldName.pascalCase}Item';

  String get removeListItemName => 'remove${fieldName.pascalCase}ItemAtIndex';

  String get addListItemListName => 'add${fieldName.pascalCase}ItemList';

  String get fieldValueName => '_${fieldName}Value';

  String get fieldControlForm => '${fieldName}Form';

  String get fieldControlName => '${fieldName}Control';

  String get fieldControlNamePrivate => '_${fieldName}Control';

  String get fieldExtendedControlName => '${fieldName}ExtendedControl';

  String get fieldControlNameName => '${fieldName}ControlName';

  String get fieldControlPath => '${fieldName}ControlPath';

  String get containsMethodName => 'contains${fieldName.pascalCase}';

  String get errorsMethodName => '${fieldName}Errors';

  String get focusMethodName => '${fieldName}Focus';

  String get removeMethodName => '${fieldName}Remove';

  String get resetMethodName => '${fieldName}ValueReset';

  String get setDisabledMethodName => '${fieldName}SetDisabled';

  bool get isNullable => type.nullabilitySuffix == NullabilitySuffix.question;

  String get nullabilitySuffix => isNullable ? '?' : '';

  bool get isReactiveFormAnnotated =>
      isFormGroupArray || isFormGroup || isFormControl || isFormArray;

  bool get isNotReactiveFormAnnotatedAndNullable =>
      !isReactiveFormAnnotated &&
      type.nullabilitySuffix == NullabilitySuffix.none &&
      ((isRequiredPositional || isRequiredNamed) && !hasDefaultValue);

  String get className => '${elementClassName}Form';

  String get elementClassName {
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

    return baseName;
  }

  String get valueUpdateMethodName => '${name}ValueUpdate';

  String get valuePatchMethodName => '${name}ValuePatch';

  String get clearMethodName => '${name}Clear';

  String get insertMethodName => '${name}Insert';

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

    return (typeParameter.element is ClassElement ||
            typeParameter.element is EnumElement) &&
        !formGroupChecker.hasAnnotationOf(typeParameter.element!);
  }

  bool get isFormControl {
    final isFormControl = formControlChecker.hasAnnotationOfExact(this);
    final isFormGroup = this.isFormGroup;

    if (isFormControl && isFormGroup) {}

    throwIf(
      isFormControl && isFormGroup,
      "Field `$name` can't be annotated with @FormControlAnnotation and @FromGroupAnnotation at the same time.",
      element: this,
    );

    return formControlChecker.hasAnnotationOfExact(this);
  }

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

typedef IterableFunction<T, U> = U Function(T i);
typedef MergeableFunction<T> = T Function(T oldT, T newT);

Iterable<T> _mergeDuplicatesBy<T, U>(
    Iterable<T> list, IterableFunction<T, U> fn, MergeableFunction<T> mergeFn) {
  final values = <U, T>{};
  for (var i in list) {
    final value = fn(i);
    values.update(value, (oldI) => mergeFn(oldI, i), ifAbsent: () => i);
  }
  return values.values.toList();
}

Iterable<T> _removeDuplicatedBy<T, U>(
    Iterable<T> list, IterableFunction<T, U> fn) {
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
          IterableFunction<T, U> fn, MergeableFunction<T> mergeFn) =>
      _mergeDuplicatesBy(this, fn, mergeFn);

  /// Remove duplicated values from an iterable given a predicate without
  /// modifying the original iterable.
  Iterable<T> removeDuplicatedBy(IterableFunction<T, U> fn) =>
      _removeDuplicatedBy(this, fn);
}
