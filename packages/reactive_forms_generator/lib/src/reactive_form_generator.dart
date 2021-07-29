// import 'package:code_builder/code_builder.dart';
// import 'package:reactive_forms_generator/src/form_generator.dart';
//
// class ReactiveFormGenerator {
//   final FormGenerator formGenerator;
//
//   const ReactiveFormGenerator(this.formGenerator);
//
//   String get inheritedStreamerClassName =>
//       '${formGenerator.className}InheritedStreamer';
//
//   String get reactiveFormClassName => 'Reactive${formGenerator.className}';
//
//   Constructor get _inheritedStreamerConstructor => Constructor(
//         (b) => b
//           ..optionalParameters.addAll(
//             [
//               Parameter(
//                 (b) => b
//                   ..name = 'key'
//                   ..named = true
//                   ..type = Reference('Key?'),
//               ),
//               Parameter(
//                 (b) => b
//                   ..name = 'form'
//                   ..named = true
//                   ..required = true
//                   ..toThis = true,
//               ),
//               Parameter(
//                 (b) => b
//                   ..name = 'stream'
//                   ..required = true
//                   ..named = true
//                   ..type = Reference('Stream<dynamic>'),
//               ),
//               Parameter(
//                 (b) => b
//                   ..name = 'child'
//                   ..required = true
//                   ..named = true
//                   ..type = Reference('Widget'),
//               ),
//             ],
//           )
//           ..initializers.add(
//             refer('super').call(
//               [
//                 CodeExpression(Code('stream')),
//                 CodeExpression(Code('child')),
//               ],
//               {'key': CodeExpression(Code('key'))},
//             ).code,
//           ),
//       );
//
//   Constructor get _reactiveFormConstructor => Constructor(
//         (b) => b
//           ..optionalParameters.addAll(
//             [
//               Parameter(
//                 (b) => b
//                   ..name = 'key'
//                   ..named = true
//                   ..type = Reference('Key?'),
//               ),
//               Parameter(
//                 (b) => b
//                   ..name = 'form'
//                   ..named = true
//                   ..required = true
//                   ..toThis = true,
//               ),
//               Parameter(
//                 (b) => b
//                   ..name = 'child'
//                   ..named = true
//                   ..required = true
//                   ..toThis = true,
//               ),
//               Parameter(
//                 (b) => b
//                   ..name = 'onWillPop'
//                   ..toThis = true
//                   ..named = true,
//               ),
//             ],
//           )
//           ..initializers.add(
//             refer('super').call(
//               [],
//               {'key': CodeExpression(Code('key'))},
//             ).code,
//           ),
//       );
//
//   List<Spec> get imports => [
//         Directive.import('package:flutter/foundation.dart'),
//         Directive.import('package:flutter/material.dart'),
//         Directive.import('package:reactive_forms/reactive_forms.dart'),
//         Directive.import(
//             'package:reactive_forms/src/widgets/inherited_streamer.dart'),
//       ];
//
//   Class get reactiveFormInheritedStreamer => Class(
//         (b) => b
//           ..name = inheritedStreamerClassName
//           ..extend = Reference('InheritedStreamer<dynamic>')
//           ..constructors.add(_inheritedStreamerConstructor)
//           ..fields.add(
//             Field(
//               (b) => b
//                 ..name = 'form'
//                 ..modifier = FieldModifier.final$
//                 ..type = Reference(formGenerator.className),
//             ),
//           ),
//       );
//
//   Class get reactiveForm => Class(
//         (b) => b
//           ..name = reactiveFormClassName
//           ..extend = Reference('StatelessWidget')
//           ..constructors.add(_reactiveFormConstructor)
//           ..fields.addAll([
//             Field(
//               (b) => b
//                 ..name = 'child'
//                 ..modifier = FieldModifier.final$
//                 ..type = Reference('Widget'),
//             ),
//             Field(
//               (b) => b
//                 ..name = 'form'
//                 ..modifier = FieldModifier.final$
//                 ..type = Reference(formGenerator.className),
//             ),
//             Field(
//               (b) => b
//                 ..name = 'onWillPop'
//                 ..modifier = FieldModifier.final$
//                 ..type = Reference('WillPopCallback?'),
//             )
//           ])
//           ..methods.addAll(
//             [
//               Method(
//                 (b) => b
//                   ..name = 'of'
//                   ..static = true
//                   ..returns = Reference('${formGenerator.className}?')
//                   ..requiredParameters.add(
//                     Parameter(
//                       (b) => b
//                         ..name = 'context'
//                         ..type = Reference('BuildContext'),
//                     ),
//                   )
//                   ..optionalParameters.add(
//                     Parameter(
//                       (b) => b
//                         ..name = 'listen'
//                         ..named = true
//                         ..defaultTo = Code('true')
//                         ..type = Reference('bool'),
//                     ),
//                   )
//                   ..body = Code('''
//                   if (listen) {
//                     return context
//                         .dependOnInheritedWidgetOfExactType<${inheritedStreamerClassName}>()
//                         ?.form;
//                   }
//
//                   final element = context.getElementForInheritedWidgetOfExactType<
//                       ${inheritedStreamerClassName}>();
//                   return element == null
//                       ? null
//                       : (element.widget as ${inheritedStreamerClassName}).form;
//                 '''),
//               ),
//               Method(
//                 (b) => b
//                   ..name = 'build'
//                   ..returns = Reference('Widget')
//                   ..requiredParameters.add(
//                     Parameter(
//                       (b) => b
//                         ..name = 'context'
//                         ..type = Reference('BuildContext'),
//                     ),
//                   )
//                   ..annotations.add(
//                     CodeExpression(Code('override')),
//                   )
//                   ..body = Code('''
//                     return ${inheritedStreamerClassName}(
//                       form: form,
//                       stream: form.form.statusChanged,
//                       child: WillPopScope(
//                         onWillPop: onWillPop,
//                         child: child,
//                       ),
//                     );
//                   '''),
//               )
//             ],
//           ),
//       );
//
//   List<Class> get generateClasses => [
//         reactiveFormInheritedStreamer,
//         reactiveForm,
//       ];
// }
