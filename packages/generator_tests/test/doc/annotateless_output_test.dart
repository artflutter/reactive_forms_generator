@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'annotateless_output';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with annotateless fields',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            @Rf(output: true)
            class AnnotatelessO extends Equatable {
              final String email;
            
              final String password;
            
              const AnnotatelessO({
                @RfControl() this.email = "",
                this.password = "",
              });
            
              @override
              List<Object?> get props => [email, password];
            }
          ''',
          generatedFile: generatedFile,
        );
      },
    );
  });
}

const generatedFile = r'''// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'annotateless_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveAnnotatelessOFormConsumer extends StatelessWidget {
  const ReactiveAnnotatelessOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, AnnotatelessOForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAnnotatelessOForm.of(context);

    if (formModel is! AnnotatelessOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class AnnotatelessOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const AnnotatelessOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final AnnotatelessOForm form;
}

class ReactiveAnnotatelessOForm extends StatelessWidget {
  const ReactiveAnnotatelessOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final AnnotatelessOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static AnnotatelessOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              AnnotatelessOFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        AnnotatelessOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as AnnotatelessOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatelessOFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveAnnotatelessOFormExt on BuildContext {
  AnnotatelessOForm? annotatelessOFormWatch() =>
      ReactiveAnnotatelessOForm.of(this);

  AnnotatelessOForm? annotatelessOFormRead() =>
      ReactiveAnnotatelessOForm.of(this, listen: false);
}

class AnnotatelessOFormBuilder extends StatefulWidget {
  const AnnotatelessOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final AnnotatelessO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, AnnotatelessOForm formModel, Widget? child) builder;

  final void Function(BuildContext context, AnnotatelessOForm formModel)?
      initState;

  @override
  _AnnotatelessOFormBuilderState createState() =>
      _AnnotatelessOFormBuilderState();
}

class _AnnotatelessOFormBuilderState extends State<AnnotatelessOFormBuilder> {
  late AnnotatelessOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        AnnotatelessOForm(AnnotatelessOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logAnnotatelessOForm.onRecord.listen((LogRecord e) {
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
  }

  @override
  void didUpdateWidget(covariant AnnotatelessOFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    _logSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveAnnotatelessOForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

final _logAnnotatelessOForm = Logger.detached('AnnotatelessOForm');

class AnnotatelessOForm
    implements FormModel<AnnotatelessO, AnnotatelessOOutput> {
  AnnotatelessOForm(
    this.form,
    this.path,
  );

  static const String emailControlName = "email";

  static const String passwordControlName = "password";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String emailControlPath() => pathBuilder(emailControlName);

  String passwordControlPath() => pathBuilder(passwordControlName);

  String get _emailValue => emailControl.value ?? "";

  String get _passwordValue => passwordControl.value ?? "";

  String get _emailRawValue => emailControl.value ?? "";

  String get _passwordRawValue => passwordControl.value ?? "";

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsPassword {
    try {
      form.control(passwordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get emailErrors => emailControl.errors;

  Map<String, Object> get passwordErrors => passwordControl.errors;

  void get emailFocus => form.focus(emailControlPath());

  void get passwordFocus => form.focus(passwordControlPath());

  void emailValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void passwordValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;

  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void passwordSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      passwordControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      passwordControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  AnnotatelessOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logAnnotatelessOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return AnnotatelessOOutput(email: _emailValue, password: _passwordValue);
  }

  @override
  AnnotatelessO get rawModel {
    return AnnotatelessO(email: _emailRawValue, password: _passwordRawValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(AnnotatelessO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      AnnotatelessOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(AnnotatelessOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logAnnotatelessOForm.info('Errors');
      _logAnnotatelessOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    AnnotatelessO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AnnotatelessOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    AnnotatelessO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(AnnotatelessO? annotatelessO) => FormGroup({
        emailControlName: FormControl<String>(
            value: annotatelessO?.email,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: annotatelessO?.password,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

@Rf(output: true)
class AnnotatelessOOutput extends Equatable {
  final String email;
  final String password;
  const AnnotatelessOOutput({@RfControl() this.email = "", this.password = ""});
  @override
  List<Object?> get props => [email, password];
}

class ReactiveAnnotatelessOFormArrayBuilder<
    ReactiveAnnotatelessOFormArrayBuilderT> extends StatelessWidget {
  const ReactiveAnnotatelessOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveAnnotatelessOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveAnnotatelessOFormArrayBuilderT>? Function(
      AnnotatelessOForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      AnnotatelessOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveAnnotatelessOFormArrayBuilderT> control,
      ReactiveAnnotatelessOFormArrayBuilderT? item,
      AnnotatelessOForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveAnnotatelessOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAnnotatelessOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveAnnotatelessOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveAnnotatelessOFormArrayBuilderT>,
                ) ??
                true)
            .toList();

        final itemList = values
            .map((item) {
              return MapEntry(
                item.$1,
                itemBuilder(
                  context,
                  item.$1,
                  formArray.controls[item.$1]
                      as FormControl<ReactiveAnnotatelessOFormArrayBuilderT>,
                  item.$2.value,
                  formModel,
                ),
              );
            })
            .map((e) => e.value)
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
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
  }
}

class ReactiveAnnotatelessOFormArrayBuilder2<
    ReactiveAnnotatelessOFormArrayBuilderT> extends StatelessWidget {
  const ReactiveAnnotatelessOFormArrayBuilder2({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveAnnotatelessOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveAnnotatelessOFormArrayBuilderT>? Function(
      AnnotatelessOForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        AnnotatelessOForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveAnnotatelessOFormArrayBuilderT> control,
        ReactiveAnnotatelessOFormArrayBuilderT? item,
        AnnotatelessOForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveAnnotatelessOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAnnotatelessOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveAnnotatelessOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveAnnotatelessOFormArrayBuilderT>,
                ) ??
                true)
            .toList();

        final itemList = values
            .map((item) {
              return MapEntry(
                item.$1,
                itemBuilder((
                  context: context,
                  i: item.$1,
                  control: formArray.controls[item.$1]
                      as FormControl<ReactiveAnnotatelessOFormArrayBuilderT>,
                  item: item.$2.value,
                  formModel: formModel
                )),
              );
            })
            .map((e) => e.value)
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
          return emptyBuilder!(context);
        }

        return builder?.call((
              context: context,
              itemList: itemList,
              formModel: formModel,
            )) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveAnnotatelessOFormFormGroupArrayBuilder<
    ReactiveAnnotatelessOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveAnnotatelessOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveAnnotatelessOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveAnnotatelessOFormFormGroupArrayBuilderT>>
      Function(AnnotatelessOForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      AnnotatelessOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveAnnotatelessOFormFormGroupArrayBuilderT? item,
      AnnotatelessOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAnnotatelessOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveAnnotatelessOFormFormGroupArrayBuilderT>[])
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
  }
}
''';
