import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:dart_style/dart_style.dart';
import 'package:reactive_forms_generator/src/form_element_generator.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';
import 'package:source_gen/source_gen.dart';
import 'package:recase/recase.dart';

const stringRefer = Reference('String');
const formGroupRefer = Reference('FormGroup');

String generateLibrary(ClassElement element) {
  final emitter = DartEmitter(
    allocator: Allocator.simplePrefixing(),
    orderDirectives: true,
    useNullSafetySyntax: true,
  );

  final formGenerator = FormGenerator(element);

  final formControlChecker =
      const TypeChecker.fromRuntime(FormControlAnnotation);
  final formArrayChecker = const TypeChecker.fromRuntime(FormArrayAnnotation);

  final library = Library(
    (b) => b
      ..body.addAll([
        // Directive.import('package:reactive_forms/reactive_forms.dart'),
        Class(
          (b) => b
            ..name = '${formGenerator.className}Builder'
            ..extend = Reference('StatefulWidget')
            ..fields.addAll(
              [
                Field(
                  (b) => b
                    ..name = 'model'
                    ..type = Reference(element.name)
                    ..modifier = FieldModifier.final$,
                ),
                Field(
                  (b) => b
                    ..name = 'child'
                    ..type = Reference('Widget?')
                    ..modifier = FieldModifier.final$,
                ),
                Field(
                  (b) => b
                    ..name = 'builder'
                    ..type = Reference(
                      'Widget Function(BuildContext context, ${formGenerator.className} formModel, Widget? child)',
                    )
                    ..modifier = FieldModifier.final$,
                ),
              ],
            )
            ..constructors.add(
              Constructor(
                (b) => b
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
                      Parameter((b) => b
                            ..name = 'model'
                            ..named = true
                            ..toThis = true
                            ..required = true
                          // ..type = Reference(element.name),
                          ),
                      Parameter((b) => b
                            ..name = 'child'
                            ..named = true
                            ..toThis = true
                          // ..type = Reference('Widget?'),
                          ),
                      Parameter((b) => b
                            ..name = 'builder'
                            ..named = true
                            ..toThis = true
                            ..required = true
                          // ..type = Reference(
                          //   'Widget Function(BuildContext context, ${formGenerator.className} formModel, Widget? child)',
                          // ),
                          ),
                    ],
                  ),
              ),
            )
            ..methods.add(
              Method(
                (b) => b
                  ..name = 'createState'
                  ..lambda = true
                  ..annotations.add(CodeExpression(Code('override')))
                  ..returns = Reference(
                    '_${formGenerator.className}BuilderState',
                  )
                  ..body = Code('_${formGenerator.className}BuilderState()'),
              ),
            ),
        ),
        Class(
          (b) => b
            ..name = '_${formGenerator.className}BuilderState'
            ..extend = Reference('State<${formGenerator.className}Builder>')
            ..fields.add(Field((b) => b
              ..name = '_form'
              ..type = Reference('late ${formGenerator.className}')))
            // ..constructors.add(
            //   Constructor(
            //         (b) => b
            //       ..optionalParameters.addAll(
            //         [
            //           Parameter(
            //                 (b) => b
            //               ..name = 'key'
            //               ..named = true
            //               ..type = Reference('Key?'),
            //           ),
            //           Parameter(
            //                 (b) => b
            //               ..name = 'model'
            //               ..named = true
            //               ..required = true
            //               ..type = Reference(element.name),
            //           ),
            //         ],
            //       ),
            //   ),
            // )
            //           @override
            //           void initState() {
            // agent = widget.agent;
            // portCall = widget.portCall;
            // super.initState();
            // }
            ..methods.addAll(
              [
                Method(
                  (b) => b
                    ..name = 'initState'
                    ..annotations.add(CodeExpression(Code('override')))
                    ..returns = Reference('void')
                    ..body = Code(
                      '_form = ${formGenerator.className}(widget.model); super.initState();',
                    ),
                ),
                // @override
                // Widget build(BuildContext context) {
                Method(
                  (b) => b
                    ..name = 'build'
                    ..annotations.add(CodeExpression(Code('override')))
                    ..returns = Reference('Widget')
                    ..requiredParameters.add(
                      Parameter(
                        (b) => b
                          ..name = 'context'
                          ..type = Reference('BuildContext'),
                      ),
                    )
                    ..body = Code(
                      '''
                        return ReactiveFormBuilder(
                          child: widget.child,
                          form: () => _form.form,
                          builder: (context, form, child) {
                            return widget.builder(context, _form, widget.child);
                          },
                        );
                      ''',
                    ),
                ),
              ],
            ),
        ),
        Class(
          (b) => b
            ..name = formGenerator.className
            ..fields.addAll(
              [
                ...element.fields.map(
                  (e) => Field(
                    (b) => b
                      ..static = true
                      ..type = stringRefer
                      ..name = e.name
                      ..assignment = Code('"${e.name}"'),
                  ),
                ),
                Field(
                  (b) => b
                    ..name = 'form'
                    // TODO: remove this workaround when code_builder includes late field modifier:
                    // https://github.com/dart-lang/code_builder/pull/310
                    ..type = Reference('late FormGroup'),
                ),
              ],
            )
            ..constructors.add(
              Constructor(
                (b) => b
                  ..requiredParameters.addAll([
                    Parameter(
                      (b) => b
                        ..name = element.name.camelCase
                        ..type = Reference(element.name),
                    ),
                  ])
                  // ..name = formGenerator.className
                  ..body = Code(
                      'form = fb.group(_formElements(${element.name.camelCase}));'),
              ),
            )
            ..methods.addAll([
              ...formGenerator.fieldValueMethodList,
              ...formGenerator.fieldContainsMethodList,
              Method(
                (b) {
                  final formElements = element.fields.map(
                    (f) {
                      FormElementGenerator? formElementGenerator = null;
                      if (formControlChecker.hasAnnotationOfExact(f)) {
                        formElementGenerator = FormControlGenerator(f);
                      }

                      if (formArrayChecker.hasAnnotationOfExact(f)) {
                        formElementGenerator = FormArrayGenerator(f);
                      }

                      if (formElementGenerator != null) {
                        return '${formGenerator.className}.${f.name}: ${formElementGenerator.element(
                          '${element.name.camelCase}.${f.name}',
                        )}';
                      }

                      return null;
                    },
                  ).whereType<String>();

                  b
                    ..name = '_formElements'
                    ..lambda = true
                    ..requiredParameters.add(Parameter(
                      (b) => b
                        ..name = element.name.camelCase
                        ..type = Reference(element.name),
                    ))
                    ..returns = Reference('Map<String, Object>')
                    ..body = Code('{${formElements.join(',')}}');
                },
              )
            ]),
        ),
      ]),
  );

  return DartFormatter().format(library.accept(emitter).toString());
}
