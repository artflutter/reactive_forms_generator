import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form.dart';

class ReactiveFormModelBuilder {
  final ReactiveForm reactiveForm;

  ReactiveFormModelBuilder(this.reactiveForm);

  String get _baseName =>
      reactiveForm.reactiveInheritedStreamer.formGenerator.className;

  ClassElement get _element =>
      reactiveForm.reactiveInheritedStreamer.formGenerator.element;

  String get className => '${_baseName}ModelBuilder';

  String get stateClassName => '_${_baseName}ModelBuilderState';

  Method get _createStateMethod => Method(
        (b) => b
          ..name = 'createState'
          ..lambda = true
          ..type
          ..annotations.add(const CodeExpression(Code('override')))
          ..returns = Reference('$stateClassName${_element.generics}')
          ..body = Code('$stateClassName${_element.generics}()'),
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
                  ..name = 'formModel'
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
                  ..name = 'canPop'
                  ..named = true
                  ..toThis = true,
              ),
              Parameter(
                (b) => b
                  ..name = 'onPopInvoked'
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
              Parameter(
                (b) => b
                  ..name = 'initState'
                  ..named = true
                  ..toThis = true,
              ),
            ],
          ),
      );

  Field get _formModel {
    return Field(
      (b) => b
        ..name = 'formModel'
        ..type = Reference(
          reactiveForm.reactiveInheritedStreamer.formGenerator.classNameFull,
        )
        ..modifier = FieldModifier.final$,
    );
  }

  List<Field> get _widgetFields => [
        _formModel,
        Field(
          (b) => b
            ..name = 'child'
            ..type = const Reference('Widget?')
            ..modifier = FieldModifier.final$,
        ),
        Field(
          (b) => b
            ..name = 'canPop'
            ..type = const Reference('bool Function(FormGroup formGroup)?')
            ..modifier = FieldModifier.final$,
        ),
        Field(
          (b) => b
            ..name = 'onPopInvoked'
            ..type = const Reference(
                'void Function(FormGroup formGroup, bool didPop)?')
            ..modifier = FieldModifier.final$,
        ),
        Field(
          (b) => b
            ..name = 'builder'
            ..type = Reference(
              'Widget Function(BuildContext context, ${reactiveForm.reactiveInheritedStreamer.formGenerator.classNameFull} formModel, Widget? child)',
            )
            ..modifier = FieldModifier.final$,
        ),
        Field(
          (b) => b
            ..name = 'initState'
            ..type = Reference(
              'void Function(BuildContext context, ${reactiveForm.reactiveInheritedStreamer.formGenerator.classNameFull} formModel)?',
            )
            ..modifier = FieldModifier.final$,
        ),
      ];

  Class get _widget => Class(
        (b) => b
          ..docs.add(
              '''/// Similar to the ${_baseName}Builder but opts out of automatic form lifecycle
            /// management.
            /// 
            /// See `${_baseName}Builder.initState` and `${_baseName}Builder.dispose` for examples
            /// of initializing/disposing the formModel.''')
          ..types.addAll(_element.fullGenericTypes)
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
            ..body = const Code('''
                super.initState();

                _formModel = widget.formModel;

                if (_formModel.form.disabled) {
                  _formModel.form.markAsDisabled();
                }
            
                widget.initState?.call(context, _formModel);
              '''),
        ),
        Method(
          (b) => b
            ..name = 'didUpdateWidget'
            ..annotations.add(const CodeExpression(Code('override')))
            ..returns = const Reference('void')
            ..requiredParameters.add(
              Parameter(
                (b) => b
                  ..name = 'oldWidget'
                  ..type = Reference('$className${_element.generics}')
                  ..covariant = true,
              ),
            )
            ..body = const Code('''
                super.didUpdateWidget(oldWidget);

                if (widget.formModel != oldWidget.formModel) {
                  _formModel = widget.formModel;
                }
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
                  key: ObjectKey(_formModel),
                  form: _formModel,
                  // canPop: widget.canPop,
                  // onPopInvoked: widget.onPopInvoked,
                  child: ReactiveFormBuilder(
                    form: () => _formModel.form,
                    canPop: widget.canPop,
                    onPopInvoked: widget.onPopInvoked,
                    builder: (context, formGroup, child) => widget.builder(context, _formModel, widget.child),
                    child: widget.child,
                  ),
                );
              ''',
            ),
        ),
      ];

  Class get _state => Class(
        (b) => b
          ..types.addAll(_element.fullGenericTypes)
          ..name = stateClassName
          ..extend = Reference('State<$className${_element.generics}>')
          ..fields.addAll(
            [
              Field(
                (b) => b
                  ..name = '_formModel'
                  ..late = true
                  ..type = Reference(
                    reactiveForm
                        .reactiveInheritedStreamer.formGenerator.classNameFull,
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
