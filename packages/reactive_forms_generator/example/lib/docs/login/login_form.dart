import 'package:example/docs/login/login.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login'),
      body: BasicFormBuilder(
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.emailControl,
                validationMessages: (control) => {
                  ValidationMessage.required: 'The email must not be empty',
                },
                showErrors: (_) => false,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 8.0),
              ReactiveTextField<String>(
                formControl: formModel.passwordControl,
                obscureText: true,
                showErrors: (_) => false,
                validationMessages: (control) => {
                  ValidationMessage.required: 'The password must not be empty',
                },
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              ReactiveBasicFormConsumer(
                builder: (context, formModel, child) {
                  // debugPrint(formModel.passwordControl.errors);
                  // debugPrint(formModel.form);
                  debugPrint('dirty => ${formModel.form.dirty}');
                  debugPrint(
                      'passwordDirty => ${formModel.passwordControl.dirty}');

                  return Text(formModel.emailControl.errors.toString());
                },
              ),
              const SizedBox(height: 8.0),
              ReactiveBasicFormConsumer(
                builder: (context, formModel, child) {
                  return ElevatedButton(
                    onPressed: formModel.form.valid
                        ? () {
                            // ignore: unnecessary_cast, avoid_print
                            debugPrint((formModel as FormModel<Basic>)
                                .model
                                .toString());
                            // ignore: avoid_print
                            debugPrint(formModel.model.email);
                            // ignore: avoid_print
                            debugPrint(formModel.model.password);
                          }
                        : null,
                    child: const Text('Submit'),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
