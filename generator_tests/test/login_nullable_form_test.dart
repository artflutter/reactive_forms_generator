@Timeout(Duration(seconds: 145))

import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with simple nullable types',
      () async {
        return testGenerator(
          model: r'''
            import 'package:example/helpers.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            @ReactiveFormAnnotation()
            class LoginNullable {
              final String? email;
            
              final String? password;
            
              final bool? rememberMe;
            
              final String? theme;
            
              final UserMode? mode;
            
              final int? timeout;
            
              final double? height;
            
              LoginNullable({
                @FormControlAnnotation() this.email,
                @FormControlAnnotation() this.password,
                @FormControlAnnotation() this.rememberMe,
                @FormControlAnnotation() this.theme,
                @FormControlAnnotation() this.mode,
                @FormControlAnnotation() this.timeout,
                @FormControlAnnotation() this.height,
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
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'dart:core';
import 'login.dart';

class ReactiveLoginNullableFormConsumer extends StatelessWidget {
  ReactiveLoginNullableFormConsumer(
      {Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, LoginNullableForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginNullableForm.of(context);

    if (formModel is! LoginNullableForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
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

  String emailControlPath() => pathBuilder(emailControlName);
  String passwordControlPath() => pathBuilder(passwordControlName);
  String rememberMeControlPath() => pathBuilder(rememberMeControlName);
  String themeControlPath() => pathBuilder(themeControlName);
  String modeControlPath() => pathBuilder(modeControlName);
  String timeoutControlPath() => pathBuilder(timeoutControlName);
  String heightControlPath() => pathBuilder(heightControlName);
  String? get emailValue => emailControl.value;
  String? get passwordValue => passwordControl.value;
  bool? get rememberMeValue => rememberMeControl.value;
  String? get themeValue => themeControl.value;
  dynamic get modeValue => modeControl.value as dynamic;
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
  void emailRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(emailControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void passwordRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(passwordControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void rememberMeRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(rememberMeControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void themeRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(themeControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void modeRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(modeControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void timeoutRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(timeoutControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void heightRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(heightControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void emailValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      emailControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void passwordValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      passwordControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void rememberMeValueUpdate(bool? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      rememberMeControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void themeValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      themeControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void modeValueUpdate(dynamic value,
          {bool updateParent = true, bool emitEvent = true}) =>
      modeControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void timeoutValueUpdate(int? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      timeoutControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void heightValueUpdate(double? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      heightControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void emailValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      emailControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void passwordValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      passwordControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void rememberMeValuePatch(bool? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      rememberMeControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void themeValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      themeControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void modeValuePatch(dynamic value,
          {bool updateParent = true, bool emitEvent = true}) =>
      modeControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void timeoutValuePatch(int? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      timeoutControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void heightValuePatch(double? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      heightControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void emailValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void passwordValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      passwordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void rememberMeValueReset(bool? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      rememberMeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void themeValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      themeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void modeValueReset(dynamic value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      modeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void timeoutValueReset(int? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      timeoutControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void heightValueReset(double? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      heightControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;
  FormControl<bool> get rememberMeControl =>
      form.control(rememberMeControlPath()) as FormControl<bool>;
  FormControl<String> get themeControl =>
      form.control(themeControlPath()) as FormControl<String>;
  FormControl<dynamic> get modeControl =>
      form.control(modeControlPath()) as FormControl<dynamic>;
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
  void updateValue(LoginNullable value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          LoginNullableForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(LoginNullable value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: LoginNullableForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: this.formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
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
        modeControlName: FormControl<dynamic>(
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
''';
