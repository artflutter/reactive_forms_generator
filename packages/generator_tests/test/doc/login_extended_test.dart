@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'login_extended';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with simple non-nullable types',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms/src/validators/required_validator.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            class AllFieldsRequired extends Validator<dynamic> {
              const AllFieldsRequired() : super();
            
              @override
              Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
                return null;
              }
            }
            
            class UniqueEmailAsyncValidator extends AsyncValidator<dynamic> {
              const UniqueEmailAsyncValidator() : super();
            
              @override
              Future<Map<String, dynamic>?> validate(
                  AbstractControl<dynamic> control) async {
              }
            }
            
            enum UserMode { user, admin }
          
            @Rf()
            @RfGroup(
              validators: [AllFieldsRequired()],
            )
            class LoginExtended {
              final String email;
            
              final String password;
            
              final bool rememberMe;
            
              final String theme;
            
              final UserMode mode;
            
              final int timeout;
            
              final double height;
            
              final String? unAnnotated;
              final List<int> someIntList;
            
              LoginExtended({
                @RfControl(
                  validators: [RequiredValidator()],
                  asyncValidators: [UniqueEmailAsyncValidator()],
                )
                this.email = '',
                @RfControl(
                  validators: [RequiredValidator()],
                )
                required this.password,
                @RfControl(
                  validators: [RequiredValidator()],
                )
                required this.rememberMe,
                @RfControl(
                  validators: [RequiredValidator()],
                )
                required this.theme,
                @RfControl(
                  validators: [RequiredValidator()],
                )
                required this.mode,
                @RfControl(
                  validators: [RequiredValidator()],
                )
                required this.timeout,
                @RfControl(
                  validators: [RequiredValidator()],
                )
                required this.height,
                this.unAnnotated,
                this.someIntList = const [],
              });
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
// ignore_for_file:

part of 'login_extended.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveLoginExtendedFormConsumer extends StatelessWidget {
  const ReactiveLoginExtendedFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, LoginExtendedForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginExtendedForm.of(context);

    if (formModel is! LoginExtendedForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class LoginExtendedFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const LoginExtendedFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final LoginExtendedForm form;
}

class ReactiveLoginExtendedForm extends StatelessWidget {
  const ReactiveLoginExtendedForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final LoginExtendedForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static LoginExtendedForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              LoginExtendedFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        LoginExtendedFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as LoginExtendedFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return LoginExtendedFormInheritedStreamer(
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

extension ReactiveReactiveLoginExtendedFormExt on BuildContext {
  LoginExtendedForm? loginExtendedFormWatch() =>
      ReactiveLoginExtendedForm.of(this);

  LoginExtendedForm? loginExtendedFormRead() =>
      ReactiveLoginExtendedForm.of(this, listen: false);
}

class LoginExtendedFormBuilder extends StatefulWidget {
  const LoginExtendedFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final LoginExtended? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, LoginExtendedForm formModel, Widget? child) builder;

  final void Function(BuildContext context, LoginExtendedForm formModel)?
      initState;

  @override
  _LoginExtendedFormBuilderState createState() =>
      _LoginExtendedFormBuilderState();
}

class _LoginExtendedFormBuilderState extends State<LoginExtendedFormBuilder> {
  late LoginExtendedForm _formModel;

  @override
  void initState() {
    _formModel =
        LoginExtendedForm(LoginExtendedForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant LoginExtendedFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveLoginExtendedForm(
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

/// Similar to the LoginExtendedFormBuilder but opts out of automatic form lifecycle
/// management.
///
/// See `LoginExtendedFormBuilder.initState` and `LoginExtendedFormBuilder.dispose` for examples
/// of initializing/disposing the formModel.
class LoginExtendedFormModelBuilder extends StatefulWidget {
  const LoginExtendedFormModelBuilder({
    Key? key,
    required this.formModel,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final LoginExtendedForm formModel;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, LoginExtendedForm formModel, Widget? child) builder;

  final void Function(BuildContext context, LoginExtendedForm formModel)?
      initState;

  @override
  _LoginExtendedFormModelBuilderState createState() =>
      _LoginExtendedFormModelBuilderState();
}

class _LoginExtendedFormModelBuilderState
    extends State<LoginExtendedFormModelBuilder> {
  late LoginExtendedForm _formModel;

  @override
  void initState() {
    super.initState();

    _formModel = widget.formModel;

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);
  }

  @override
  void didUpdateWidget(covariant LoginExtendedFormModelBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.formModel != oldWidget.formModel) {
      _formModel = widget.formModel;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveLoginExtendedForm(
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

class LoginExtendedForm implements FormModel<LoginExtended> {
  LoginExtendedForm(
    this.form,
    this.path,
  );

  static const String emailControlName = "email";

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

  String passwordControlPath() => pathBuilder(passwordControlName);

  String rememberMeControlPath() => pathBuilder(rememberMeControlName);

  String themeControlPath() => pathBuilder(themeControlName);

  String modeControlPath() => pathBuilder(modeControlName);

  String timeoutControlPath() => pathBuilder(timeoutControlName);

  String heightControlPath() => pathBuilder(heightControlName);

  String unAnnotatedControlPath() => pathBuilder(unAnnotatedControlName);

  String someIntListControlPath() => pathBuilder(someIntListControlName);

  String get _emailValue => emailControl.value ?? "";

  String get _passwordValue => passwordControl.value as String;

  bool get _rememberMeValue => rememberMeControl.value as bool;

  String get _themeValue => themeControl.value as String;

  UserMode get _modeValue => modeControl.value as UserMode;

  int get _timeoutValue => timeoutControl.value as int;

  double get _heightValue => heightControl.value as double;

  String? get _unAnnotatedValue => unAnnotatedControl?.value;

  List<int> get _someIntListValue => someIntListControl.value ?? [];

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

  bool get containsRememberMe {
    try {
      form.control(rememberMeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTheme {
    try {
      form.control(themeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMode {
    try {
      form.control(modeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTimeout {
    try {
      form.control(timeoutControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHeight {
    try {
      form.control(heightControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsUnAnnotated {
    try {
      form.control(unAnnotatedControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSomeIntList {
    try {
      form.control(someIntListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get emailErrors => emailControl.errors;

  Map<String, Object> get passwordErrors => passwordControl.errors;

  Map<String, Object> get rememberMeErrors => rememberMeControl.errors;

  Map<String, Object> get themeErrors => themeControl.errors;

  Map<String, Object> get modeErrors => modeControl.errors;

  Map<String, Object> get timeoutErrors => timeoutControl.errors;

  Map<String, Object> get heightErrors => heightControl.errors;

  Map<String, Object>? get unAnnotatedErrors => unAnnotatedControl?.errors;

  Map<String, Object> get someIntListErrors => someIntListControl.errors;

  void get emailFocus => form.focus(emailControlPath());

  void get passwordFocus => form.focus(passwordControlPath());

  void get rememberMeFocus => form.focus(rememberMeControlPath());

  void get themeFocus => form.focus(themeControlPath());

  void get modeFocus => form.focus(modeControlPath());

  void get timeoutFocus => form.focus(timeoutControlPath());

  void get heightFocus => form.focus(heightControlPath());

  void get unAnnotatedFocus => form.focus(unAnnotatedControlPath());

  void get someIntListFocus => form.focus(someIntListControlPath());

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
    unAnnotatedControl?.updateValue(value,
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
    unAnnotatedControl?.patchValue(value,
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
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void passwordValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void rememberMeValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      rememberMeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void themeValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      themeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void modeValueReset(
    UserMode value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      modeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void timeoutValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      timeoutControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void heightValueReset(
    double value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      heightControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void unAnnotatedValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      unAnnotatedControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void someIntListValueReset(
    List<int> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      someIntListControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;

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

  FormControl<String>? get unAnnotatedControl => containsUnAnnotated
      ? form.control(unAnnotatedControlPath()) as FormControl<String>?
      : null;

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
      unAnnotatedControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      unAnnotatedControl?.markAsEnabled(
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
  LoginExtended get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'LoginExtendedForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return LoginExtended(
        email: _emailValue,
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
  void submit({
    required void Function(LoginExtended model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    LoginExtended? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(LoginExtendedForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    LoginExtended? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(LoginExtended? loginExtended) => FormGroup({
        emailControlName: FormControl<String>(
            value: loginExtended?.email,
            validators: [RequiredValidator()],
            asyncValidators: [UniqueEmailAsyncValidator()],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: loginExtended?.password,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        rememberMeControlName: FormControl<bool>(
            value: loginExtended?.rememberMe,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        themeControlName: FormControl<String>(
            value: loginExtended?.theme,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        modeControlName: FormControl<UserMode>(
            value: loginExtended?.mode,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        timeoutControlName: FormControl<int>(
            value: loginExtended?.timeout,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        heightControlName: FormControl<double>(
            value: loginExtended?.height,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        unAnnotatedControlName: FormControl<String>(
            value: loginExtended?.unAnnotated,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        someIntListControlName: FormControl<List<int>>(
            value: loginExtended?.someIntList,
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

class ReactiveLoginExtendedFormArrayBuilder<
    ReactiveLoginExtendedFormArrayBuilderT> extends StatelessWidget {
  const ReactiveLoginExtendedFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveLoginExtendedFormArrayBuilderT>? formControl;

  final FormArray<ReactiveLoginExtendedFormArrayBuilderT>? Function(
      LoginExtendedForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      LoginExtendedForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveLoginExtendedFormArrayBuilderT? item,
      LoginExtendedForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginExtendedForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveLoginExtendedFormArrayBuilderT>(
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

class ReactiveLoginExtendedFormFormGroupArrayBuilder<
    ReactiveLoginExtendedFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveLoginExtendedFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveLoginExtendedFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveLoginExtendedFormFormGroupArrayBuilderT>>
      Function(LoginExtendedForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      LoginExtendedForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveLoginExtendedFormFormGroupArrayBuilderT? item,
      LoginExtendedForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginExtendedForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveLoginExtendedFormFormGroupArrayBuilderT>[])
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
