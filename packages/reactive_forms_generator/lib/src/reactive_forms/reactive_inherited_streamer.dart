import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';

class ReactiveInheritedStreamer {
  final FormGenerator formGenerator;

  const ReactiveInheritedStreamer(this.formGenerator);

  String get className => '${formGenerator.className}InheritedStreamer';

  Constructor get _constructor => Constructor(
        (b) => b
          ..initializers.add(
            refer('super').call(
              [
                CodeExpression(Code('stream')),
                CodeExpression(Code('child')),
              ],
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
                  ..type = Reference('Stream<dynamic>'),
              ),
              Parameter(
                (b) => b
                  ..name = 'child'
                  ..required = true
                  ..named = true
                  ..type = Reference('Widget'),
              ),
            ],
          ),
      );

  // List<Spec> get imports => [
  //       Directive.import('package:flutter/foundation.dart'),
  //       Directive.import('package:flutter/material.dart'),
  //       Directive.import('package:reactive_forms/reactive_forms.dart'),
  //       Directive.import(
  //         'package:reactive_forms/src/widgets/inherited_streamer.dart',
  //       ),
  //     ];

  Class get generate => Class(
        (b) => b
          ..name = className
          ..extend = Reference('InheritedStreamer<dynamic>')
          ..constructors.add(_constructor)
          ..fields.add(
            Field(
              (b) => b
                ..name = 'form'
                ..modifier = FieldModifier.final$
                ..type = Reference(formGenerator.className),
            ),
          ),
      );
}
