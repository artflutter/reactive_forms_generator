import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ReactiveFormClearMethod extends ReactiveFormGeneratorMethod {
  ReactiveFormClearMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? formGroupArrayMethod() {
    return methodEntity.rebuild((b) => b..body = Code('''
      ${field.name}${field.className}.clear();
      ${field.fieldControlName}.clear(
        updateParent: updateParent,
        emitEvent: emitEvent);
    '''));
  }

  @override
  Method? defaultMethod() => null;

  Method get methodEntity => Method(
        (b) => b
          ..name = field.clearMethodName
          ..lambda = false
          ..optionalParameters.addAll([
            Parameter(
              (b) => b
                ..name = 'updateParent'
                ..named = true
                ..defaultTo = const Code('true')
                ..type = const Reference('bool'),
            ),
            Parameter(
              (b) => b
                ..name = 'emitEvent'
                ..named = true
                ..defaultTo = const Code('true')
                ..type = const Reference('bool'),
            ),
          ])
          ..returns = const Reference('void'),
      );
}
