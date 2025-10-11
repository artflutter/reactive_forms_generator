import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/output/x.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:recase/recase.dart';

// ignore: implementation_imports
import 'package:analyzer/src/dart/element/type.dart';

import '../utils.dart';

extension ConstructorElementExt on ConstructorElement2 {
  bool get hasReactiveFormAnnotatedParameters => formalParameters.any(
        (e) => true,
      );
}

extension ClassElementExt on ClassElement2 {
  String get fullTypeName => thisType.toString();

  String get generics {
    final generics = genericTypes.map((e) => e.symbol).join(', ');

    return generics.isNotEmpty ? "<$generics>" : "";
  }

  String get fullGenerics {
    final generics = thisType.typeArguments
        .map((e) => e.element)
        .whereType<Element>()
        .join(', ');

    return generics.isNotEmpty ? "<$generics>" : "";
  }

  Iterable<Reference> get genericTypes {
    return thisType.typeArguments.map(
      (e) => Reference(e.getDisplayString()),
    );
  }

  Iterable<Reference> get fullGenericTypes {
    return thisType.typeArguments.map(
      (e) => Reference(e.element?.getDisplayString()),
    );
  }

  List<FormalParameterElement> get annotatedParameters {
    final annotatedConstructors =
        constructors2.where((e) => e.hasReactiveFormAnnotatedParameters);

    if (annotatedConstructors.isNotEmpty) {
      return annotatedConstructors.first.formalParameters;
    }

    return [];
  }

  bool get isNullable => annotatedParameters.fold(true, (acc, e) => acc);
}

extension ParameterElementExt on FormalParameterElement {
  String get fieldName => name3 ?? '<null>';

  String get addListItemName => 'add${fieldName.pascalCase}Item';

  String get removeListItemName => 'remove${fieldName.pascalCase}ItemAtIndex';

  String get addListItemListName => 'add${fieldName.pascalCase}ItemList';

  String get fieldValueName => '_${fieldName}Value';

  String get fieldRawValueName => '_${fieldName}RawValue';

  String get fieldControlForm => '${fieldName}Form';

  String get fieldControlName => '${fieldName}Control';

  String get fieldControlControlsName => '${fieldName}ControlControls';

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

  String get className => '${elementClassName}Form';

  String get elementClassName {
    final element = type.element3 as ClassElement2;

    String baseName = '';

    if (element.hasRfAnnotation) {
      final annotation = element.rfAnnotation;
      baseName = annotation?.getField('name')?.toStringValue() ??
          element.name3 ??
          '<null>';
    }

    baseName = element.name3 ?? '<null>';

    if (isFormGroupArray) {
      final element = typeParameter.element3 as ClassElement2;

      if (element.hasRfAnnotation) {
        final annotation = element.rfAnnotation;
        baseName = annotation?.getField('name')?.toStringValue() ??
            element.name3 ??
            '<null>';
      }

      baseName = element.name3 ?? '<null>';
    }

    return baseName;
  }

  String get valueUpdateMethodName => '${name3}ValueUpdate';

  String get valuePatchMethodName => '${name3}ValuePatch';

  String get clearMethodName => '${name3}Clear';

  String get insertMethodName => '${name3}Insert';

  // needs careful usage and possibly refactoring
  DartType get typeParameter => (type as ParameterizedType).typeArguments.first;

  bool get isFormGroupArray {
    if (!hasRfArrayAnnotation) {
      return false;
    }

    final type = this.type;
    final typeArguments =
        type is ParameterizedType ? type.typeArguments : const <DartType>[];

    final typeParameter = typeArguments.first;

    return typeParameter.element3 is ClassElement2 &&
        typeParameter.element3!.hasRfGroupAnnotation;
  }

  bool get isFormArray {
    if (!hasRfArrayAnnotation) {
      return false;
    }

    final type = this.type;
    final typeArguments =
        type is ParameterizedType ? type.typeArguments : const <DartType>[];

    final typeParameter = typeArguments.first;

    return (typeParameter.element3 is ClassElement2 ||
            typeParameter.element3 is EnumElement2 ||
            typeParameter.element3 is TypeDefiningElement2) &&
        !typeParameter.element3!.hasRfGroupAnnotation;
  }

  bool get isFormControl {
    final isFormControl =
        !this.isFormGroup && !isFormGroupArray && !isFormArray;

    final isFormGroup = this.isFormGroup;

    throwIf(
      isFormControl && isFormGroup,
      "Field `$name3` can't be annotated with @RfControl and @FromGroupAnnotation at the same time.",
      element: this,
    );

    return isFormControl;
  }

  bool get isFormGroup => type.element3?.hasRfGroupAnnotation ?? false;

  bool get isForm => hasRfAnnotation;

  String? get defaultValue {
    for (final meta in metadata2.annotations) {
      final source = meta.toSource();

      if (source.startsWith('@Default(')) {
        return source.substring('@Default('.length, source.length - 1);
      }
    }

    if (hasDefaultValue) {
      return defaultValueCode;
    }

    return null;
  }

  String toReferenceType(List<String> requiredValidators) {
    if (hasRfControlAnnotation &&
        annotationParams(formControlChecker)
            .hasRequiredValidator(requiredValidators)) {
      return type.getName(withNullability: false);
    }

    var builder = ElementDisplayStringBuilder2(
      withNullability: true,
      preferTypeAlias: false,
    );
    (type as TypeImpl).appendTo(builder);
    return builder.toString();
  }
}

extension FieldElementExt on FieldElement2 {
  String get fieldName => name3 ?? '<null>';

  String get fieldValueName => '${fieldName}Value';

  // String get fieldControlName => '${fieldName}Control';

  String get fieldControlPath => '${fieldName}ControlPath';

  // needs careful usage and possibly refactoring
  DartType get typeParameter => (type as ParameterizedType).typeArguments.first;

  bool get isFormGroup => type.element3?.hasRfGroupAnnotation ?? false;

  bool get isForm => hasRfAnnotation;
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

extension DartTypeExt on DartType {
  String getName({
    bool withNullability = true,
  }) {
    final name = getDisplayString();

    return switch (nullabilitySuffix) {
      NullabilitySuffix.question =>
        withNullability ? name : name.substring(0, name.length - 1),
      NullabilitySuffix.star => name,
      NullabilitySuffix.none => name,
    };
  }
}
