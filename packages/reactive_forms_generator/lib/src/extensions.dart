import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart' hide FunctionType, RecordType;
import 'package:reactive_forms_generator/src/types.dart';
import 'package:recase/recase.dart';

import '../utils.dart';

extension ConstructorElementExt on ConstructorElement {
  bool get hasReactiveFormAnnotatedParameters =>
      formalParameters.any((e) => true);
}

extension ClassElementExt on ClassElement {
  String get fullTypeName => thisType.toString();

  String get toReferenceType => reactiveOutputTypeName(thisType);

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
    return thisType.typeArguments.map((e) => Reference(e.getDisplayString()));
  }

  Iterable<Reference> get fullGenericTypes {
    return typeParameters.map((typeParam) {
      final name = typeParam.name;
      final bound = typeParam.bound;
      if (bound != null && bound.getDisplayString() != 'Object') {
        return Reference('$name extends ${bound.getDisplayString()}');
      }
      return Reference(name);
    });
  }

  List<FormalParameterElement> get annotatedParameters {
    final annotatedConstructors = constructors.where(
      (e) => e.hasReactiveFormAnnotatedParameters,
    );

    if (annotatedConstructors.isNotEmpty) {
      return annotatedConstructors.first.formalParameters;
    }

    return [];
  }

  bool get isNullable => annotatedParameters.fold(true, (acc, e) => acc);
}

extension ParameterElementExt on FormalParameterElement {
  String get fieldName => name ?? '';

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
    final element = type.element as ClassElement;

    String baseName = '';

    if (element.hasRfAnnotation) {
      final annotation = element.rfAnnotation;
      baseName =
          annotation?.getField('name')?.toStringValue() ?? element.name ?? '';
    }

    baseName = element.name ?? '';

    if (isFormGroupArray) {
      final element = typeParameter.element as ClassElement;

      if (element.hasRfAnnotation) {
        final annotation = element.rfAnnotation;
        baseName =
            annotation?.getField('name')?.toStringValue() ?? element.name ?? '';
      }

      baseName = element.name ?? '';
    }

    return baseName;
  }

  String get valueUpdateMethodName => '${name ?? ''}ValueUpdate';

  String get valuePatchMethodName => '${name ?? ''}ValuePatch';

  String get clearMethodName => '${name ?? ''}Clear';

  String get insertMethodName => '${name ?? ''}Insert';

  // needs careful usage and possibly refactoring
  DartType get typeParameter => (type as ParameterizedType).typeArguments.first;

  bool get isFormGroupArray {
    if (!hasRfArrayAnnotation) {
      return false;
    }

    final type = this.type;
    final typeArguments = type is ParameterizedType
        ? type.typeArguments
        : const <DartType>[];

    final typeParameter = typeArguments.first;

    return typeParameter.element is ClassElement &&
        typeParameter.element!.hasRfGroupAnnotation;
  }

  bool get isFormArray {
    if (!hasRfArrayAnnotation) {
      return false;
    }

    final type = this.type;
    final typeArguments = type is ParameterizedType
        ? type.typeArguments
        : const <DartType>[];

    final typeParameter = typeArguments.first;

    final element = typeParameter.element;

    return element != null &&
        (element is InterfaceElement || element is TypeAliasElement) &&
        !element.hasRfGroupAnnotation;
  }

  bool get isFormControl {
    final isFormControl =
        !this.isFormGroup && !isFormGroupArray && !isFormArray;

    final isFormGroup = this.isFormGroup;

    throwIf(
      isFormControl && isFormGroup,
      "Field `${name ?? ''}` can't be annotated with @RfControl and @FromGroupAnnotation at the same time.",
      element: this,
    );

    return isFormControl;
  }

  bool get isFormGroup => type.element?.hasRfGroupAnnotation ?? false;

  bool get isForm => ElementRfExt(this).hasRfAnnotation;

  String? get defaultValue {
    for (final meta in metadata.annotations) {
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
        annotationParams(
          formControlChecker,
        ).hasRequiredValidator(requiredValidators)) {
      return type.getName(withNullability: false);
    }

    return reactiveOutputTypeName(type);
  }

  bool isOutputNullable(List<String> requiredValidators) {
    final type = toReferenceType(requiredValidators);
    return type.endsWith('?');
  }
}

