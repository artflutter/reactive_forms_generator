// ignore_for_file: avoid_print

import 'package:example/docs/login/login.dart';
import 'package:example/helpers.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:intl/intl.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_touch_spin/reactive_touch_spin.dart';

class LoginFormWidget extends StatelessWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login'),
      body: LoginFormBuilder(
        model: Login(
          password: '1234',
          timeout: 3,
          theme: 'dark',
          height: 150,
          mode: UserMode.admin,
          rememberMe: false,
        ),
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.emailControl,
                validationMessages: (control) => {
                  ValidationMessage.required: 'The email must not be empty',
                  ValidationMessage.email:
                      'The email value must be a valid email',
                  'unique': 'This email is already in use',
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
                validationMessages: (control) => {
                  ValidationMessage.required: 'The password must not be empty',
                  ValidationMessage.minLength:
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
              ReactiveDropdownSearch<String, String>(
                formControl: formModel.themeControl,
                popupProps: const PopupProps.menu(),
                decoration: const InputDecoration(
                  labelText: 'Theme',
                  hintText: 'Select a theme',
                  helperText: '',
                  contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                  border: OutlineInputBorder(),
                ),
                // showSelectedItem: true,
                items: const [
                  "light",
                  "dark",
                ],
                showClearButton: true,
              ),
              const SizedBox(height: 16.0),
              ReactiveDropdownSearch<UserMode, UserMode>(
                formControl: formModel.modeControl,
                decoration: const InputDecoration(
                  hintText: "Select a theme",
                  labelText: "Theme",
                  helperText: '',
                  contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                  border: OutlineInputBorder(),
                ),
                popupProps: const PopupProps.menu(),
                // showSelectedItem: true,
                items: const [
                  UserMode.admin,
                  UserMode.user,
                ],
                compareFn: (item, selectedItem) => item == selectedItem,

                showClearButton: true,
              ),
              ReactiveTouchSpin<int>(
                formControl: formModel.timeoutControl,
                decoration: const InputDecoration(
                  labelText: 'Logout timeout mins.',
                ),
                valueAccessor: NumValueAccessor(),
                displayFormat: NumberFormat()..minimumFractionDigits = 0,
                min: 0,
                max: 10,
              ),
              ReactiveSwitchListTile(
                formControl: formModel.rememberMeControl,
                title: const Text('remember me'),
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              ReactiveSlider(
                formControl: formModel.heightControl,
                min: 120,
                max: 220,
              ),
              ReactiveLoginFormConsumer(
                builder: (context, formModel, child) {
                  print(formModel.form.errors);
                  return Container();
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formModel.form.valid) {
                    print(formModel.model);
                    print(formModel.model.email);
                  } else {
                    formModel.form.markAllAsTouched();
                  }
                },
                child: const Text('Sign Up'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReactiveLoginFormConsumer(
                    builder: (context, formModel, child) {
                      return ElevatedButton(
                        onPressed: formModel.form.valid
                            ? () {
                                formModel.updateValue(Login(
                                  email: 'some@e.mail',
                                  password: 'a',
                                  timeout: 3,
                                  theme: 'light',
                                  height: 130,
                                  mode: UserMode.user,
                                  rememberMe: true,
                                ));
                              }
                            : null,
                        child: const Text('Update'),
                      );
                    },
                  ),
                  const SizedBox(width: 16),
                  ReactiveLoginFormConsumer(
                    builder: (context, formModel, child) {
                      return ElevatedButton(
                        onPressed: formModel.form.valid
                            ? () => formModel.reset()
                            : null,
                        child: const Text('Reset'),
                      );
                    },
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
