import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
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
                'assert(extended != null || getExtended != null, "You have to specify `control` or `formControl`!")',
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
                  ..name = 'extended'
                  ..named = true
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'getExtended'
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
            final formModel = Reactive${formGenerator.className}.of${formGenerator.element.generics}(context);
        
            if (formModel == null) {
              throw FormControlParentNotFoundException(this);
            }
            
            final value = (extended ?? getExtended?.call(formModel))!;
        
            return StreamBuilder<List<Map<String, Object?>?>?>(
              stream: value.control.valueChanges,
              builder: (context, snapshot) {
                final itemList = (value.value() ?? <T>[])
                    .asMap()
                    .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
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
            ..name = 'extended'
            ..modifier = FieldModifier.final$
            ..type = const Reference(
              'ExtendedControl<List<Map<String, Object?>?>, List<T>>?',
            ),
        ),
        Field(
          (b) => b
            ..name = 'getExtended'
            ..modifier = FieldModifier.final$
            ..type = Reference(
                'ExtendedControl<List<Map<String, Object?>?>, List<T>> Function(${formGenerator.classNameFull} formModel)?'),
        ),
        Field(
          (b) => b
            ..name = 'builder'
            ..modifier = FieldModifier.final$
            ..type = Reference(
              'Widget Function(BuildContext context, List<Widget> itemList, ${formGenerator.classNameFull} formModel)?',
            ),
        ),
        Field(
          (b) => b
            ..name = 'itemBuilder'
            ..modifier = FieldModifier.final$
            ..type = Reference(
                'Widget Function(BuildContext context, int i, T? item, ${formGenerator.classNameFull} formModel)'),
        ),
      ];

  Class get generate {
    return Class(
      (b) => b
        ..name = 'Reactive${formGenerator.className}FormGroupArrayBuilder'
        ..types.add(const Reference('T'))
        ..extend = const Reference('StatelessWidget')
        ..constructors.add(_constructor)
        ..methods.add(_buildMethod)
        ..fields.addAll(_fields),
    );
  }
}
