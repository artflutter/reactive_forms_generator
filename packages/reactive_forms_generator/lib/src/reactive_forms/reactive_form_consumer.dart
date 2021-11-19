import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form.dart';

class ReactiveFormConsumer {
  final ReactiveForm reactiveForm;

  ReactiveFormConsumer(this.reactiveForm);

  Constructor get _constructor => Constructor(
        (b) => b
          ..constant = true
          ..initializers.add(
            refer('super').call(
              [],
              {'key': CodeExpression(Code('key'))},
            ).code,
          )
          ..optionalParameters.addAll(
            [
              Parameter(
                (b) => b
                  ..name = 'key'
                  ..named = true
                  ..type = Reference('Key?'),
              ),
              Parameter(
                (b) => b
                  ..name = 'builder'
                  ..named = true
                  ..required = true
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'child'
                  ..named = true
                  ..toThis = true,
              ),
            ],
          ),
      );

  Method get _buildMethod => Method(
        (b) => b
          ..name = 'build'
          ..returns = Reference('Widget')
          ..requiredParameters.add(
            Parameter(
              (b) => b
                ..name = 'context'
                ..type = Reference('BuildContext'),
            ),
          )
          ..annotations.add(
            CodeExpression(Code('override')),
          )
          ..body = Code('''
            final formModel = ${reactiveForm.className}.of(context);
            
            if (formModel is! ${reactiveForm.formGenerator.className}) {
              throw FormControlParentNotFoundException(this);
            }
            return builder(context, formModel, child);
          '''),
      );

  List<Field> get _fields => [
        Field(
          (b) => b
            ..name = 'child'
            ..modifier = FieldModifier.final$
            ..type = Reference('Widget?'),
        ),
        Field(
          (b) => b
            ..name = 'builder'
            ..modifier = FieldModifier.final$
            ..type = Reference(
              'Widget Function(BuildContext context, ${reactiveForm.formGenerator.className} formModel, Widget? child)',
            ),
        ),
      ];

  Class get generate => Class(
        (b) => b
          ..name = '${reactiveForm.className}Consumer'
          ..extend = Reference('StatelessWidget')
          ..constructors.add(_constructor)
          ..methods.add(_buildMethod)
          ..fields.addAll(_fields),
      );
}
