import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Simple test',
      () async {
        return testGenerator(
          model: r'''
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            @FormGroupAnnotation()
            class UserData {
              @FormControlAnnotation()
              final String firstName;
            
              @FormControlAnnotation()
              final String lastName;
            
              @FormArrayAnnotation()
              final List<String> skills;
            
              UserData({
                required this.firstName,
                required this.lastName,
                required this.skills,
              });
            }
            
            @ReactiveFormAnnotation()
            class Login {
              @FormControlAnnotation(
                validators: const [
                  NumberValidator.validate,
                ],
                asyncValidators: const [
                  uniqueEmail,
                ],
              )
              final String email;
              
              @FormControlAnnotation()
              final String? clientId;
            
              @FormControlAnnotation(
                validators: const [
                  NumberValidator.validate,
                ],
                asyncValidators: const [
                  uniqueEmail,
                ],
              )
              final String password;
              
              final UserData userData;
              
              @FormArrayAnnotation(
                validators: const [
                  NumberValidator.validate,
                ],
                asyncValidators: const [
                  uniqueEmail,
                ],
              )
              final List<UserData> friends;
            
              @FormArrayAnnotation(
                validators: const [
                  NumberValidator.validate,
                ],
                asyncValidators: const [
                  uniqueEmail,
                ],
              )
              final List<String> categories;
            
              Login({
                this.email = 'default@e.mail',
                required this.password,
                required this.categories,
                required this.userData,
                required this.friends,
                this.clientId
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
  late LoginForm _form;

  @override
  void initState() {
    _form = LoginForm(widget.model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveLoginForm(
      form: _form,
      onWillPop: widget.onWillPop,
      child: ReactiveForm(
        formGroup: _form.form,
        onWillPop: widget.onWillPop,
        child: widget.builder(context, _form, widget.child),
      ),
    );
  }
}

class LoginForm {
  LoginForm(this.login) {
    form = fb.group(formElements());
    userDataForm = UserDataForm(login.userData);
  }

  static String email = "email";

  static String clientId = "clientId";

  static String password = "password";

  static String userData = "userData";

  static String categories = "categories";

  String emailControlName = "email";

  String clientIdControlName = "clientId";

  String passwordControlName = "password";

  String categoriesControlName = "categories";

  late UserDataForm userDataForm;

  Login login;

  late FormGroup form;

  String get emailValue => form.value[LoginForm.email] as String;
  String? get clientIdValue => form.value[LoginForm.clientId] as String?;
  String get passwordValue => form.value[LoginForm.password] as String;
  List<String> get categoriesValue =>
      form.value[LoginForm.categories] as List<String>;
  bool get containsEmail => form.contains(LoginForm.email);
  bool get containsClientId => form.contains(LoginForm.clientId);
  bool get containsPassword => form.contains(LoginForm.password);
  bool get containsCategories => form.contains(LoginForm.categories);
  Object? get emailErrors => form.errors[LoginForm.email];
  Object? get clientIdErrors => form.errors[LoginForm.clientId];
  Object? get passwordErrors => form.errors[LoginForm.password];
  Object? get categoriesErrors => form.errors[LoginForm.categories];
  void get emailFocus => form.focus(LoginForm.email);
  void get clientIdFocus => form.focus(LoginForm.clientId);
  void get passwordFocus => form.focus(LoginForm.password);
  void get categoriesFocus => form.focus(LoginForm.categories);
  FormControl<String> get emailControl =>
      form.control(LoginForm.email) as FormControl<String>;
  FormControl<String> get clientIdControl =>
      form.control(LoginForm.clientId) as FormControl<String>;
  FormControl<String> get passwordControl =>
      form.control(LoginForm.password) as FormControl<String>;
  FormControl<List<String>> get categoriesControl =>
      form.control(LoginForm.categories) as FormControl<List<String>>;
  Login get model => Login(
      email: emailValue,
      clientId: clientIdValue,
      password: passwordValue,
      categories: categoriesValue,
      userData: userDataForm.model);
  Map<String, AbstractControl<dynamic>> formElements() => {
        LoginForm.email: FormControl<String>(
            value: login.email,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        LoginForm.clientId: FormControl<String>(
            value: login.clientId,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        LoginForm.password: FormControl<String>(
            value: login.password,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        LoginForm.categories: FormArray<String>(
            login.categories.map((e) => FormControl<String>(value: e)).toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        LoginForm.userData: FormGroup(userDataForm.formElements(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      };
}

class UserDataForm {
  UserDataForm(this.userData) {
    form = fb.group(formElements());
  }

  static String firstName = "firstName";

  static String lastName = "lastName";

  static String skills = "skills";

  String firstNameControlName = "firstName";

  String lastNameControlName = "lastName";

  String skillsControlName = "skills";

  UserData userData;

  late FormGroup form;

  String get firstNameValue => form.value[UserDataForm.firstName] as String;
  String get lastNameValue => form.value[UserDataForm.lastName] as String;
  List<String> get skillsValue =>
      form.value[UserDataForm.skills] as List<String>;
  bool get containsFirstName => form.contains(UserDataForm.firstName);
  bool get containsLastName => form.contains(UserDataForm.lastName);
  bool get containsSkills => form.contains(UserDataForm.skills);
  Object? get firstNameErrors => form.errors[UserDataForm.firstName];
  Object? get lastNameErrors => form.errors[UserDataForm.lastName];
  Object? get skillsErrors => form.errors[UserDataForm.skills];
  void get firstNameFocus => form.focus(UserDataForm.firstName);
  void get lastNameFocus => form.focus(UserDataForm.lastName);
  void get skillsFocus => form.focus(UserDataForm.skills);
  FormControl<String> get firstNameControl =>
      form.control(UserDataForm.firstName) as FormControl<String>;
  FormControl<String> get lastNameControl =>
      form.control(UserDataForm.lastName) as FormControl<String>;
  FormControl<List<String>> get skillsControl =>
      form.control(UserDataForm.skills) as FormControl<List<String>>;
  UserData get model => UserData(
      firstName: firstNameValue, lastName: lastNameValue, skills: skillsValue);
  Map<String, AbstractControl<dynamic>> formElements() => {
        UserDataForm.firstName: FormControl<String>(
            value: userData.firstName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        UserDataForm.lastName: FormControl<String>(
            value: userData.lastName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        UserDataForm.skills: FormArray<String>(
            userData.skills.map((e) => FormControl<String>(value: e)).toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      };
}
''';
