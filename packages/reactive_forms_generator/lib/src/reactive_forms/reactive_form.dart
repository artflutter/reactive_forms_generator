import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_inherited_streamer.dart';

class ReactiveForm {
  final ReactiveInheritedStreamer reactiveInheritedStreamer;

  const ReactiveForm(this.reactiveInheritedStreamer);

  String get className => 'Reactive${formGenerator.className}';

  FormGenerator get formGenerator => reactiveInheritedStreamer.formGenerator;

  Constructor get _constructor => Constructor(
    (b) => b
      ..constant = true
      ..optionalParameters.addAll([
        Parameter(
          (b) => b
            ..name = 'key'
            ..named = true
            ..type = const Reference('Key?'),
        ),
        Parameter(
          (b) => b
            ..name = 'form'
            ..named = true
            ..required = true
            ..toThis = true,
        ),
        Parameter(
          (b) => b
            ..name = 'child'
            ..named = true
            ..required = true
            ..toThis = true,
        ),
        Parameter(
          (b) => b
            ..name = 'canPop'
            ..toThis = true
            ..named = true,
        ),
        Parameter(
          (b) => b
            ..name = 'onPopInvokedWithResult'
            ..toThis = true
            ..named = true,
        ),
      ])
      ..initializers.add(
        refer(
          'super',
        ).call([], {'key': const CodeExpression(Code('key'))}).code,
      ),
  );

  Class get reactiveForm => Class(
    (b) => b
      ..name = className
      ..extend = const Reference('StatelessWidget')
      ..types.addAll(formGenerator.element.fullGenericTypes)
      ..constructors.add(_constructor)
      ..fields.addAll([
        Field(
          (b) => b
            ..name = 'child'
            ..modifier = FieldModifier.final$
            ..type = const Reference('Widget'),
        ),
        Field(
          (b) => b
            ..name = 'form'
            ..modifier = FieldModifier.final$
            ..type = Reference(formGenerator.classNameFull),
        ),
        Field(
          (b) => b
            ..name = 'canPop'
            ..modifier = FieldModifier.final$
            ..type = const Reference('bool Function(FormGroup formGroup)?'),
        ),
        Field(
          (b) => b
            ..name = 'onPopInvokedWithResult'
            ..modifier = FieldModifier.final$
            ..type = const Reference(
              'void Function(FormGroup formGroup, bool didPop, dynamic? result)?',
            ),
        ),
      ])
      ..methods.addAll([
        Method(
          (b) => b
            ..name = 'of'
            ..static = true
            ..types.addAll(formGenerator.element.fullGenericTypes)
            ..returns = Reference('${formGenerator.classNameFull}?')
            ..requiredParameters.add(
              Parameter(
                (b) => b
                  ..name = 'context'
                  ..type = const Reference('BuildContext'),
              ),
            )
            ..optionalParameters.add(
              Parameter(
                (b) => b
                  ..name = 'listen'
                  ..named = true
                  ..defaultTo = const Code('true')
                  ..type = const Reference('bool'),
              ),
            )
            ..body = Code('''
                  if (listen) {
                    return context
                        .dependOnInheritedWidgetOfExactType<${reactiveInheritedStreamer.className}${formGenerator.element.generics}>()
                        ?.form;
                  }
              
                  final element = context.getElementForInheritedWidgetOfExactType<
                      ${reactiveInheritedStreamer.className}${formGenerator.element.generics}>();
                  return element == null
                      ? null
                      : (element.widget as ${reactiveInheritedStreamer.className}${formGenerator.element.generics}).form;
                '''),
        ),
        Method(
          (b) => b
            ..name = 'build'
            ..returns = const Reference('Widget')
            ..requiredParameters.add(
              Parameter(
                (b) => b
                  ..name = 'context'
                  ..type = const Reference('BuildContext'),
              ),
            )
            ..annotations.add(const CodeExpression(Code('override')))
            ..body = Code('''
                    return ${reactiveInheritedStreamer.className}(
                      form: form,
                      stream: form.form.statusChanged,
                      child: ReactiveFormPopScope(
                        canPop: canPop,
                        onPopInvokedWithResult: onPopInvokedWithResult,
                        child: child,
                      ),
                    );
                  '''),
        ),
      ]),
  );

  Class get generate => reactiveForm;
}
