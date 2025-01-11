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

// import 'package:reactive_forms_generator/src/types.dart';
// import 'package:analyzer/src/dart/element/display_string_builder.dart';

class FieldValueMethod extends ReactiveFormGeneratorMethod {
  FieldValueMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? formGroupMethod() {
    return methodEntity.rebuild(
      (b) => b..body = Code('${field.fieldName}Form.$fieldModelName'),
    );
  }

  @override
  Method? formArrayMethod() {
    final type = (field.type as ParameterizedType).typeArguments.first;

    final code = '${field.fieldControlName}.rawValue.whereType<${type.getName(
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
            '${field.name}${field.className}.map((e) => e.$fieldModelName).toList()',
          ),
      );

  @override
  Method? defaultMethod() {
    String code = '${field.fieldControlName}.value';
    String codeTypeCast =
        ' as ${field.type.getName(withNullability: !toOutput)}';

    // do not add additional cast if the field is nullable to avoid
    // unnecessary_cast notes
    if (field.type.nullabilitySuffix == NullabilitySuffix.none || toOutput) {
      final defaultValue = field.defaultValue;
      if (defaultValue != null) {
        code += ' ?? $defaultValue';
        // final constantValueObject = field.computeConstantValue();
        // if (constantValueObject?.type?.isDartCoreString ?? false) {
        //   final constantValue = constantValueObject?.toStringValue() ?? '';
        //   code += ' ?? "$constantValue"';
        // } else if (constantValueObject?.type?.isDartCoreList ?? false) {
        //   code += ' ?? []';
        // } else {
        //   code += codeTypeCast;
        // }
      } else {
        code += codeTypeCast;
      }
    }

    return methodEntity.rebuild((b) => b..body = Code(code));
  }

  String get fieldValueName => field.fieldValueName;

  String get fieldModelName => 'model';

  Method get methodEntity => Method(
        (b) {
          b
            ..name = fieldValueName
            ..lambda = true
            ..type = MethodType.getter
            ..returns = Reference(
              output
                  ? field.toReferenceType(requiredValidators)
                  : field.type.toString(),
            );
        },
      );
}

class FieldRawValueMethod extends FieldValueMethod {
  FieldRawValueMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  String get fieldModelName => 'rawModel';

  @override
  String get fieldValueName => field.fieldRawValueName;

  @override
  bool get toOutput {
    return false;
  }
}

extension Care on ClassElement {
  String get toReferenceType {
    var builder = ElementDisplayStringBuilder2(withNullability: true);
    (thisType as TypeImpl).appendTo(builder);
    return builder.toString();
  }
}

// extension Pare on ParameterElement {
//
// }

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
