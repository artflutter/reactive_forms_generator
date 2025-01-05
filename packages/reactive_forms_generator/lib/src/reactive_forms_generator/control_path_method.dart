import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/library_builder.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ControlPathMethod extends ReactiveFormGeneratorMethod {
  ControlPathMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? defaultMethod() => Method(
        (b) => b
          ..returns = stringRef
          ..name = field.fieldControlPath
          ..lambda = true
          ..body = Code('pathBuilder(${field.fieldControlNameName})'),
      );
}
