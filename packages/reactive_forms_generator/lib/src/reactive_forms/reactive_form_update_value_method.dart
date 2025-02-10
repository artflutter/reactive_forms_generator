import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ReactiveFormUpdateValueMethod extends ReactiveFormGeneratorMethod {
  ReactiveFormUpdateValueMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

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
          final values = ${field.fieldControlName}.controls.map((e) => e.value).toList();
          
          if (${field.name}${field.className}.asMap().containsKey(k) &&
              values.asMap().containsKey(k)) {
            toUpdate.add(v);
          } else {
            toAdd.add(v);
          }
        });
    
        if (toUpdate.isNotEmpty) {
          ${field.fieldControlName}.updateValue(
              toUpdate.map((e) => ${field.className}.formElements(e).rawValue).toList(),
              updateParent: updateParent,
              emitEvent: emitEvent);
        }
    
        if (toAdd.isNotEmpty) {
          toAdd.forEach((e) {
            ${field.fieldControlName}.add(${field.className}.formElements(e),
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
        '${field.fieldControlName}.updateValue(${field.className}.formElements(value).rawValue, updateParent: updateParent, emitEvent:emitEvent);',
      ),
    );
  }

  @override
  Method defaultMethod() {
    return methodEntity.rebuild(
      (b) => b.body = Code(
        '${field.fieldControlName}.updateValue(value, updateParent: updateParent, emitEvent:emitEvent);',
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
