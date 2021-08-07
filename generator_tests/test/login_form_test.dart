import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with simple non-nullable types',
      () async {
        return testGenerator(
          model: r'''
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
              return Validators.required(control);
            }
            
            enum UserMode { user, admin }
            
            @ReactiveFormAnnotation()
            class Login {
              @FormControlAnnotation(
                validators: const [
                  requiredValidator,
                ],
              )
              final String email;
            
              @FormControlAnnotation(
                validators: const [
                  requiredValidator,
                ],
              )
              final String password;
            
              @FormControlAnnotation(
                validators: const [
                  requiredValidator,
                ],
              )
              final bool rememberMe;
            
              @FormControlAnnotation(
                validators: const [
                  requiredValidator,
                ],
              )
              final String theme;
            
              @FormControlAnnotation(
                validators: const [
                  requiredValidator,
                ],
              )
              final UserMode mode;
            
              @FormControlAnnotation(
                validators: const [
                  requiredValidator,
                ],
              )
              final int timeout;
            
              @FormControlAnnotation(
                validators: const [
                  requiredValidator,
                ],
              )
              final double height;
            
              Login({
                this.email = 'default@e.mail',
                required this.password,
                required this.rememberMe,
                required this.theme,
                required this.mode,
                required this.timeout,
                required this.height,
              });
            }
          ''',
          generatedFile: generatedFile,
        );
      },
    );
  });
}

const generatedFile = r'''// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'dart:core';
import 'login.dart';

class ReactiveLoginFormConsumer extends StatelessWidget {
  ReactiveLoginFormConsumer({Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, LoginForm formGroup, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final form = ReactiveLoginForm.of(context);

    if (form is! LoginForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, form, child);
  }
}

class LoginFormInheritedStreamer extends InheritedStreamer<dynamic> {
  LoginFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final LoginForm form;
}

class ReactiveLoginForm extends StatelessWidget {
  ReactiveLoginForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final LoginForm form;

  final WillPopCallback? onWillPop;

  static LoginForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<LoginFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<LoginFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as LoginFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return LoginFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class LoginFormBuilder extends StatefulWidget {
  LoginFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final Login model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, LoginForm formModel, Widget? child) builder;

  @override
  _LoginFormBuilderState createState() => _LoginFormBuilderState();
}

class _LoginFormBuilderState extends State<LoginFormBuilder> {
  late FormGroup _form;

  late LoginForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = LoginForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveLoginForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveForm(
        formGroup: _form,
        onWillPop: widget.onWillPop,
        child: widget.builder(context, _formModel, widget.child),
      ),
    );
  }
}

class LoginForm {
  LoginForm(this.login, this.form, this.path) {}

  static String emailControlName = "email";

  static String passwordControlName = "password";

  static String rememberMeControlName = "rememberMe";

  static String themeControlName = "theme";

  static String modeControlName = "mode";

  static String timeoutControlName = "timeout";

  static String heightControlName = "height";

  final Login login;

  final FormGroup form;

  final String? path;

  String emailControlPath() =>
      [path, emailControlName].whereType<String>().join(".");
  String passwordControlPath() =>
      [path, passwordControlName].whereType<String>().join(".");
  String rememberMeControlPath() =>
      [path, rememberMeControlName].whereType<String>().join(".");
  String themeControlPath() =>
      [path, themeControlName].whereType<String>().join(".");
  String modeControlPath() =>
      [path, modeControlName].whereType<String>().join(".");
  String timeoutControlPath() =>
      [path, timeoutControlName].whereType<String>().join(".");
  String heightControlPath() =>
      [path, heightControlName].whereType<String>().join(".");
  String get emailValue => emailControl.value as String;
  String get passwordValue => passwordControl.value as String;
  bool get rememberMeValue => rememberMeControl.value as bool;
  String get themeValue => themeControl.value as String;
  UserMode get modeValue => modeControl.value as UserMode;
  int get timeoutValue => timeoutControl.value as int;
  double get heightValue => heightControl.value as double;
  bool get containsEmail => form.contains(emailControlPath());
  bool get containsPassword => form.contains(passwordControlPath());
  bool get containsRememberMe => form.contains(rememberMeControlPath());
  bool get containsTheme => form.contains(themeControlPath());
  bool get containsMode => form.contains(modeControlPath());
  bool get containsTimeout => form.contains(timeoutControlPath());
  bool get containsHeight => form.contains(heightControlPath());
  Object? get emailErrors => emailControl.errors;
  Object? get passwordErrors => passwordControl.errors;
  Object? get rememberMeErrors => rememberMeControl.errors;
  Object? get themeErrors => themeControl.errors;
  Object? get modeErrors => modeControl.errors;
  Object? get timeoutErrors => timeoutControl.errors;
  Object? get heightErrors => heightControl.errors;
  void get emailFocus => form.focus(emailControlPath());
  void get passwordFocus => form.focus(passwordControlPath());
  void get rememberMeFocus => form.focus(rememberMeControlPath());
  void get themeFocus => form.focus(themeControlPath());
  void get modeFocus => form.focus(modeControlPath());
  void get timeoutFocus => form.focus(timeoutControlPath());
  void get heightFocus => form.focus(heightControlPath());
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
  Login get model => Login(
      email: emailValue,
      password: passwordValue,
      rememberMe: rememberMeValue,
      theme: themeValue,
      mode: modeValue,
      timeout: timeoutValue,
      height: heightValue);
  FormGroup formElements() => FormGroup({
        emailControlName: FormControl<String>(
            value: login.email,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: login.password,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        rememberMeControlName: FormControl<bool>(
            value: login.rememberMe,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        themeControlName: FormControl<String>(
            value: login.theme,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        modeControlName: FormControl<UserMode>(
            value: login.mode,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        timeoutControlName: FormControl<int>(
            value: login.timeout,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        heightControlName: FormControl<double>(
            value: login.height,
            validators: [requiredValidator],
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
''';
