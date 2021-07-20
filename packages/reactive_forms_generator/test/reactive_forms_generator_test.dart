import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('Material auto_router', () {
    test(
      'Simple test',
      () async {
        return testGenerator(
          model: r'''
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

            @ReactiveForm()
            class Login {
              @FormControl(
                validators: const [
                  NumberValidator.validate,
                ],
                asyncValidators: const [
                  uniqueEmail,
                ],
              )
              final String email;
            
              @FormControl(
                validators: const [
                  NumberValidator.validate,
                ],
                asyncValidators: const [
                  uniqueEmail,
                ],
              )
              final String password;
            
              @FormArray(
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

import 'package:reactive_forms/reactive_forms.dart';

class LoginFormBuilder extends StatefulWidget {
  LoginFormBuilder(
      {Key? key,
      required Login model,
      Widget? child,
      required Widget Function(
              BuildContext context, LoginForm formModel, Widget? child)
          builder});

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
    ReactiveFormBuilder(
      child: widget.child,
      form: () => _form.form,
      builder: (context, form, child) {
        return widget.builder(context, _form, widget.child);
      },
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

  late FormGroup form;

  String get emailValue => form.value[LoginForm.email] as String;
  String get passwordValue => form.value[LoginForm.password] as String;
  List<String> get categoriesValue =>
      form.value[LoginForm.categories] as List<String>;
  bool get containsEmail => form.contains(LoginForm.email);
  bool get containsPassword => form.contains(LoginForm.password);
  bool get containsCategories => form.contains(LoginForm.categories);
  Map<String, Object> _formElements(Login login) => {
        LoginForm.email: FormControl<String>(
            value: login.email,
            validators: [NumberValidator.validate],
            asyncValidators: [uniqueEmail]),
        LoginForm.password: FormControl<String>(
            value: login.password,
            validators: [NumberValidator.validate],
            asyncValidators: [uniqueEmail]),
        LoginForm.categories: FormArray<String>(login.categories,
            validators: [NumberValidator.validate],
            asyncValidators: [uniqueEmail])
      };
}
''';
