import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class FocusMethod extends ReactiveFormGeneratorMethod {
  FocusMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? defaultMethod() => Method(
        (b) => b
          ..name = field.focusMethodName
          ..lambda = true
          ..type = MethodType.getter
          ..returns = const Reference('void')
          ..body = Code(
            'form.focus(${field.fieldControlPath}())',
          ),
      );
}
