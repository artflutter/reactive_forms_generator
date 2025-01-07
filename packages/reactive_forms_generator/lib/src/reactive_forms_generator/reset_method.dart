import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ResetMethod extends ReactiveFormGeneratorMethod {
  ResetMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method? formGroupArrayMethod() {
    final code = '''
      ${field.fieldControlName}.reset(
        value: value${field.nullabilitySuffix}.map(
          (e) => ${field.className}.formElements(e).rawValue
        ).toList(), 
        updateParent: updateParent, 
        emitEvent:emitEvent)
      ''';

    return methodEntity.rebuild(
      (b) => b..body = Code(code),
    );
  }

  @override
  Method? formGroupMethod() {
    final code = '''
      ${field.fieldControlName}.reset(
        value: ${field.className}.formElements(value).rawValue, 
        updateParent: updateParent, 
        emitEvent:emitEvent)
      ''';

    return methodEntity.rebuild(
      (b) => b..body = Code(code),
    );
  }

  @override
  Method? defaultMethod() {
    return methodEntity.rebuild(
      (b) => b
        ..body = Code(
          '''${field.fieldControlName}.reset(
                value: value, 
                updateParent: updateParent, 
                emitEvent: emitEvent,
                removeFocus: removeFocus,
                disabled: disabled,
              )
            ''',
        ),
    );
  }

  Method get methodEntity => Method(
        (b) => b
          ..name = field.resetMethodName
          ..lambda = true
          ..requiredParameters.add(
            Parameter(
              (b) => b
                ..name = 'value'
                ..type = Reference(field.type.toString()),
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
            Parameter(
              (b) => b
                ..name = 'removeFocus'
                ..named = true
                ..defaultTo = const Code('false')
                ..type = const Reference('bool'),
            ),
            Parameter(
              (b) => b
                ..name = 'disabled'
                ..named = true
                ..type = const Reference('bool?'),
            ),
          ])
          ..returns = const Reference('void'),
      );
}
