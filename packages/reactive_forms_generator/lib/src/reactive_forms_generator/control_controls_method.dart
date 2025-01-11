import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ControlControlsMethod extends ReactiveFormGeneratorMethod {
  ControlControlsMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? formArrayMethod() {
    final type = (field.type as ParameterizedType).typeArguments.first;

    String displayType = type.getName(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (type.nullabilitySuffix == NullabilitySuffix.question) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    String listTypeReference =
        'FormControl<$displayType>${field.nullabilitySuffix}';

    String body =
        '${field.fieldControlName}.controls.cast<$listTypeReference>()';

    if (field.isNullable) {
      body = '${field.fieldControlName}.controls.cast<$listTypeReference>()';
    }

    return Method(
      (b) => b
        ..name = field.fieldControlControlsName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference('List<$listTypeReference>')
        ..body = Code(body),
    );
  }
}
