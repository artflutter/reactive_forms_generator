import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';

class ReactiveFormArrayBuilder {
  final FormGenerator formGenerator;

  ReactiveFormArrayBuilder(this.formGenerator);

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
        
            return ReactiveFormArray<T>(
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
                          item,
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
              'FormArray<T>?',
            ),
        ),
        Field(
          (b) => b
            ..name = 'control'
            ..modifier = FieldModifier.final$
            ..type = Reference(
              'FormArray<T>? Function(${formGenerator.className} formModel)?',
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

  Class get generate {
    return Class(
      (b) => b
        ..name = 'Reactive${formGenerator.className}ArrayBuilder'
        ..types.add(const Reference('T'))
        ..extend = const Reference('StatelessWidget')
        ..constructors.add(_constructor)
        ..methods.add(_buildMethod)
        ..fields.addAll(_fields),
    );
  }
}
