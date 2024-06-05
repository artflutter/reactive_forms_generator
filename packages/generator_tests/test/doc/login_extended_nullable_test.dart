@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'login_extended_nullable';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with simple nullable types',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            enum UserMode { user, admin }
            
            @Rf()
            class LoginExtendedNullable {
              final String? email;
            
              final String? password;
            
              final bool? rememberMe;
            
              final String? theme;
            
              final UserMode? mode;
            
              final int? timeout;
            
              final double? height;
            
              LoginExtendedNullable({
                @RfControl<String>(validators: []) this.email,
                @RfControl() this.password,
                @RfControl<bool>() this.rememberMe,
                @RfControl<String>() this.theme,
                @RfControl<UserMode>() this.mode,
                @RfControl<int>() this.timeout,
                @RfControl<double>() this.height,
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

part of 'login_extended_nullable.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveLoginExtendedNullableFormConsumer extends StatelessWidget {
  const ReactiveLoginExtendedNullableFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      LoginExtendedNullableForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginExtendedNullableForm.of(context);

    if (formModel is! LoginExtendedNullableForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class LoginExtendedNullableFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const LoginExtendedNullableFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final LoginExtendedNullableForm form;
}

class ReactiveLoginExtendedNullableForm extends StatelessWidget {
  const ReactiveLoginExtendedNullableForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final LoginExtendedNullableForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static LoginExtendedNullableForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              LoginExtendedNullableFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        LoginExtendedNullableFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as LoginExtendedNullableFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return LoginExtendedNullableFormInheritedStreamer(
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

extension ReactiveReactiveLoginExtendedNullableFormExt on BuildContext {
  LoginExtendedNullableForm? loginExtendedNullableFormWatch() =>
      ReactiveLoginExtendedNullableForm.of(this);

  LoginExtendedNullableForm? loginExtendedNullableFormRead() =>
      ReactiveLoginExtendedNullableForm.of(this, listen: false);
}

class LoginExtendedNullableFormBuilder extends StatefulWidget {
  const LoginExtendedNullableFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final LoginExtendedNullable? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context,
      LoginExtendedNullableForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, LoginExtendedNullableForm formModel)? initState;

  @override
  _LoginExtendedNullableFormBuilderState createState() =>
      _LoginExtendedNullableFormBuilderState();
}

class _LoginExtendedNullableFormBuilderState
    extends State<LoginExtendedNullableFormBuilder> {
  late LoginExtendedNullableForm _formModel;

  @override
  void initState() {
    _formModel = LoginExtendedNullableForm(
        LoginExtendedNullableForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant LoginExtendedNullableFormBuilder oldWidget) {
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
    return ReactiveLoginExtendedNullableForm(
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

/// Similar to the LoginExtendedNullableFormBuilder but opts out of automatic form lifecycle
/// management.
///
/// See `LoginExtendedNullableFormBuilder.initState` and `LoginExtendedNullableFormBuilder.dispose` for examples
/// of initializing/disposing the formModel.
class LoginExtendedNullableFormModelBuilder extends StatefulWidget {
  const LoginExtendedNullableFormModelBuilder({
    Key? key,
    required this.formModel,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final LoginExtendedNullableForm formModel;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context,
      LoginExtendedNullableForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, LoginExtendedNullableForm formModel)? initState;

  @override
  _LoginExtendedNullableFormModelBuilderState createState() =>
      _LoginExtendedNullableFormModelBuilderState();
}

class _LoginExtendedNullableFormModelBuilderState
    extends State<LoginExtendedNullableFormModelBuilder> {
  late LoginExtendedNullableForm _formModel;

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
  void didUpdateWidget(
      covariant LoginExtendedNullableFormModelBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.formModel != oldWidget.formModel) {
      _formModel = widget.formModel;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveLoginExtendedNullableForm(
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

class LoginExtendedNullableForm implements FormModel<LoginExtendedNullable> {
  LoginExtendedNullableForm(
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

  String? get _emailValue => emailControl?.value;

  String? get _passwordValue => passwordControl?.value;

  bool? get _rememberMeValue => rememberMeControl?.value;

  String? get _themeValue => themeControl?.value;

  UserMode? get _modeValue => modeControl?.value;

  int? get _timeoutValue => timeoutControl?.value;

  double? get _heightValue => heightControl?.value;

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

  Map<String, Object>? get emailErrors => emailControl?.errors;

  Map<String, Object>? get passwordErrors => passwordControl?.errors;

  Map<String, Object>? get rememberMeErrors => rememberMeControl?.errors;

  Map<String, Object>? get themeErrors => themeControl?.errors;

  Map<String, Object>? get modeErrors => modeControl?.errors;

  Map<String, Object>? get timeoutErrors => timeoutControl?.errors;

  Map<String, Object>? get heightErrors => heightControl?.errors;

  void get emailFocus => form.focus(emailControlPath());

  void get passwordFocus => form.focus(passwordControlPath());

  void get rememberMeFocus => form.focus(rememberMeControlPath());

  void get themeFocus => form.focus(themeControlPath());

  void get modeFocus => form.focus(modeControlPath());

  void get timeoutFocus => form.focus(timeoutControlPath());

  void get heightFocus => form.focus(heightControlPath());

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

  void passwordRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  void rememberMeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsRememberMe) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          rememberMeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            rememberMeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void themeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsTheme) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          themeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            themeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void modeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsMode) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          modeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            modeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void timeoutRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsTimeout) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          timeoutControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            timeoutControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void heightRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsHeight) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          heightControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            heightControlName,
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
    emailControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void rememberMeValueUpdate(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    rememberMeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void themeValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    themeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void modeValueUpdate(
    UserMode? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    modeControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void timeoutValueUpdate(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timeoutControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightValueUpdate(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    heightControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    passwordControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void rememberMeValuePatch(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    rememberMeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void themeValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    themeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void modeValuePatch(
    UserMode? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    modeControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void timeoutValuePatch(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timeoutControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightValuePatch(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    heightControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void passwordValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      passwordControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void rememberMeValueReset(
    bool? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      rememberMeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void themeValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      themeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void modeValueReset(
    UserMode? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      modeControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void timeoutValueReset(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      timeoutControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void heightValueReset(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      heightControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String>? get emailControl => containsEmail
      ? form.control(emailControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get passwordControl => containsPassword
      ? form.control(passwordControlPath()) as FormControl<String>?
      : null;

  FormControl<bool>? get rememberMeControl => containsRememberMe
      ? form.control(rememberMeControlPath()) as FormControl<bool>?
      : null;

  FormControl<String>? get themeControl => containsTheme
      ? form.control(themeControlPath()) as FormControl<String>?
      : null;

  FormControl<UserMode>? get modeControl => containsMode
      ? form.control(modeControlPath()) as FormControl<UserMode>?
      : null;

  FormControl<int>? get timeoutControl => containsTimeout
      ? form.control(timeoutControlPath()) as FormControl<int>?
      : null;

  FormControl<double>? get heightControl => containsHeight
      ? form.control(heightControlPath()) as FormControl<double>?
      : null;

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl?.markAsEnabled(
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
      passwordControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      passwordControl?.markAsEnabled(
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
      rememberMeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      rememberMeControl?.markAsEnabled(
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
      themeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      themeControl?.markAsEnabled(
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
      modeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      modeControl?.markAsEnabled(
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
      timeoutControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      timeoutControl?.markAsEnabled(
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
      heightControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      heightControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  LoginExtendedNullable get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'LoginExtendedNullableForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return LoginExtendedNullable(
        email: _emailValue,
        password: _passwordValue,
        rememberMe: _rememberMeValue,
        theme: _themeValue,
        mode: _modeValue,
        timeout: _timeoutValue,
        height: _heightValue);
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
    required void Function(LoginExtendedNullable model) onValid,
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
    LoginExtendedNullable? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(LoginExtendedNullableForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    LoginExtendedNullable? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(LoginExtendedNullable? loginExtendedNullable) =>
      FormGroup({
        emailControlName: FormControl<String>(
            value: loginExtendedNullable?.email,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: loginExtendedNullable?.password,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        rememberMeControlName: FormControl<bool>(
            value: loginExtendedNullable?.rememberMe,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        themeControlName: FormControl<String>(
            value: loginExtendedNullable?.theme,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        modeControlName: FormControl<UserMode>(
            value: loginExtendedNullable?.mode,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        timeoutControlName: FormControl<int>(
            value: loginExtendedNullable?.timeout,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        heightControlName: FormControl<double>(
            value: loginExtendedNullable?.height,
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

class ReactiveLoginExtendedNullableFormArrayBuilder<
    ReactiveLoginExtendedNullableFormArrayBuilderT> extends StatelessWidget {
  const ReactiveLoginExtendedNullableFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveLoginExtendedNullableFormArrayBuilderT>? formControl;

  final FormArray<ReactiveLoginExtendedNullableFormArrayBuilderT>? Function(
      LoginExtendedNullableForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      LoginExtendedNullableForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveLoginExtendedNullableFormArrayBuilderT? item,
      LoginExtendedNullableForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginExtendedNullableForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveLoginExtendedNullableFormArrayBuilderT>(
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

class ReactiveLoginExtendedNullableFormFormGroupArrayBuilder<
        ReactiveLoginExtendedNullableFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactiveLoginExtendedNullableFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveLoginExtendedNullableFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveLoginExtendedNullableFormFormGroupArrayBuilderT>>
      Function(LoginExtendedNullableForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      LoginExtendedNullableForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveLoginExtendedNullableFormFormGroupArrayBuilderT? item,
      LoginExtendedNullableForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginExtendedNullableForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveLoginExtendedNullableFormFormGroupArrayBuilderT>[])
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
