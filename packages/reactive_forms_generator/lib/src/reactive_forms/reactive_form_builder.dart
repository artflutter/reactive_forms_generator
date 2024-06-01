import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form.dart';

class ReactiveFormBuilder {
  final ReactiveForm reactiveForm;

  ReactiveFormBuilder(this.reactiveForm);

  String get _baseName =>
      reactiveForm.reactiveInheritedStreamer.formGenerator.className;

  String get _log => reactiveForm.reactiveInheritedStreamer.formGenerator.log;

  ClassElement get _element =>
      reactiveForm.reactiveInheritedStreamer.formGenerator.element;

  String get className => '${_baseName}Builder';

  String get stateClassName => '_${_baseName}BuilderState';

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
                  ..name = 'model'
                  ..named = true
                  ..toThis = true
                  ..required = !reactiveForm.reactiveInheritedStreamer
                      .formGenerator.element.isNullable,
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
              Parameter((b) => b
                ..name = 'initState'
                ..named = true
                ..toThis = true),
            ],
          ),
      );

  Field get _model {
    return Field(
      (b) => b
        ..name = 'model'
        ..type = Reference(
          '${_element.fullTypeName}${_element.isNullable ? '?' : ''}',
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
            ..body = Code('''
                _formModel = ${reactiveForm.reactiveInheritedStreamer.formGenerator.classNameFull}(${reactiveForm.reactiveInheritedStreamer.formGenerator.className}.formElements${reactiveForm.reactiveInheritedStreamer.formGenerator.element.generics}(widget.model), null);

                if (_formModel.form.disabled) {
                  _formModel.form.markAsDisabled();
                }
            
                widget.initState?.call(context, _formModel);
                
                _logSubscription = $_log.onRecord.listen((LogRecord e) {
                  // use `dumpErrorToConsole` for severe messages to ensure that severe
                  // exceptions are formatted consistently with other Flutter examples and
                  // avoids printing duplicate exceptions
                  if (e.level >= Level.SEVERE) {
                    final Object? error = e.error;
                    FlutterError.dumpErrorToConsole(
                      FlutterErrorDetails(
                        exception: error is Exception ? error : Exception(error),
                        stack: e.stackTrace,
                        library: e.loggerName,
                        context: ErrorDescription(e.message),
                      ),
                    );
                  } else {
                    log(
                      e.message,
                      time: e.time,
                      sequenceNumber: e.sequenceNumber,
                      level: e.level.value,
                      name: e.loggerName,
                      zone: e.zone,
                      error: e.error,
                      stackTrace: e.stackTrace,
                    );
                  }
                });
                
                super.initState();              
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
                if (widget.model != oldWidget.model) {
                  _formModel.updateValue(widget.model);
                }
                
                super.didUpdateWidget(oldWidget);
              '''),
        ),
        Method(
          (b) => b
            ..name = 'dispose'
            ..annotations.add(const CodeExpression(Code('override')))
            ..returns = const Reference('void')
            ..body = const Code('''
                _formModel.form.dispose();
                _logSubscription?.cancel();
                super.dispose();
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
              Field(
                (b) => b
                  ..name = '_logSubscription'
                  ..type = const Reference('StreamSubscription<LogRecord>?'),
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
