import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ReactiveFormUpdateValueMethod extends ReactiveFormGeneratorMethod {
  ReactiveFormUpdateValueMethod(ParameterElement field) : super(field);

  @override
  Method formGroupArrayMethod() {
    final code = '''
        final localValue = (value ${field.isNullable ? '?? []' : ''});
        if(localValue.isEmpty) {
          ${field.clearMethodName}(updateParent: updateParent, emitEvent: emitEvent);
          
          return;
        }
        
        final toUpdate = <${field.typeParameter}>[];
        final toAdd = <${field.typeParameter}>[];
        
        localValue.asMap().forEach((k, v) {
          if (${field.name}${field.className}.asMap().containsKey(k) &&
              (${field.fieldControlName}${field.nullabilitySuffix}.value ?? []).asMap().containsKey(k)) {
            toUpdate.add(v);
          } else {
            toAdd.add(v);
          }
        });
    
        if (toUpdate.isNotEmpty) {
          ${field.fieldControlName}${field.nullabilitySuffix}.updateValue(
              toUpdate.map((e) => ${field.className}.formElements(e).rawValue).toList(),
              updateParent: updateParent,
              emitEvent: emitEvent);
        }
    
        if (toAdd.isNotEmpty) {
          toAdd.forEach((e) {
            ${field.fieldControlName}${field.nullabilitySuffix}.add(${field.className}.formElements(e),
                updateParent: updateParent, emitEvent: emitEvent);
          });
        }
      ''';

    return methodEntity.rebuild((b) => b..body = Code(code));
  }

  @override
  Method formGroupMethod() {
    return methodEntity.rebuild(
      (b) => b.body = Code(
        '${field.fieldControlName}${field.nullabilitySuffix}.updateValue(${field.className}.formElements(value).rawValue, updateParent: updateParent, emitEvent:emitEvent);',
      ),
    );
  }

  @override
  Method defaultMethod() {
    return methodEntity.rebuild(
      (b) => b.body = Code(
        '${field.fieldControlName}${field.nullabilitySuffix}.updateValue(value, updateParent: updateParent, emitEvent:emitEvent);',
      ),
    );
  }

  Method get methodEntity => Method(
        (b) => b
          ..name = field.valueUpdateMethodName
          ..lambda = false
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
          ])
          ..returns = const Reference('void'),
      );
}
