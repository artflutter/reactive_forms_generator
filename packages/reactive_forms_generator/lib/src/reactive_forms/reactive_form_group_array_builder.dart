import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';

class ReactiveFormGroupArrayBuilder {
  final FormGenerator formGenerator;

  ReactiveFormGroupArrayBuilder(this.formGenerator);

  Constructor get _constructor => Constructor(
        (b) => b
          ..constant = true
          ..initializers.addAll(
            [
              const Code(
                'assert(control != null || formControl != null, "You have to specify `control` or `formControl`!")',
              ),
              refer('super').call(
                [],
                {'key': const CodeExpression(Code('key'))},
              ).code,
            ],
          )
          ..optionalParameters.addAll(
            [
              Parameter(
                (b) => b
                  ..name = 'key'
                  ..named = true
                  ..type = const Reference('Key?'),
              ),
              Parameter(
                (b) => b
                  ..name = 'control'
                  ..named = true
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'formControl'
                  ..named = true
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'builder'
                  ..named = true
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'itemBuilder'
                  ..named = true
                  ..required = true
                  ..toThis = true,
              ),
            ],
          ),
      );

  Method get _buildMethod => Method(
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
          ..annotations.add(
            const CodeExpression(Code('override')),
          )
          ..body = Code('''
            final formModel = Reactive${formGenerator.className}.of(context);
        
            if (formModel == null) {
              throw FormControlParentNotFoundException(this);
            }
        
            return ReactiveFormArray<Map<String, Object?>>(
              formArray: formControl ?? control?.call(formModel),
              builder: (context, formArray, child) {
                final itemList = (formArray.value ?? []) 
                    .asMap()
                    .map((i, item) {
                      return MapEntry(
                        i,
                        itemBuilder(
                          context,
                          i,
                          item as T?,
                          formModel,
                        ),
                      );
                    })
                    .values
                    .toList();
        
                return builder?.call(
                      context,
                      itemList,
                      formModel,
                    ) ??
                    Column(children: itemList);
              },
            );
          '''),
      );

  List<Field> get _fields => [
        Field(
          (b) => b
            ..name = 'formControl'
            ..modifier = FieldModifier.final$
            ..type = const Reference(
              'FormArray<Map<String, Object?>>?',
            ),
        ),
        Field(
          (b) => b
            ..name = 'control'
            ..modifier = FieldModifier.final$
            ..type = Reference(
              'FormArray<Map<String, Object?>>? Function(${formGenerator.className} formModel)?',
            ),
        ),
        Field(
          (b) => b
            ..name = 'builder'
            ..modifier = FieldModifier.final$
            ..type = Reference(
              'Widget Function(BuildContext context, List<Widget> itemList, ${formGenerator.className} formModel)?',
            ),
        ),
        Field(
          (b) => b
            ..name = 'itemBuilder'
            ..modifier = FieldModifier.final$
            ..type = Reference(
                'Widget Function(BuildContext context, int i, T? item, ${formGenerator.className} formModel)'),
        ),
      ];

  Class get generate => Class(
        (b) => b
          ..name = 'Reactive${formGenerator.className}FormArrayBuilder'
          ..types.add(const Reference('T'))
          ..extend = const Reference('StatelessWidget')
          ..constructors.add(_constructor)
          ..methods.add(_buildMethod)
          ..fields.addAll(_fields),
      );
}
