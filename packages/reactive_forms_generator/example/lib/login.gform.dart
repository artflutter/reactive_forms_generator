// GENERATED CODE - DO NOT MODIFY BY HAND

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
    ;
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
  LoginForm(this.login, this.form, this.path) {
    userDataForm = UserDataForm(login.userData, form, 'userData');
  }

  String email = "email";

  String clientId = "clientId";

  String password = "password";

  String userData = "userData";

  String friends = "friends";

  String categories = "categories";

  late UserDataForm userDataForm;

  final Login login;

  final FormGroup form;

  final String? path;

  String emailControlPath() => [path, "email"].whereType<String>().join(".");
  String clientIdControlPath() =>
      [path, "clientId"].whereType<String>().join(".");
  String passwordControlPath() =>
      [path, "password"].whereType<String>().join(".");
  String friendsControlPath() =>
      [path, "friends"].whereType<String>().join(".");
  String categoriesControlPath() =>
      [path, "categories"].whereType<String>().join(".");
  String get emailValue => form.value[emailControlPath()] as String;
  String? get clientIdValue => form.value[clientIdControlPath()] as String?;
  String get passwordValue => form.value[passwordControlPath()] as String;
  List<UserData> get friendsValue =>
      form.value[friendsControlPath()] as List<UserData>;
  List<String> get categoriesValue =>
      form.value[categoriesControlPath()] as List<String>;
  bool get containsEmail => form.contains(emailControlPath());
  bool get containsClientId => form.contains(clientIdControlPath());
  bool get containsPassword => form.contains(passwordControlPath());
  bool get containsFriends => form.contains(friendsControlPath());
  bool get containsCategories => form.contains(categoriesControlPath());
  Object? get emailErrors => form.errors[emailControlPath()];
  Object? get clientIdErrors => form.errors[clientIdControlPath()];
  Object? get passwordErrors => form.errors[passwordControlPath()];
  Object? get friendsErrors => form.errors[friendsControlPath()];
  Object? get categoriesErrors => form.errors[categoriesControlPath()];
  void get emailFocus => form.focus(emailControlPath());
  void get clientIdFocus => form.focus(clientIdControlPath());
  void get passwordFocus => form.focus(passwordControlPath());
  void get friendsFocus => form.focus(friendsControlPath());
  void get categoriesFocus => form.focus(categoriesControlPath());
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String> get clientIdControl =>
      form.control(clientIdControlPath()) as FormControl<String>;
  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;
  FormControl<List<UserData>> get friendsControl =>
      form.control(friendsControlPath()) as FormControl<List<UserData>>;
  FormControl<List<String>> get categoriesControl =>
      form.control(categoriesControlPath()) as FormControl<List<String>>;
  Login get model => Login(
      email: emailValue,
      clientId: clientIdValue,
      password: passwordValue,
      friends: friendsValue,
      categories: categoriesValue,
      userData: userDataForm.model);
  FormGroup formElements() => FormGroup({
        email: FormControl<String>(
            value: login.email,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        clientId: FormControl<String>(
            value: login.clientId,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        password: FormControl<String>(
            value: login.password,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        friends: FormArray<FormGroup>(userDataForm.formElements(),
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        categories: FormArray<String>(
            login.categories.map((e) => FormControl<String>(value: e)).toList(),
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        userData: userDataForm.formElements()
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class UserDataForm {
  UserDataForm(this.userData, this.form, this.path) {}

  String firstName = "firstName";

  String lastName = "lastName";

  String skills = "skills";

  final UserData userData;

  final FormGroup form;

  final String? path;

  String firstNameControlPath() =>
      [path, "firstName"].whereType<String>().join(".");
  String lastNameControlPath() =>
      [path, "lastName"].whereType<String>().join(".");
  String skillsControlPath() => [path, "skills"].whereType<String>().join(".");
  String get firstNameValue => form.value[firstNameControlPath()] as String;
  String get lastNameValue => form.value[lastNameControlPath()] as String;
  List<String> get skillsValue =>
      form.value[skillsControlPath()] as List<String>;
  bool get containsFirstName => form.contains(firstNameControlPath());
  bool get containsLastName => form.contains(lastNameControlPath());
  bool get containsSkills => form.contains(skillsControlPath());
  Object? get firstNameErrors => form.errors[firstNameControlPath()];
  Object? get lastNameErrors => form.errors[lastNameControlPath()];
  Object? get skillsErrors => form.errors[skillsControlPath()];
  void get firstNameFocus => form.focus(firstNameControlPath());
  void get lastNameFocus => form.focus(lastNameControlPath());
  void get skillsFocus => form.focus(skillsControlPath());
  FormControl<String> get firstNameControl =>
      form.control(firstNameControlPath()) as FormControl<String>;
  FormControl<String> get lastNameControl =>
      form.control(lastNameControlPath()) as FormControl<String>;
  FormControl<List<String>> get skillsControl =>
      form.control(skillsControlPath()) as FormControl<List<String>>;
  UserData get model => UserData(
      firstName: firstNameValue, lastName: lastNameValue, skills: skillsValue);
  FormGroup formElements() => FormGroup({
        firstName: FormControl<String>(
            value: userData.firstName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastName: FormControl<String>(
            value: userData.lastName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        skills: FormArray<String>(
            userData.skills.map((e) => FormControl<String>(value: e)).toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}
