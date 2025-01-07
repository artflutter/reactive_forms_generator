import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ControlSetDisableMethod extends ReactiveFormGeneratorMethod {
  ControlSetDisableMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? defaultMethod() {
    return methodEntity.rebuild(
      (b) => b
        ..body = Code(
          '''
            if(disabled) {
              ${field.fieldControlName}.markAsDisabled( 
                updateParent: updateParent, 
                emitEvent: emitEvent,
              );
            }
            else {
              ${field.fieldControlName}.markAsEnabled( 
                updateParent: updateParent, 
                emitEvent: emitEvent,
              );
            }
            ''',
        ),
    );
  }

  Method get methodEntity => Method(
        (b) => b
          ..name = field.setDisabledMethodName
          ..requiredParameters.add(
            Parameter(
              (b) => b
                ..name = 'disabled'
                ..type = const Reference('bool'),
            ),
          )
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
