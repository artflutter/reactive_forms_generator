// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// // **************************************************************************
// // ReactiveFormsGenerator
// // **************************************************************************
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:reactive_forms/reactive_forms.dart';
// import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
// import 'package:reactive_forms/reactive_forms.dart';
// import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
// import 'dart:core';
// import 'login.dart';
//
// class ReactiveLoginFormConsumer extends StatelessWidget {
//   ReactiveLoginFormConsumer({Key? key, required this.builder, this.child})
//       : super(key: key);
//
//   final Widget? child;
//
//   final Widget Function(
//       BuildContext context, LoginForm formGroup, Widget? child) builder;
//
//   @override
//   Widget build(BuildContext context) {
//     final form = ReactiveLoginForm.of(context);
//
//     if (form is! LoginForm) {
//       throw FormControlParentNotFoundException(this);
//     }
//     return builder(context, form, child);
//     ;
//   }
// }
//
// class LoginFormInheritedStreamer extends InheritedStreamer<dynamic> {
//   LoginFormInheritedStreamer(
//       {Key? key,
//       required this.form,
//       required Stream<dynamic> stream,
//       required Widget child})
//       : super(stream, child, key: key);
//
//   final LoginForm form;
// }
//
// class ReactiveLoginForm extends StatelessWidget {
//   ReactiveLoginForm(
//       {Key? key, required this.form, required this.child, this.onWillPop})
//       : super(key: key);
//
//   final Widget child;
//
//   final LoginForm form;
//
//   final WillPopCallback? onWillPop;
//
//   static LoginForm? of(BuildContext context, {bool listen = true}) {
//     if (listen) {
//       return context
//           .dependOnInheritedWidgetOfExactType<LoginFormInheritedStreamer>()
//           ?.form;
//     }
//
//     final element = context
//         .getElementForInheritedWidgetOfExactType<LoginFormInheritedStreamer>();
//     return element == null
//         ? null
//         : (element.widget as LoginFormInheritedStreamer).form;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return LoginFormInheritedStreamer(
//       form: form,
//       stream: form.form.statusChanged,
//       child: WillPopScope(
//         onWillPop: onWillPop,
//         child: child,
//       ),
//     );
//   }
// }
//
// class LoginFormBuilder extends StatefulWidget {
//   LoginFormBuilder(
//       {Key? key,
//       required this.model,
//       this.child,
//       this.onWillPop,
//       required this.builder})
//       : super(key: key);
//
//   final Login model;
//
//   final Widget? child;
//
//   final WillPopCallback? onWillPop;
//
//   final Widget Function(
//       BuildContext context, LoginForm formModel, Widget? child) builder;
//
//   @override
//   _LoginFormBuilderState createState() => _LoginFormBuilderState();
// }
//
// class _LoginFormBuilderState extends State<LoginFormBuilder> {
//   late FormGroup _form;
//
//   late LoginForm _formModel;
//
//   @override
//   void initState() {
//     _form = FormGroup({});
//     _formModel = LoginForm(widget.model, _form, null);
//
//     _form.addAll(_formModel.formElements().controls);
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ReactiveLoginForm(
//       form: _formModel,
//       onWillPop: widget.onWillPop,
//       child: ReactiveForm(
//         formGroup: _form,
//         onWillPop: widget.onWillPop,
//         child: widget.builder(context, _formModel, widget.child),
//       ),
//     );
//   }
// }
//
// class LoginForm {
//   LoginForm(this.login, this.form, this.path) {
//     userDataForm = UserDataForm(login.userData, form, 'userData');
//     friendsUserDataForm = login.friends
//         .asMap()
//         .map((k, v) => MapEntry(k, UserDataForm(v, form, "friends.$k")))
//         .values
//         .toList();
//   }
//
//   String email = "email";
//
//   String clientId = "clientId";
//
//   String password = "password";
//
//   String userData = "userData";
//
//   String friends = "friends";
//
//   String categories = "categories";
//
//   late UserDataForm userDataForm;
//
//   final Login login;
//
//   final FormGroup form;
//
//   final String? path;
//
//   late List<UserDataForm> friendsUserDataForm;
//
//   String emailControlPath() => [path, "email"].whereType<String>().join(".");
//   String clientIdControlPath() =>
//       [path, "clientId"].whereType<String>().join(".");
//   String passwordControlPath() =>
//       [path, "password"].whereType<String>().join(".");
//   String friendsControlPath() =>
//       [path, "friends"].whereType<String>().join(".");
//   String categoriesControlPath() =>
//       [path, "categories"].whereType<String>().join(".");
//   String get emailValue => emailControl.value as String;
//   String? get clientIdValue => clientIdControl.value as String?;
//   String get passwordValue => passwordControl.value as String;
//   List<UserData> get friendsValue =>
//       friendsUserDataForm.map((e) => e.model).toList();
//   List<String> get categoriesValue =>
//       categoriesControl.value?.whereType<String>().toList() ?? [];
//   bool get containsEmail => form.contains(emailControlPath());
//   bool get containsClientId => form.contains(clientIdControlPath());
//   bool get containsPassword => form.contains(passwordControlPath());
//   bool get containsFriends => form.contains(friendsControlPath());
//   bool get containsCategories => form.contains(categoriesControlPath());
//   Object? get emailErrors => emailControl.errors;
//   Object? get clientIdErrors => clientIdControl.errors;
//   Object? get passwordErrors => passwordControl.errors;
//   Object? get friendsErrors => friendsControl.errors;
//   Object? get categoriesErrors => categoriesControl.errors;
//   void get emailFocus => form.focus(emailControlPath());
//   void get clientIdFocus => form.focus(clientIdControlPath());
//   void get passwordFocus => form.focus(passwordControlPath());
//   void get friendsFocus => form.focus(friendsControlPath());
//   void get categoriesFocus => form.focus(categoriesControlPath());
//   FormControl<String> get emailControl =>
//       form.control(emailControlPath()) as FormControl<String>;
//   FormControl<String> get clientIdControl =>
//       form.control(clientIdControlPath()) as FormControl<String>;
//   FormControl<String> get passwordControl =>
//       form.control(passwordControlPath()) as FormControl<String>;
//   FormArray get friendsControl =>
//       form.control(friendsControlPath()) as FormArray;
//   FormArray<String> get categoriesControl =>
//       form.control(categoriesControlPath()) as FormArray<String>;
//   Login get model => Login(
//       email: emailValue,
//       clientId: clientIdValue,
//       password: passwordValue,
//       friends: friendsValue,
//       categories: categoriesValue,
//       userData: userDataForm.model);
//   FormGroup formElements() => FormGroup({
//         email: FormControl<String>(
//             value: login.email,
//             validators: [requiredValidator],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false,
//             touched: false),
//         clientId: FormControl<String>(
//             value: login.clientId,
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false,
//             touched: false),
//         password: FormControl<String>(
//             value: login.password,
//             validators: [requiredValidator],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false,
//             touched: false),
//         friends: FormArray(
//             friendsUserDataForm.map((e) => e.formElements()).toList(),
//             validators: [requiredValidator],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false),
//         categories: FormArray<String>(
//             login.categories.map((e) => FormControl<String>(value: e)).toList(),
//             validators: [requiredValidator],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false),
//         userData: userDataForm.formElements()
//       },
//           validators: [],
//           asyncValidators: [],
//           asyncValidatorsDebounceTime: 250,
//           disabled: false);
// }
//
// class UserDataForm {
//   UserDataForm(this.userData, this.form, this.path) {}
//
//   String firstName = "firstName";
//
//   String lastName = "lastName";
//
//   String skills = "skills";
//
//   final UserData userData;
//
//   final FormGroup form;
//
//   final String? path;
//
//   String firstNameControlPath() =>
//       [path, "firstName"].whereType<String>().join(".");
//   String lastNameControlPath() =>
//       [path, "lastName"].whereType<String>().join(".");
//   String skillsControlPath() => [path, "skills"].whereType<String>().join(".");
//   String get firstNameValue => firstNameControl.value as String;
//   String get lastNameValue => lastNameControl.value as String;
//   List<String> get skillsValue =>
//       skillsControl.value?.whereType<String>().toList() ?? [];
//   bool get containsFirstName => form.contains(firstNameControlPath());
//   bool get containsLastName => form.contains(lastNameControlPath());
//   bool get containsSkills => form.contains(skillsControlPath());
//   Object? get firstNameErrors => firstNameControl.errors;
//   Object? get lastNameErrors => lastNameControl.errors;
//   Object? get skillsErrors => skillsControl.errors;
//   void get firstNameFocus => form.focus(firstNameControlPath());
//   void get lastNameFocus => form.focus(lastNameControlPath());
//   void get skillsFocus => form.focus(skillsControlPath());
//   FormControl<String> get firstNameControl =>
//       form.control(firstNameControlPath()) as FormControl<String>;
//   FormControl<String> get lastNameControl =>
//       form.control(lastNameControlPath()) as FormControl<String>;
//   FormArray<String> get skillsControl =>
//       form.control(skillsControlPath()) as FormArray<String>;
//   UserData get model => UserData(
//       firstName: firstNameValue, lastName: lastNameValue, skills: skillsValue);
//   FormGroup formElements() => FormGroup({
//         firstName: FormControl<String>(
//             value: userData.firstName,
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false,
//             touched: false),
//         lastName: FormControl<String>(
//             value: userData.lastName,
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false,
//             touched: false),
//         skills: FormArray<String>(
//             userData.skills.map((e) => FormControl<String>(value: e)).toList(),
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false)
//       },
//           validators: [],
//           asyncValidators: [],
//           asyncValidatorsDebounceTime: 250,
//           disabled: false);
// }
