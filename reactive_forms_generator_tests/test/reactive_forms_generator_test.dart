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
            
            part 'login.gform.dart';

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
            
              @FormControlAnnotation(
                validators: const [
                  NumberValidator.validate,
                ],
                asyncValidators: const [
                  uniqueEmail,
                ],
              )
              final String password;
            
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
  LoginForm(Login login) {
    form = fb.group(_formElements(login));
  }

  static String email = "email";

  static String password = "password";

  static String categories = "categories";

  String emailControlName = "email";

  String passwordControlName = "password";

  String categoriesControlName = "categories";

  late FormGroup form;

  String get emailValue => form.value[LoginForm.email] as String;
  String get passwordValue => form.value[LoginForm.password] as String;
  List<String> get categoriesValue =>
      form.value[LoginForm.categories] as List<String>;
  bool get containsEmail => form.contains(LoginForm.email);
  bool get containsPassword => form.contains(LoginForm.password);
  bool get containsCategories => form.contains(LoginForm.categories);
  Object? get emailErrors => form.errors[LoginForm.email];
  Object? get passwordErrors => form.errors[LoginForm.password];
  Object? get categoriesErrors => form.errors[LoginForm.categories];
  void get emailFocus => form.focus(LoginForm.email);
  void get passwordFocus => form.focus(LoginForm.password);
  void get categoriesFocus => form.focus(LoginForm.categories);
  FormControl<String> get emailControl =>
      form.control(LoginForm.email) as FormControl<String>;
  FormControl<String> get passwordControl =>
      form.control(LoginForm.password) as FormControl<String>;
  FormControl<List<String>> get categoriesControl =>
      form.control(LoginForm.categories) as FormControl<List<String>>;
  Login get model => Login(
      email: emailValue, password: passwordValue, categories: categoriesValue);
  Map<String, Object> _formElements(Login login) => {
        LoginForm.email: FormControl<String>(
            value: login.email, validators: [], asyncValidators: []),
        LoginForm.password: FormControl<String>(
            value: login.password, validators: [], asyncValidators: []),
        LoginForm.categories: FormArray<String>(login.categories,
            validators: [], asyncValidators: [])
      };
}
''';
