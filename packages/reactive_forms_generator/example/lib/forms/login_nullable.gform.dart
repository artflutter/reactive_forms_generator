// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'dart:core';
import 'login_nullable.dart';

class ReactiveLoginNullableFormConsumer extends StatelessWidget {
  ReactiveLoginNullableFormConsumer(
      {Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, LoginNullableForm formGroup, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final form = ReactiveLoginNullableForm.of(context);

    if (form is! LoginNullableForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, form, child);
  }
}

class LoginNullableFormInheritedStreamer extends InheritedStreamer<dynamic> {
  LoginNullableFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final LoginNullableForm form;
}

class ReactiveLoginNullableForm extends StatelessWidget {
  ReactiveLoginNullableForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final LoginNullableForm form;

  final WillPopCallback? onWillPop;

  static LoginNullableForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              LoginNullableFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        LoginNullableFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as LoginNullableFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return LoginNullableFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class LoginNullableFormBuilder extends StatefulWidget {
  LoginNullableFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final LoginNullable model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, LoginNullableForm formModel, Widget? child) builder;

  @override
  _LoginNullableFormBuilderState createState() =>
      _LoginNullableFormBuilderState();
}

class _LoginNullableFormBuilderState extends State<LoginNullableFormBuilder> {
  late FormGroup _form;

  late LoginNullableForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = LoginNullableForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveLoginNullableForm(
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

class LoginNullableForm {
  LoginNullableForm(this.loginNullable, this.form, this.path) {}

  static String emailControlName = "email";

  static String passwordControlName = "password";

  static String rememberMeControlName = "rememberMe";

  static String themeControlName = "theme";

  static String modeControlName = "mode";

  static String timeoutControlName = "timeout";

  static String heightControlName = "height";

  final LoginNullable loginNullable;

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
  String? get emailValue => emailControl.value;
  String? get passwordValue => passwordControl.value;
  bool? get rememberMeValue => rememberMeControl.value;
  String? get themeValue => themeControl.value;
  UserMode? get modeValue => modeControl.value;
  int? get timeoutValue => timeoutControl.value;
  double? get heightValue => heightControl.value;
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
  LoginNullable get model => LoginNullable(
      email: emailValue,
      password: passwordValue,
      rememberMe: rememberMeValue,
      theme: themeValue,
      mode: modeValue,
      timeout: timeoutValue,
      height: heightValue);
  FormGroup formElements() => FormGroup({
        emailControlName: FormControl<String>(
            value: loginNullable.email,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: loginNullable.password,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        rememberMeControlName: FormControl<bool>(
            value: loginNullable.rememberMe,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        themeControlName: FormControl<String>(
            value: loginNullable.theme,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        modeControlName: FormControl<UserMode>(
            value: loginNullable.mode,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        timeoutControlName: FormControl<int>(
            value: loginNullable.timeout,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        heightControlName: FormControl<double>(
            value: loginNullable.height,
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
