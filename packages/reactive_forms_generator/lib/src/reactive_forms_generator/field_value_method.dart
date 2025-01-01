// ignore_for_file: implementation_imports

import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart';
import 'package:analyzer/src/dart/element/type.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/output/x.dart';

// import 'package:reactive_forms_generator/src/output/x.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';
import 'package:reactive_forms_generator/src/types.dart';
// import 'package:analyzer/src/dart/element/display_string_builder.dart';

class FieldValueMethod extends ReactiveFormGeneratorMethod {
  FieldValueMethod(super.field, super.output);

  @override
  Method? formGroupMethod() {
    return methodEntity.rebuild(
      (b) => b..body = Code('${field.fieldName}Form.model'),
    );
  }

  @override
  Method? formArrayMethod() {
    final type = (field.type as ParameterizedType).typeArguments.first;

    final code =
        '${field.fieldControlName}${field.nullabilitySuffix}.rawValue.whereType<${type.getDisplayString(
      withNullability: true,
    )}>().toList()';

    return methodEntity.rebuild(
      (b) => b..body = Code(code),
    );
  }

  @override
  Method? formGroupArrayMethod() => methodEntity.rebuild(
        (b) => b
          ..body = Code(
            '${field.name}${field.className}.map((e) => e.model).toList()',
          ),
      );

  @override
  Method? defaultMethod() {
    String code =
        '${field.fieldControlName}${toOutput ? '' : field.nullabilitySuffix}.value';
    String codeTypeCast =
        ' as ${field.type.getDisplayString(withNullability: !toOutput)}';

    // do not add additional cast if the field is nullable to avoid
    // unnecessary_cast notes
    if (field.type.nullabilitySuffix == NullabilitySuffix.none || toOutput) {
      if (field.hasDefaultValue) {
        final constantValueObject = field.computeConstantValue();
        if (constantValueObject?.type?.isDartCoreString ?? false) {
          final constantValue = constantValueObject?.toStringValue() ?? '';
          code += ' ?? "$constantValue"';
        } else if (constantValueObject?.type?.isDartCoreList ?? false) {
          code += ' ?? []';
        } else {
          code += codeTypeCast;
        }
      } else {
        code += codeTypeCast;
      }
    }

    return methodEntity.rebuild((b) => b..body = Code(code));
  }

  Method get methodEntity => Method(
        (b) {
          b
            ..name = field.fieldValueName
            ..lambda = true
            ..type = MethodType.getter
            ..returns = Reference(
              output ? field.toReferenceType : field.type.toString(),
            );
        },
      );
}

extension Care on ClassElement {
  String get toReferenceType {
    var builder = ElementDisplayStringBuilder2(withNullability: true);
    (thisType as TypeImpl).appendTo(builder);
    return builder.toString();
  }
}

extension Pare on ParameterElement {
  String get toReferenceType {
    if (hasRfControlAnnotation &&
        annotationParams(formControlChecker).hasRequiredValidator) {
      return type.getDisplayString(withNullability: false);
    }

    var builder = ElementDisplayStringBuilder2(
      withNullability: true,
    );
    (type as TypeImpl).appendTo(builder);
    return builder.toString();
  }
}

// class RfElementDisplayStringBuilder extends ElementDisplayStringBuilder {
//   RfElementDisplayStringBuilder({required super.withNullability});
//
//   @override
//   void writeInterfaceType(InterfaceType type) {
//     _write(type.element.name);
//     _writeTypeArguments(type.typeArguments);
//     _writeNullability(type.nullabilitySuffix);
//   }
// }
