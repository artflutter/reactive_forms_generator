// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_extended_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveLoginExtendedOFormConsumer extends StatelessWidget {
  const ReactiveLoginExtendedOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, LoginExtendedOForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginExtendedOForm.of(context);

    if (formModel is! LoginExtendedOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class LoginExtendedOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const LoginExtendedOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final LoginExtendedOForm form;
}

class ReactiveLoginExtendedOForm extends StatelessWidget {
  const ReactiveLoginExtendedOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final LoginExtendedOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static LoginExtendedOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              LoginExtendedOFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        LoginExtendedOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as LoginExtendedOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return LoginExtendedOFormInheritedStreamer(
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

extension ReactiveReactiveLoginExtendedOFormExt on BuildContext {
  LoginExtendedOForm? loginExtendedOFormWatch() =>
      ReactiveLoginExtendedOForm.of(this);

  LoginExtendedOForm? loginExtendedOFormRead() =>
      ReactiveLoginExtendedOForm.of(this, listen: false);
}

class LoginExtendedOFormBuilder extends StatefulWidget {
  const LoginExtendedOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final LoginExtendedO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
          BuildContext context, LoginExtendedOForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, LoginExtendedOForm formModel)?
      initState;

  @override
  _LoginExtendedOFormBuilderState createState() =>
      _LoginExtendedOFormBuilderState();
}

class _LoginExtendedOFormBuilderState extends State<LoginExtendedOFormBuilder> {
  late LoginExtendedOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        LoginExtendedOForm(LoginExtendedOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logLoginExtendedOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant LoginExtendedOFormBuilder oldWidget) {
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
    return ReactiveLoginExtendedOForm(
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

final _logLoginExtendedOForm = Logger.detached('LoginExtendedOForm');

class LoginExtendedOForm
    implements FormModel<LoginExtendedO, LoginExtendedOOutput> {
  LoginExtendedOForm(
    this.form,
    this.path,
  );

  static const String emailControlName = "email";

  static const String email2ControlName = "email2";

  static const String passwordControlName = "password";

  static const String rememberMeControlName = "rememberMe";

  static const String themeControlName = "theme";

  static const String modeControlName = "mode";

  static const String timeoutControlName = "timeout";

  static const String heightControlName = "height";

  static const String unAnnotatedControlName = "unAnnotated";

  static const String someIntListControlName = "someIntList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String emailControlPath() => pathBuilder(emailControlName);

  String email2ControlPath() => pathBuilder(email2ControlName);

  String passwordControlPath() => pathBuilder(passwordControlName);

  String rememberMeControlPath() => pathBuilder(rememberMeControlName);

  String themeControlPath() => pathBuilder(themeControlName);

  String modeControlPath() => pathBuilder(modeControlName);

  String timeoutControlPath() => pathBuilder(timeoutControlName);

  String heightControlPath() => pathBuilder(heightControlName);

  String unAnnotatedControlPath() => pathBuilder(unAnnotatedControlName);

  String someIntListControlPath() => pathBuilder(someIntListControlName);

  String get _emailValue => emailControl.value as String;

  String get _email2Value => email2Control.value ?? "";

  String get _passwordValue => passwordControl.value as String;

  bool get _rememberMeValue => rememberMeControl.value as bool;

  String get _themeValue => themeControl.value as String;

  UserMode get _modeValue => modeControl.value as UserMode;

  int get _timeoutValue => timeoutControl.value as int;

  double get _heightValue => heightControl.value as double;

  String? get _unAnnotatedValue => unAnnotatedControl.value;

  List<int> get _someIntListValue => someIntListControl.value ?? const [];

  String? get _emailRawValue => emailControl.value;

  String get _email2RawValue => email2Control.value ?? "";

  String get _passwordRawValue => passwordControl.value as String;

  bool get _rememberMeRawValue => rememberMeControl.value as bool;

  String get _themeRawValue => themeControl.value as String;

  UserMode get _modeRawValue => modeControl.value as UserMode;

  int get _timeoutRawValue => timeoutControl.value as int;

  double get _heightRawValue => heightControl.value as double;

  String? get _unAnnotatedRawValue => unAnnotatedControl.value;

  List<int> get _someIntListRawValue => someIntListControl.value ?? const [];

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
  bool get containsEmail2 {
    try {
      form.control(email2ControlPath());
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

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsRememberMe {
    try {
      form.control(rememberMeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsTheme {
    try {
      form.control(themeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsMode {
    try {
      form.control(modeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsTimeout {
    try {
      form.control(timeoutControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsHeight {
    try {
      form.control(heightControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsUnAnnotated {
    try {
      form.control(unAnnotatedControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsSomeIntList {
    try {
      form.control(someIntListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get emailErrors => emailControl.errors;

  Map<String, Object> get email2Errors => email2Control.errors;

  Map<String, Object> get passwordErrors => passwordControl.errors;

  Map<String, Object> get rememberMeErrors => rememberMeControl.errors;

  Map<String, Object> get themeErrors => themeControl.errors;

  Map<String, Object> get modeErrors => modeControl.errors;

  Map<String, Object> get timeoutErrors => timeoutControl.errors;

  Map<String, Object> get heightErrors => heightControl.errors;

  Map<String, Object>? get unAnnotatedErrors => unAnnotatedControl.errors;

  Map<String, Object> get someIntListErrors => someIntListControl.errors;

  void get emailFocus => form.focus(emailControlPath());

  void get email2Focus => form.focus(email2ControlPath());

  void get passwordFocus => form.focus(passwordControlPath());

  void get rememberMeFocus => form.focus(rememberMeControlPath());

  void get themeFocus => form.focus(themeControlPath());

  void get modeFocus => form.focus(modeControlPath());

  void get timeoutFocus => form.focus(timeoutControlPath());

  void get heightFocus => form.focus(heightControlPath());

  void get unAnnotatedFocus => form.focus(unAnnotatedControlPath());

  void get someIntListFocus => form.focus(someIntListControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void emailRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void unAnnotatedRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsUnAnnotated) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          unAnnotatedControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            unAnnotatedControlName,
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
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void email2ValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    email2Control.updateValue(value,
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

  void rememberMeValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    rememberMeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void themeValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    themeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void modeValueUpdate(
    UserMode value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    modeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void timeoutValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timeoutControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightValueUpdate(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    heightControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void unAnnotatedValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    unAnnotatedControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void someIntListValueUpdate(
    List<int> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    someIntListControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void email2ValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    email2Control.patchValue(value,
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

  void rememberMeValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    rememberMeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void themeValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    themeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void modeValuePatch(
    UserMode value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    modeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void timeoutValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timeoutControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightValuePatch(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    heightControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void unAnnotatedValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    unAnnotatedControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void someIntListValuePatch(
    List<int> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    someIntListControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueReset(
    String? value, {
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

  void email2ValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      email2Control.reset(
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

  void rememberMeValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      rememberMeControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void themeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      themeControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void modeValueReset(
    UserMode value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      modeControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void timeoutValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      timeoutControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void heightValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      heightControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void unAnnotatedValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      unAnnotatedControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void someIntListValueReset(
    List<int> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      someIntListControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;

  FormControl<String> get email2Control =>
      form.control(email2ControlPath()) as FormControl<String>;

  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;

  FormControl<bool> get rememberMeControl =>
      form.control(rememberMeControlPath()) as FormControl<bool>;

  FormControl<String> get themeControl =>
      form.control(themeControlPath()) as FormControl<String>;

  FormControl<UserMode> get modeControl =>
      form.control(modeControlPath()) as FormControl<UserMode>;

  FormControl<int> get timeoutControl =>
      form.control(timeoutControlPath()) as FormControl<int>;

  FormControl<double> get heightControl =>
      form.control(heightControlPath()) as FormControl<double>;

  FormControl<String> get unAnnotatedControl =>
      form.control(unAnnotatedControlPath()) as FormControl<String>;

  FormControl<List<int>> get someIntListControl =>
      form.control(someIntListControlPath()) as FormControl<List<int>>;

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

  void email2SetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      email2Control.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      email2Control.markAsEnabled(
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

  void rememberMeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      rememberMeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      rememberMeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void themeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      themeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      themeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void modeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      modeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      modeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void timeoutSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      timeoutControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      timeoutControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void heightSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      heightControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      heightControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void unAnnotatedSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      unAnnotatedControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      unAnnotatedControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void someIntListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      someIntListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      someIntListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  LoginExtendedOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logLoginExtendedOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return LoginExtendedOOutput(
        email: _emailValue,
        email2: _email2Value,
        password: _passwordValue,
        rememberMe: _rememberMeValue,
        theme: _themeValue,
        mode: _modeValue,
        timeout: _timeoutValue,
        height: _heightValue,
        unAnnotated: _unAnnotatedValue,
        someIntList: _someIntListValue);
  }

  @override
  LoginExtendedO get rawModel {
    return LoginExtendedO(
        email: _emailRawValue,
        email2: _email2RawValue,
        password: _passwordRawValue,
        rememberMe: _rememberMeRawValue,
        theme: _themeRawValue,
        mode: _modeRawValue,
        timeout: _timeoutRawValue,
        height: _heightRawValue,
        unAnnotated: _unAnnotatedRawValue,
        someIntList: _someIntListRawValue);
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
  bool equalsTo(LoginExtendedO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      LoginExtendedOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(LoginExtendedOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logLoginExtendedOForm.info('Errors');
      _logLoginExtendedOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    LoginExtendedO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(LoginExtendedOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    LoginExtendedO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(LoginExtendedO? loginExtendedO) => FormGroup({
        emailControlName: FormControl<String>(
            value: loginExtendedO?.email,
            validators: [RequiredValidator()],
            asyncValidators: [UniqueEmailAsyncValidator()],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        email2ControlName: FormControl<String>(
            value: loginExtendedO?.email2,
            validators: [RequiredValidator()],
            asyncValidators: [UniqueEmailAsyncValidator()],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: loginExtendedO?.password,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        rememberMeControlName: FormControl<bool>(
            value: loginExtendedO?.rememberMe,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        themeControlName: FormControl<String>(
            value: loginExtendedO?.theme,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        modeControlName: FormControl<UserMode>(
            value: loginExtendedO?.mode,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        timeoutControlName: FormControl<int>(
            value: loginExtendedO?.timeout,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        heightControlName: FormControl<double>(
            value: loginExtendedO?.height,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        unAnnotatedControlName: FormControl<String>(
            value: loginExtendedO?.unAnnotated,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        someIntListControlName: FormControl<List<int>>(
            value: loginExtendedO?.someIntList,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [
            AllFieldsRequired()
          ],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

@Rf(output: true)
@RfGroup(validators: [AllFieldsRequired()])
class LoginExtendedOOutput {
  final String email;
  final String email2;
  final String password;
  final bool rememberMe;
  final String theme;
  final UserMode mode;
  final int timeout;
  final double height;
  final String? unAnnotated;
  final List<int> someIntList;
  LoginExtendedOOutput(
      {@RfControl(
          validators: [RequiredValidator()],
          asyncValidators: [UniqueEmailAsyncValidator()])
      required this.email,
      @RfControl(
          validators: [RequiredValidator()],
          asyncValidators: [UniqueEmailAsyncValidator()])
      required this.email2,
      @RfControl(validators: [RequiredValidator()]) required this.password,
      @RfControl(validators: [RequiredValidator()]) required this.rememberMe,
      @RfControl(validators: [RequiredValidator()]) required this.theme,
      @RfControl(validators: [RequiredValidator()]) required this.mode,
      @RfControl(validators: [RequiredValidator()]) required this.timeout,
      @RfControl(validators: [RequiredValidator()]) required this.height,
      this.unAnnotated,
      this.someIntList = const []});
}

class ReactiveLoginExtendedOFormArrayBuilder<
    ReactiveLoginExtendedOFormArrayBuilderT> extends StatelessWidget {
  const ReactiveLoginExtendedOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveLoginExtendedOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveLoginExtendedOFormArrayBuilderT>? Function(
      LoginExtendedOForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      LoginExtendedOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveLoginExtendedOFormArrayBuilderT> control,
      ReactiveLoginExtendedOFormArrayBuilderT? item,
      LoginExtendedOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginExtendedOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveLoginExtendedOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  formArray.controls[i]
                      as FormControl<ReactiveLoginExtendedOFormArrayBuilderT>,
                  item,
                  formModel,
                ),
              );
            })
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

class ReactiveLoginExtendedOFormFormGroupArrayBuilder<
    ReactiveLoginExtendedOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveLoginExtendedOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveLoginExtendedOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveLoginExtendedOFormFormGroupArrayBuilderT>>
      Function(LoginExtendedOForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      LoginExtendedOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveLoginExtendedOFormFormGroupArrayBuilderT? item,
      LoginExtendedOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginExtendedOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveLoginExtendedOFormFormGroupArrayBuilderT>[])
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
