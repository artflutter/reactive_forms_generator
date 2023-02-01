import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ReactiveFormInsertMethod extends ReactiveFormGeneratorMethod {
  ReactiveFormInsertMethod(ParameterElement field) : super(field);

  @override
  Method? formGroupArrayMethod() {
    return methodEntity.rebuild((b) => b..body = Code('''
      if (${field.name}${field.className}.length < i) {
        ${field.addListItemName}(value);
        return;
      }
  
      final item = ${field.className}(
        value,
        form,
        pathBuilder('${field.fieldName}.\$i'),
      );
  
      ${field.name}${field.className}.insert(i, item);
  
      ${field.name}${field.className}.asMap().forEach((k, v) {
        if (k > i) {
          ${field.name}${field.className}[k] = v.copyWithPath(
            pathBuilder("${field.fieldName}.\$k"),
          );
        }
      });
  
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
