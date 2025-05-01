import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
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
              Parameter(
                (b) => b
                  ..name = 'emptyBuilder'
                  ..named = true
                  ..required = false
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'controlFilter'
                  ..named = true
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
        
            return ReactiveFormArray<$T>(
              formArray: formControl ?? control?.call(formModel),
              builder: (context, formArray, child) {
                final values = formArray.controls.indexed
                  .where((e) =>
                      controlFilter?.call(
                        e as FormControl<$T>,
                      ) ??
                      true)
                  .toList();
                
                final itemList = values
                  .map((item) {
                    return MapEntry(
                      item.\$1,
                      itemBuilder(
                        context,
                        item.\$1,
                        formArray.controls[item.\$1]
                            as FormControl<$T>,
                        item.\$2.value,
                        formModel,
                      ),
                    );
                  })
                  .map((e) => e.value)
                  .toList();
                    
               if(emptyBuilder != null && itemList.isEmpty) {
                  return emptyBuilder!(context);
               }
        
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
            ..type = Reference(
              'FormArray<$T>?',
            ),
        ),
        Field(
          (b) => b
            ..name = 'control'
            ..modifier = FieldModifier.final$
            ..type = Reference(
              'FormArray<$T>? Function(${formGenerator.classNameFull} formModel)?',
            ),
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
                'Widget Function(BuildContext context, int i, FormControl<$T> control, $T? item, ${formGenerator.classNameFull} formModel)'),
        ),
        Field(
          (b) => b
            ..name = 'emptyBuilder'
            ..modifier = FieldModifier.final$
            ..type = Reference('Widget Function(BuildContext context)?'),
        ),
        Field(
          (b) => b
            ..name = 'controlFilter'
            ..modifier = FieldModifier.final$
            ..type = Reference('bool Function(FormControl<$T> control)?'),
        ),
      ];

  String get T => 'Reactive${formGenerator.className}ArrayBuilderT';

  Class get generate {
    return Class(
      (b) => b
        ..name = 'Reactive${formGenerator.className}ArrayBuilder'
        ..types.addAll(
          [
            Reference(T),
            ...formGenerator.element.fullGenericTypes,
          ],
        )
        ..extend = const Reference('StatelessWidget')
        ..constructors.add(_constructor)
        ..methods.add(_buildMethod)
        ..fields.addAll(_fields),
    );
  }
}