extension FieldElementExt on FieldElement {
  String get fieldName => name ?? '';

  String get fieldValueName => '${fieldName}Value';

  // String get fieldControlName => '${fieldName}Control';

  String get fieldControlPath => '${fieldName}ControlPath';

  // needs careful usage and possibly refactoring
  DartType get typeParameter => (type as ParameterizedType).typeArguments.first;

  bool get isFormGroup => type.element?.hasRfGroupAnnotation ?? false;

  bool get isForm => ElementRfExt(this).hasRfAnnotation;
}

typedef IterableFunction<T, U> = U Function(T i);
typedef MergeableFunction<T> = T Function(T oldT, T newT);

Iterable<T> _mergeDuplicatesBy<T, U>(
  Iterable<T> list,
  IterableFunction<T, U> fn,
  MergeableFunction<T> mergeFn,
) {
  final values = <U, T>{};
  for (var i in list) {
    final value = fn(i);
    values.update(value, (oldI) => mergeFn(oldI, i), ifAbsent: () => i);
  }
  return values.values.toList();
}

Iterable<T> _removeDuplicatedBy<T, U>(
  Iterable<T> list,
  IterableFunction<T, U> fn,
) {
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
    IterableFunction<T, U> fn,
    MergeableFunction<T> mergeFn,
  ) => _mergeDuplicatesBy(this, fn, mergeFn);

  /// Remove duplicated values from an iterable given a predicate without
  /// modifying the original iterable.
  Iterable<T> removeDuplicatedBy(IterableFunction<T, U> fn) =>
      _removeDuplicatedBy(this, fn);
}

extension DartTypeExt on DartType {
  String getName({bool withNullability = true}) {
    final name = getDisplayString();

    return switch (nullabilitySuffix) {
      NullabilitySuffix.question =>
        withNullability ? name : name.substring(0, name.length - 1),
      NullabilitySuffix.star => name,
      NullabilitySuffix.none => name,
    };
  }
}

String reactiveOutputTypeName(DartType type, {bool withNullability = true}) {
  return _ReactiveOutputTypeNameWriter(
    withNullability: withNullability,
  ).write(type);
}

class _ReactiveOutputTypeNameWriter {
  _ReactiveOutputTypeNameWriter({required this.withNullability});

  final bool withNullability;

  String write(DartType type) {
    return switch (type) {
      InterfaceType() => _writeInterfaceType(type),
      RecordType() => _writeRecordType(type),
      FunctionType() => _writeFunctionType(type),
      TypeParameterType() => _writeTypeParameterType(type),
      DynamicType() => 'dynamic',
      VoidType() => 'void',
      NeverType() => 'Never${_writeNullability(type)}',
      InvalidType() => 'InvalidType',
      _ => _writeFallbackType(type),
    };
  }

  String _writeInterfaceType(InterfaceType type) {
    final element = type.element;
    final postfix =
        ElementRfExt(element).hasRfGroupAnnotation ||
            ElementRfExt(element).hasRfAnnotation
        ? 'Output'
        : '';

    return '${element.name ?? '<null>'}$postfix'
        '${_writeTypeArguments(type.typeArguments)}'
        '${_writeNullability(type)}';
  }

  String _writeFunctionType(FunctionType type) {
    return '${write(type.returnType)} Function'
        '${_writeTypeParameters(type.typeParameters)}'
        '${_writeFormalParameters(type.formalParameters)}'
        '${_writeNullability(type)}';
  }

