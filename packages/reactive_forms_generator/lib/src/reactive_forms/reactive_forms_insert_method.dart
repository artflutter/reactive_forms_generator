import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ReactiveFormInsertMethod extends ReactiveFormGeneratorMethod {
  ReactiveFormInsertMethod(ParameterElement field) : super(field);

  @override
  Method? formGroupArrayMethod() {
    return methodEntity.rebuild((b) => b..body = Code('''
      final values = (${field.fieldControlName}${field.nullabilitySuffix}.controls ${field.isNullable ? '?? []' : ''}).map((e) => e.value).toList();
      if (values.length < i) {
        ${field.addListItemName}(value);
        return;
      }
  
      ${field.fieldControlName}${field.nullabilitySuffix}.insert(
        i,
        ${field.className}.formElements(value),
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    '''));
  }

  @override
  Method? defaultMethod() => null;

  Method get methodEntity => Method(
        (b) => b
          ..name = field.insertMethodName
          ..lambda = false
          ..requiredParameters.addAll([
            Parameter(
              (b) => b
                ..name = 'i'
                ..type = const Reference('int'),
            ),
            Parameter(
              (b) => b
                ..name = 'value'
                ..type = Reference(
                  field.typeParameter.getDisplayString(withNullability: false),
                ),
            ),
          ])
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
