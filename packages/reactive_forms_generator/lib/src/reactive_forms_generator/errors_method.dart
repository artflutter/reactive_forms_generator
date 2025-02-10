import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ErrorsMethod extends ReactiveFormGeneratorMethod {
  ErrorsMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? defaultMethod() => Method(
        (b) => b
          ..name = field.errorsMethodName
          ..lambda = true
          ..type = MethodType.getter
          ..returns = Reference('Map<String, Object>${field.nullabilitySuffix}')
          ..body = Code(
            '${field.fieldControlName}.errors',
          ),
      );
}
