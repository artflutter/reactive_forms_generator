import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ReactiveFormPatchValueMethod extends ReactiveFormGeneratorMethod {
  ReactiveFormPatchValueMethod(
    super.field,
    super.output,
    super.requiredValidators,
  );

  @override
  Method formGroupArrayMethod() {
    final code = '''
      final keys = ${field.name}${field.className}.asMap().keys;
      
      final toPatch = <${field.typeParameter}>[];
      (value ${field.isNullable ? '?? []' : ''}).asMap()
      .forEach(
        (k, v) {
          if(keys.contains(k)) {
            toPatch.add(v);
          }
        },
      );
    
      ${field.fieldControlName}.patchValue(
        toPatch.map((e) => ${field.className}.formElements(e).rawValue).toList(), 
        updateParent: updateParent, 
        emitEvent:emitEvent);
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
        '${field.fieldControlName}.patchValue(value, updateParent: updateParent, emitEvent:emitEvent);',
      ),
    );
  }

  Method get methodEntity => Method(
        (b) => b
          ..name = field.valuePatchMethodName
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
