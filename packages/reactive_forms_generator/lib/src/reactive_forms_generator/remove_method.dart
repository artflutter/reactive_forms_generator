import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class RemoveMethod extends ReactiveFormGeneratorMethod {
  RemoveMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? defaultMethod() {
    if (field.type.nullabilitySuffix == NullabilitySuffix.none) {
      return null;
    }

    return Method(
      (b) => b
        ..name = field.removeMethodName
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
        ..annotations.add(
          const CodeExpression(Code(
              "Deprecated('Generator completely wraps the form so manual fields removal could lead to unexpected crashes')")),
        )
        ..returns = const Reference('void')
        ..body = Code(
          '''
            if (${field.containsMethodName}) {
              final controlPath = path;
              if (controlPath == null) {
                form.removeControl(
                  ${field.fieldControlNameName},
                  updateParent: updateParent,
                  emitEvent: emitEvent,
                );
              } else {
                final formGroup = form.control(controlPath);
        
                if (formGroup is FormGroup) {
                  formGroup.removeControl(
                    ${field.fieldControlNameName},
                    updateParent: updateParent,
                    emitEvent: emitEvent,
                  );
                }
              }
            }
          ''',
        ),
    );
  }
}