  String _writeRecordType(RecordType type) {
    final positionalFields = type.positionalFields;
    final namedFields = type.namedFields;
    final fieldCount = positionalFields.length + namedFields.length;
    final buffer = StringBuffer('(');

    var index = 0;
    for (final field in positionalFields) {
      buffer.write(write(field.type));
      if (index++ < fieldCount - 1) {
        buffer.write(', ');
      }
    }

    if (namedFields.isNotEmpty) {
      buffer.write('{');
      for (final field in namedFields) {
        buffer
          ..write(write(field.type))
          ..write(' ')
          ..write(field.name);
        if (index++ < fieldCount - 1) {
          buffer.write(', ');
        }
      }
      buffer.write('}');
    }

    if (positionalFields.length == 1 && namedFields.isEmpty) {
      buffer.write(',');
    }

    buffer
      ..write(')')
      ..write(_writeNullability(type));

    return buffer.toString();
  }

  String _writeTypeParameterType(TypeParameterType type) {
    return '${type.element.displayName}${_writeNullability(type)}';
  }

  String _writeFormalParameters(List<FormalParameterElement> parameters) {
    final buffer = StringBuffer('(');
    var lastKind = _FormalParameterKind.none;
    var lastClose = '';

    void openGroup(_FormalParameterKind kind, String open, String close) {
      if (lastKind == kind) {
        return;
      }

      buffer.write(lastClose);
      buffer.write(open);
      lastKind = kind;
      lastClose = close;
    }

    for (var i = 0; i < parameters.length; i++) {
      if (i != 0) {
        buffer.write(', ');
      }

      final parameter = parameters[i];
      if (parameter.isRequiredPositional) {
        openGroup(_FormalParameterKind.requiredPositional, '', '');
      } else if (parameter.isOptionalPositional) {
        openGroup(_FormalParameterKind.optionalPositional, '[', ']');
      } else if (parameter.isNamed) {
        openGroup(_FormalParameterKind.named, '{', '}');
      }

      buffer.write(_writeFormalParameter(parameter));
    }

    buffer
      ..write(lastClose)
      ..write(')');

    return buffer.toString();
  }

  String _writeFormalParameter(FormalParameterElement parameter) {
    final buffer = StringBuffer();
    if (parameter.isRequiredNamed) {
      buffer.write('required ');
    }

    buffer.write(write(parameter.type));
    if (parameter.isNamed) {
      final name = parameter.name;
      if (name != null) {
        buffer.write(' $name');
      }
    }

    return buffer.toString();
  }

  String _writeTypeArguments(List<DartType> typeArguments) {
    if (typeArguments.isEmpty) {
      return '';
    }

    return '<${typeArguments.map(write).join(', ')}>';
  }

  String _writeTypeParameters(List<TypeParameterElement> elements) {
    if (elements.isEmpty) {
      return '';
    }

    return '<${elements.map(_writeTypeParameter).join(', ')}>';
  }

  String _writeTypeParameter(TypeParameterElement element) {
    final buffer = StringBuffer(element.name ?? element.displayName);
    final bound = element.bound;
    if (bound != null) {
      buffer
        ..write(' extends ')
        ..write(write(bound));
    }

    return buffer.toString();
  }

  String _writeNullability(DartType type) {
    if (!withNullability) {
      return '';
    }

    return switch (type.nullabilitySuffix) {
      NullabilitySuffix.question => '?',
      NullabilitySuffix.star => '*',
      NullabilitySuffix.none => '',
    };
  }

  String _writeFallbackType(DartType type) {
    final name = type.getDisplayString();
    if (withNullability) {
      return name;
    }

    return switch (type.nullabilitySuffix) {
      NullabilitySuffix.question ||
      NullabilitySuffix.star => name.substring(0, name.length - 1),
      NullabilitySuffix.none => name,
    };
  }
}

enum _FormalParameterKind {
  none,
  requiredPositional,
  optionalPositional,
  named,
}
