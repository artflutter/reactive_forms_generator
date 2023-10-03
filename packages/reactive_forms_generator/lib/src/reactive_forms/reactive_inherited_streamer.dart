import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';

class ReactiveInheritedStreamer {
  final FormGenerator formGenerator;

  const ReactiveInheritedStreamer(this.formGenerator);

  String get className => '${formGenerator.className}InheritedStreamer';

  Constructor get _constructor => Constructor(
        (b) => b
          ..constant = true
          ..initializers.add(
            refer('super').call(
              [
                const CodeExpression(Code('stream')),
                const CodeExpression(Code('child')),
              ],
              {'key': const CodeExpression(Code('key'))},
            ).code,
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
                  ..name = 'form'
                  ..named = true
                  ..required = true
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'stream'
                  ..required = true
                  ..named = true
                  ..type = const Reference('Stream<dynamic>'),
              ),
              Parameter(
                (b) => b
                  ..name = 'child'
                  ..required = true
                  ..named = true
                  ..type = const Reference('Widget'),
              ),
            ],
          ),
      );

  Class get generate => Class(
        (b) => b
          ..name = className
          ..extend = const Reference('InheritedStreamer<dynamic>')
          ..types.addAll(
            formGenerator.element.thisType.typeArguments.map(
              (e) => Reference(e.toString()),
            ),
          )
          ..constructors.add(_constructor)
          ..fields.add(
            Field(
              (b) => b
                ..name = 'form'
                ..modifier = FieldModifier.final$
                ..type = Reference(formGenerator.classNameFull),
            ),
          ),
      );
}
