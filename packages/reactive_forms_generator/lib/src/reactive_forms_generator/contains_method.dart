import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ContainsMethod extends ReactiveFormGeneratorMethod {
  ContainsMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? defaultMethod() => Method(
        (b) => b
          ..name = field.containsMethodName
          ..type = MethodType.getter
          ..returns = const Reference('bool')
          ..annotations.add(
            const CodeExpression(Code(
                "Deprecated('Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')")),
          )
          ..body = Code(
            '''try {
                form.control(${field.fieldControlPath}());
                return true;
              } catch (e) {
                return false;
              }''',
          ),
      );
}
