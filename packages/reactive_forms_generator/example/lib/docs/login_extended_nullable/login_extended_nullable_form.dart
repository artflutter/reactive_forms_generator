// ignore_for_file: avoid_print
import 'package:example/docs/login_extended_nullable/login_extended_nullable.dart';
import 'package:example/helpers.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:intl/intl.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_touch_spin/reactive_touch_spin.dart';

class LoginExtendedNullableFormWidget extends StatelessWidget {
  const LoginExtendedNullableFormWidget({Key? key}) : super(key: key);

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
              ReactiveDropdownSearch<String, String>(
                formControl: formModel.themeControl,
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
                  "light",
                  "dark",
                ],
                showClearButton: true,
              ),
              const SizedBox(height: 16.0),
              ReactiveDropdownSearch<UserMode, UserMode>(
                formControl: formModel.modeControl,
                popupProps: const PopupProps.menu(),
                dropdownDecoratorProps: const DropDownDecoratorProps(
                  dropdownSearchDecoration: InputDecoration(
                    hintText: "Select a mode",
                    labelText: "Mode",
                    helperText: '',
                    contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                    border: OutlineInputBorder(),
                  ),
                ),
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
                  if (formModel.form.valid) {
                    debugPrint(formModel.model.toString());
                  } else {
                    formModel.form.markAllAsTouched();
                  }
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
