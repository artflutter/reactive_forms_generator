import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class FieldValueMethod extends ReactiveFormGeneratorMethod {
  FieldValueMethod(ParameterElement field) : super(field);

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
        '${field.fieldControlName}${field.nullabilitySuffix}.value?.whereType<${type.getDisplayString(
      withNullability: true,
    )}>().toList() ?? []';

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
    String code = '${field.fieldControlName}${field.nullabilitySuffix}.value';
    String codeTypeCast = ' as ${field.type}';

    // do not add additional cast if the field is nullable to avoid
    // unnecessary_cast notes
    if (field.type.nullabilitySuffix == NullabilitySuffix.none) {
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
        (b) => b
          ..name = field.fieldValueName
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference(field.type.toString()),
      );
}
