// ignore_for_file: avoid_print
import 'package:example/docs/login_extended_nullable/login_extended_nullable.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class LoginExtendedNullableFormWidget extends StatelessWidget {
  const LoginExtendedNullableFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login nullable'),
      body: LoginExtendedNullableFormBuilder(
        model: LoginExtendedNullable(),
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.emailControl,
                validationMessages: {
                  ValidationMessage.required: (control) =>
                      'The email must not be empty',
                  ValidationMessage.email: (control) =>
                      'The email value must be a valid email',
                  'unique': (control) => 'This email is already in use',
                },
                textInputAction: TextInputAction.next,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 16.0),
              ReactiveTextField<String>(
                formControl: formModel.passwordControl,
                obscureText: true,
                validationMessages: {
                  ValidationMessage.required: (control) =>
                      'The password must not be empty',
                  ValidationMessage.minLength: (control) =>
                      'The password must be at least 8 characters',
                },
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 16.0),
              ListTile(
                title: const Text('remember me'),
                trailing: ReactiveSwitch(
                  formControl: formModel.rememberMeControl,
                ),
              ),
              ReactiveSlider(
                formControl: formModel.heightControl,
                min: 120,
                max: 220,
              ),
              ElevatedButton(
                onPressed: () {
                  formModel.submit(onValid: (model) {
                    debugPrint(model.toString());
                  });
                },
                child: const Text('Sign Up'),
              ),
              ReactiveLoginExtendedNullableFormConsumer(
                builder: (context, formModel, child) {
                  return ElevatedButton(
                    onPressed: formModel.form.valid ? () {} : null,
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
