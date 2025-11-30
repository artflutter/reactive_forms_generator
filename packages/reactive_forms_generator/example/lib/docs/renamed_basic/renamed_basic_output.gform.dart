// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'renamed_basic_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveSomeWiredNameFormConsumer extends StatelessWidget {
  const ReactiveSomeWiredNameFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
    BuildContext context,
    SomeWiredNameForm formModel,
    Widget? child,
  )
  builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSomeWiredNameForm.of(context);

    if (formModel is! SomeWiredNameForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SomeWiredNameFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const SomeWiredNameFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(stream, child, key: key);

  final SomeWiredNameForm form;
}

class ReactiveSomeWiredNameForm extends StatelessWidget {
  const ReactiveSomeWiredNameForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvokedWithResult,
  }) : super(key: key);

  final Widget child;

  final SomeWiredNameForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
  onPopInvokedWithResult;

  static SomeWiredNameForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
            SomeWiredNameFormInheritedStreamer
          >()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<
          SomeWiredNameFormInheritedStreamer
        >();
    return element == null
        ? null
        : (element.widget as SomeWiredNameFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SomeWiredNameFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvokedWithResult: onPopInvokedWithResult,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveSomeWiredNameFormExt on BuildContext {
  SomeWiredNameForm? someWiredNameFormWatch() =>
      ReactiveSomeWiredNameForm.of(this);

  SomeWiredNameForm? someWiredNameFormRead() =>
      ReactiveSomeWiredNameForm.of(this, listen: false);
}

class SomeWiredNameFormBuilder extends StatefulWidget {
  const SomeWiredNameFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvokedWithResult,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final RenamedBasicO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
  onPopInvokedWithResult;

  final Widget Function(
    BuildContext context,
    SomeWiredNameForm formModel,
    Widget? child,
  )
  builder;

  final void Function(BuildContext context, SomeWiredNameForm formModel)?
  initState;

  @override
  _SomeWiredNameFormBuilderState createState() =>
      _SomeWiredNameFormBuilderState();
}

class _SomeWiredNameFormBuilderState extends State<SomeWiredNameFormBuilder> {
  late SomeWiredNameForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = SomeWiredNameForm(
      SomeWiredNameForm.formElements(widget.model),
      null,
      null,
    );

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logSomeWiredNameForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant SomeWiredNameFormBuilder oldWidget) {
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
    return ReactiveSomeWiredNameForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

final _logSomeWiredNameForm = Logger.detached('SomeWiredNameForm');

class SomeWiredNameForm
    implements FormModel<RenamedBasicO, RenamedBasicOOutput> {
  SomeWiredNameForm(this.form, this.path, this._formModel)
    : initial = form.rawValue;

  static const String emailControlName = "email";

  static const String passwordControlName = "password";

  final FormGroup form;

  final String? path;

  // ignore: unused_field
  final FormModel<dynamic, dynamic>? _formModel;

  final Map<String, bool> _disabled = {};

  @override
  final Map<String, Object?> initial;

  String emailControlPath() => pathBuilder(emailControlName);

  String passwordControlPath() => pathBuilder(passwordControlName);

  String get _emailValue => emailControl.value as String;

  String get _passwordValue => passwordControl.value as String;

  String? get _emailRawValue => containsEmail ? emailControl.value : null;

  String? get _passwordRawValue =>
      containsPassword ? passwordControl.value : null;

  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPassword {
    try {
      form.control(passwordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get emailErrors => emailControl.errors;

  Map<String, Object>? get passwordErrors => passwordControl.errors;

  void get emailFocus => form.focus(emailControlPath());

  void get passwordFocus => form.focus(passwordControlPath());

  void emailRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsEmail) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          emailControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            emailControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void passwordRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsPassword) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          passwordControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            passwordControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void emailValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void passwordValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void emailValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void passwordValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void emailValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => emailControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void passwordValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => passwordControl.reset(
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
  RenamedBasicOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logSomeWiredNameForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return RenamedBasicOOutput(email: _emailValue, password: _passwordValue);
  }

  @override
  RenamedBasicO get rawModel {
    return RenamedBasicO(email: _emailRawValue, password: _passwordRawValue);
  }

  @override
  void toggleDisabled({bool updateParent = true, bool emitEvent = true}) {
    if (_disabled.isEmpty) {
      currentForm.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      currentForm.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentForm.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(RenamedBasicO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm.rawValue,
      SomeWiredNameForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(RenamedBasicOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logSomeWiredNameForm.info('Errors');
      _logSomeWiredNameForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  @override
  bool get hasChanged {
    return !const DeepCollectionEquality().equals(
      currentForm.rawValue,
      initial,
    );
  }

  @override
  FormGroup get currentForm {
    return path == null ? form : form.control(path!) as FormGroup;
  }

  @override
  void updateValue(
    RenamedBasicO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) => currentForm.updateValue(
    SomeWiredNameForm.formElements(value).rawValue,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  @override
  void upsertValue(
    RenamedBasicO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final formElements = SomeWiredNameForm.formElements(value);

    currentForm.addAll(formElements.controls);
  }

  @override
  void reset({
    RenamedBasicO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) => currentForm.reset(
    value: value != null ? formElements(value).rawValue : null,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  @override
  void updateInitial(Map<String, Object?>? value, String? path) {
    if (_formModel != null) {
      _formModel?.updateInitial(currentForm.rawValue, path);
      return;
    }

    if (value == null) return;

    if (path == null || path.isEmpty) {
      initial.addAll(value);
      return;
    }

    final keys = path.split('.');
    Object? current = initial;
    for (var i = 0; i < keys.length - 1; i++) {
      final key = keys[i];

      if (current is List) {
        final index = int.tryParse(key);
        if (index != null && index >= 0 && index < current.length) {
          current = current[index];
          continue;
        }
      }

      if (current is Map) {
        if (!current.containsKey(key)) {
          current[key] = <String, Object?>{};
        }
        current = current[key];
        continue;
      }

      return;
    }

    final key = keys.last;
    if (current is List) {
      final index = int.tryParse(key);
      if (index != null && index >= 0 && index < current.length) {
        current[index] = value;
      }
    } else if (current is Map) {
      current[key] = value;
    }
  }

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(RenamedBasicO? renamedBasicO) => FormGroup(
    {
      emailControlName: FormControl<String>(
        value: renamedBasicO?.email,
        validators: [RequiredValidator()],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
      passwordControlName: FormControl<String>(
        value: renamedBasicO?.password,
        validators: [RequiredValidator()],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
    },
    validators: [],
    asyncValidators: [],
    asyncValidatorsDebounceTime: 250,
    disabled: false,
  );
}

@Rf(output: true, name: 'SomeWiredName')
class RenamedBasicOOutput {
  final String email;
  final String password;
  RenamedBasicOOutput({
    @RfControl(validators: [RequiredValidator()]) required this.email,
    @RfControl(validators: [RequiredValidator()]) required this.password,
  });
}

class ReactiveSomeWiredNameFormArrayBuilder<
  ReactiveSomeWiredNameFormArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveSomeWiredNameFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  }) : assert(
         control != null || formControl != null,
         "You have to specify `control` or `formControl`!",
       ),
       super(key: key);

  final FormArray<ReactiveSomeWiredNameFormArrayBuilderT>? formControl;

  final FormArray<ReactiveSomeWiredNameFormArrayBuilderT>? Function(
    SomeWiredNameForm formModel,
  )?
  control;

  final Widget Function(
    BuildContext context,
    List<Widget> itemList,
    SomeWiredNameForm formModel,
  )?
  builder;

  final Widget Function(
    BuildContext context,
    int i,
    FormControl<ReactiveSomeWiredNameFormArrayBuilderT> control,
    ReactiveSomeWiredNameFormArrayBuilderT? item,
    SomeWiredNameForm formModel,
  )
  itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
    FormControl<ReactiveSomeWiredNameFormArrayBuilderT> control,
  )?
  controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSomeWiredNameForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<ReactiveSomeWiredNameFormArrayBuilderT>(
      formControl: formControl ?? control?.call(formModel),
      builder: builder != null
          ? (context, itemList) => builder(context, itemList, formModel)
          : null,
      itemBuilder: (context, i, control, item) =>
          itemBuilder(context, i, control, item, formModel),
      emptyBuilder: emptyBuilder,
      controlFilter: controlFilter,
    );
  }
}

class ReactiveSomeWiredNameFormArrayBuilder2<
  ReactiveSomeWiredNameFormArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveSomeWiredNameFormArrayBuilder2({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  }) : assert(
         control != null || formControl != null,
         "You have to specify `control` or `formControl`!",
       ),
       super(key: key);

  final FormArray<ReactiveSomeWiredNameFormArrayBuilderT>? formControl;

  final FormArray<ReactiveSomeWiredNameFormArrayBuilderT>? Function(
    SomeWiredNameForm formModel,
  )?
  control;

  final Widget Function(
    ({BuildContext context, List<Widget> itemList, SomeWiredNameForm formModel})
    params,
  )?
  builder;

  final Widget Function(
    ({
      BuildContext context,
      int i,
      FormControl<ReactiveSomeWiredNameFormArrayBuilderT> control,
      ReactiveSomeWiredNameFormArrayBuilderT? item,
      SomeWiredNameForm formModel,
    })
    params,
  )
  itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
    FormControl<ReactiveSomeWiredNameFormArrayBuilderT> control,
  )?
  controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSomeWiredNameForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<ReactiveSomeWiredNameFormArrayBuilderT>(
      formControl: formControl ?? control?.call(formModel),
      builder: builder != null
          ? (context, itemList) => builder((
              context: context,
              itemList: itemList,
              formModel: formModel,
            ))
          : null,
      itemBuilder: (context, i, control, item) => itemBuilder((
        context: context,
        i: i,
        control: control,
        item: item,
        formModel: formModel,
      )),
      emptyBuilder: emptyBuilder,
      controlFilter: controlFilter,
    );
  }
}

class ReactiveSomeWiredNameFormFormGroupArrayBuilder<
  ReactiveSomeWiredNameFormFormGroupArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveSomeWiredNameFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  }) : assert(
         extended != null || getExtended != null,
         "You have to specify `control` or `formControl`!",
       ),
       super(key: key);

  final ExtendedControl<
    List<Map<String, Object?>?>,
    List<ReactiveSomeWiredNameFormFormGroupArrayBuilderT>
  >?
  extended;

  final ExtendedControl<
    List<Map<String, Object?>?>,
    List<ReactiveSomeWiredNameFormFormGroupArrayBuilderT>
  >
  Function(SomeWiredNameForm formModel)?
  getExtended;

  final Widget Function(
    BuildContext context,
    List<Widget> itemList,
    SomeWiredNameForm formModel,
  )?
  builder;

  final Widget Function(
    BuildContext context,
    int i,
    ReactiveSomeWiredNameFormFormGroupArrayBuilderT? item,
    SomeWiredNameForm formModel,
  )
  itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSomeWiredNameForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ??
                    <ReactiveSomeWiredNameFormFormGroupArrayBuilderT>[])
                .asMap()
                .map(
                  (i, item) =>
                      MapEntry(i, itemBuilder(context, i, item, formModel)),
                )
                .values
                .toList();

        return builder?.call(context, itemList, formModel) ??
            Column(children: itemList);
      },
    );
  }
}
