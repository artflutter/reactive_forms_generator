import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form.dart';

class ReactiveFormBuilder {
  final ReactiveForm reactiveForm;

  ReactiveFormBuilder(this.reactiveForm);

  String get _baseName =>
      reactiveForm.reactiveInheritedStreamer.formGenerator.className;

  String get className => '${_baseName}Builder';

  String get stateClassName => '_${_baseName}BuilderState';

  Method get _createStateMethod => Method(
        (b) => b
          ..name = 'createState'
          ..lambda = true
          ..type
          ..annotations.add(const CodeExpression(Code('override')))
          ..returns = Reference(stateClassName)
          ..body = Code('$stateClassName()'),
      );

  Constructor get _widgetConstructor => Constructor(
        (b) => b
          ..constant = true
          ..initializers.add(
            refer('super').call(
              [],
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
                  ..name = 'model'
                  ..named = true
                  ..toThis = true
                  ..required = reactiveForm.reactiveInheritedStreamer
                      .formGenerator.element.hasNonAnnotatedRequiredParameters,
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

  Field get _model {
    final element =
        reactiveForm.reactiveInheritedStreamer.formGenerator.element;

    return Field(
      (b) => b
        ..name = 'model'
        ..type = Reference(
          '${element.name}${element.hasNonAnnotatedRequiredParameters ? '' : '?'}',
        )
        ..modifier = FieldModifier.final$,
    );
  }

  List<Field> get _widgetFields => [
        _model,
        Field(
          (b) => b
            ..name = 'child'
            ..type = const Reference('Widget?')
            ..modifier = FieldModifier.final$,
        ),
        Field(
          (b) => b
            ..name = 'onWillPop'
            ..type = const Reference('WillPopCallback?')
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
          ..name = className
          ..extend = const Reference('StatefulWidget')
          ..fields.addAll(_widgetFields)
          ..constructors.add(_widgetConstructor)
          ..methods.add(_createStateMethod),
      );

  List<Method> get _stateMethods => [
        Method(
          (b) => b
            ..name = 'initState'
            ..annotations.add(const CodeExpression(Code('override')))
            ..returns = const Reference('void')
            ..body = Code('''
                _form = FormGroup({});
                _formModel = ${reactiveForm.reactiveInheritedStreamer.formGenerator.className}(widget.model, _form, null);
    
                _form.addAll(_formModel.formElements().controls);
                
                super.initState();              
              '''),
        ),
        Method(
          (b) => b
            ..name = 'build'
            ..annotations.add(const CodeExpression(Code('override')))
            ..returns = const Reference('Widget')
            ..requiredParameters.add(
              Parameter(
                (b) => b
                  ..name = 'context'
                  ..type = const Reference('BuildContext'),
              ),
            )
            ..body = Code(
              '''
                return ${reactiveForm.className}(
                  form: _formModel,
                  onWillPop: widget.onWillPop,
                  child: ReactiveForm(
                    formGroup: _form,
                    onWillPop: widget.onWillPop,
                    child: widget.builder(context, _formModel, widget.child),
                  ),
                );
              ''',
            ),
        ),
      ];

  Class get _state => Class(
        (b) => b
          ..name = stateClassName
          ..extend = Reference('State<$className>')
          ..fields.addAll(
            [
              Field(
                (b) => b
                  ..name = '_form'
                  ..late = true
                  ..type = const Reference('FormGroup'),
              ),
              Field(
                (b) => b
                  ..name = '_formModel'
                  ..late = true
                  ..type = Reference(
                    reactiveForm
                        .reactiveInheritedStreamer.formGenerator.className,
                  ),
              ),
            ],
          )
          ..methods.addAll(_stateMethods),
      );

  List<Spec> get generate => [
        _widget,
        _state,
      ];
}
