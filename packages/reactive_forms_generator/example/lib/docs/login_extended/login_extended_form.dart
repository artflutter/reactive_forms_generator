// ignore_for_file: avoid_print

import 'package:example/docs/login_extended/login_extended.dart';
import 'package:example/helpers.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';
import 'package:reactive_forms/reactive_forms.dart';

class LoginExtendedFormWidget extends StatelessWidget {
  const LoginExtendedFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login'),
      body: LoginExtendedFormBuilder(
        model: LoginExtended(
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
              ReactiveDropdownSearch<String, String>(
                formControl: formModel.themeControl,
                popupProps: const PopupProps.menu(),
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Theme',
                    hintText: 'Select a theme',
                    helperText: '',
                    contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                    border: OutlineInputBorder(),
                  ),
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
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    hintText: "Select a theme",
                    labelText: "Theme",
                    helperText: '',
                    contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                    border: OutlineInputBorder(),
                  ),
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
              ReactiveLoginExtendedFormConsumer(
                builder: (context, formModel, child) {
                  debugPrint(formModel.form.errors.toString());
                  return Container();
                },
              ),
              ElevatedButton(
                onPressed: () {
                  if (formModel.form.valid) {
                    debugPrint(formModel.model.toString());
                    debugPrint(formModel.model.email);
                  } else {
                    formModel.form.markAllAsTouched();
                  }
                },
                child: const Text('Sign Up'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ReactiveLoginExtendedFormConsumer(
                    builder: (context, formModel, child) {
                      return ElevatedButton(
                        onPressed: formModel.form.valid
                            ? () {
                                formModel.updateValue(LoginExtended(
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
                  ReactiveLoginExtendedFormConsumer(
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
