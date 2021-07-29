import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form.dart';

class ReactiveFormBuilder {
  final ReactiveForm reactiveForm;

  ReactiveFormBuilder(this.reactiveForm);

  Method get _createStateMethod => Method(
        (b) => b
          ..name = 'createState'
          ..lambda = true
          ..type
          ..annotations.add(CodeExpression(Code('override')))
          ..returns = Reference(
            '_${reactiveForm.reactiveInheritedStreamer.formGenerator.className}BuilderState',
          )
          ..body = Code(
            '_${reactiveForm.reactiveInheritedStreamer.formGenerator.className}BuilderState()',
          ),
      );

  Constructor get _widgetConstructor => Constructor(
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
              Parameter(
                (b) => b
                  ..name = 'model'
                  ..named = true
                  ..toThis = true
                  ..required = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'child'
                  ..named = true
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'onWillPop'
                  ..named = true
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'builder'
                  ..named = true
                  ..toThis = true
                  ..required = true,
              ),
            ],
          ),
      );

  List<Field> get _widgetFields => [
        Field(
          (b) => b
            ..name = 'model'
            ..type = Reference(reactiveForm
                .reactiveInheritedStreamer.formGenerator.element.name)
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
            ..name = 'onWillPop'
            ..type = Reference('WillPopCallback?')
            ..modifier = FieldModifier.final$,
        ),
        Field(
          (b) => b
            ..name = 'builder'
            ..type = Reference(
              'Widget Function(BuildContext context, ${reactiveForm.reactiveInheritedStreamer.formGenerator.className} formModel, Widget? child)',
            )
            ..modifier = FieldModifier.final$,
        ),
      ];

  Class get _widget => Class(
        (b) => b
          ..name =
              '${reactiveForm.reactiveInheritedStreamer.formGenerator.className}Builder'
          ..extend = Reference('StatefulWidget')
          ..fields.addAll(_widgetFields)
          ..constructors.add(_widgetConstructor)
          ..methods.add(_createStateMethod),
      );

  List<Method> get _stateMethods => [
        Method(
          (b) => b
            ..name = 'initState'
            ..annotations.add(CodeExpression(Code('override')))
            ..returns = Reference('void')
            ..body = Code(
              '_form = ${reactiveForm.reactiveInheritedStreamer.formGenerator.className}(widget.model); super.initState();',
            ),
        ),
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
                        return ReactiveLoginForm(
                          form: _form,
                          onWillPop: widget.onWillPop,
                          child: ReactiveForm(
                            formGroup: _form.form,
                            onWillPop: widget.onWillPop,
                            child: widget.builder(context, _form, widget.child),
                          ),
                        );
                      ''',
            ),
        ),
      ];

  Class get _state => Class(
        (b) => b
          ..name =
              '_${reactiveForm.reactiveInheritedStreamer.formGenerator.className}BuilderState'
          ..extend = Reference(
              'State<${reactiveForm.reactiveInheritedStreamer.formGenerator.className}Builder>')
          ..fields.add(Field((b) => b
            ..name = '_form'
            ..late = true
            ..type = Reference(reactiveForm
                .reactiveInheritedStreamer.formGenerator.className)))
          ..methods.addAll(_stateMethods),
      );

  List<Spec> get generate => [
        _widget,
        _state,
      ];
}
