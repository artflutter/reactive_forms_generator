import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';
import 'package:recase/recase.dart';

class ReactiveFormPatchValueMethod extends ReactiveFormGeneratorMethod {
  ReactiveFormPatchValueMethod(ParameterElement field) : super(field);

  @override
  Method formGroupArrayMethod() {
    final code = '''
      final keys = ${field.name}${field.className}.asMap().keys;
      
      final toPatch = <${field.className}>[];
      (value ${field.isNullable ? '?? []' : ''}).asMap()
      .forEach(
        (k, v) {
          if(keys.contains(k)) {
            final patch = ${field.className}(v, form, pathBuilder("${field.fieldName}.\$k"));
            ${field.name}${field.className}[k] = patch;
            toPatch.add(patch);
          }
        },
      );
    
      ${field.fieldControlName}${field.nullabilitySuffix}.patchValue(
        toPatch.map((e) => ${field.className}.formElements(e.${field.elementClassName.camelCase}).rawValue).toList(), 
        updateParent: updateParent, 
        emitEvent:emitEvent);
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
        '${field.fieldControlName}${field.nullabilitySuffix}.patchValue(value, updateParent: updateParent, emitEvent:emitEvent);',
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
