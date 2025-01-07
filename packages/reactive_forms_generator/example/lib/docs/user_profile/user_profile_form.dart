// ignore_for_file: avoid_print

import 'package:example/docs/user_profile/user_profile.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class UserProfileFormWidget extends StatelessWidget {
  const UserProfileFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('User profile'),
      body: SafeArea(
        child: UserProfileFormBuilder(
          model: UserProfile(
            id: 'id',
            home: Address(),
          ),
          builder: (context, formModel, child) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ReactiveTextField<String>(
                    formControl: formModel.firstNameControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    decoration: const InputDecoration(
                      labelText: 'First name',
                      helperText: '',
                      helperStyle: TextStyle(height: 0.7),
                      errorStyle: TextStyle(height: 0.7),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  ReactiveTextField<String>(
                    formControl: formModel.lastNameControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      labelText: 'Last name',
                      helperText: '',
                      helperStyle: TextStyle(height: 0.7),
                      errorStyle: TextStyle(height: 0.7),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  const Text(
                    'Home address',
                    style: TextStyle(fontSize: 18),
                  ),
                  ReactiveTextField<String>(
                    formControl: formModel.homeForm.cityControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    decoration: const InputDecoration(
                      labelText: 'Home city',
                      helperText: '',
                      helperStyle: TextStyle(height: 0.7),
                      errorStyle: TextStyle(height: 0.7),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  ReactiveTextField<String>(
                    formControl: formModel.homeForm.streetControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      labelText: 'Home street',
                      helperText: '',
                      helperStyle: TextStyle(height: 0.7),
                      errorStyle: TextStyle(height: 0.7),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  ReactiveTextField<String>(
                    formControl: formModel.homeForm.zipControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      labelText: 'Home zip',
                      helperText: '',
                      helperStyle: TextStyle(height: 0.7),
                      errorStyle: TextStyle(height: 0.7),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text('Office address', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 8.0),
                  ReactiveTextField<String>(
                    formControl: formModel.officeForm.cityControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      labelText: 'Office city',
                      helperText: '',
                      helperStyle: TextStyle(height: 0.7),
                      errorStyle: TextStyle(height: 0.7),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  ReactiveTextField<String>(
                    formControl: formModel.officeForm.streetControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      labelText: 'Office street',
                      helperText: '',
                      helperStyle: TextStyle(height: 0.7),
                      errorStyle: TextStyle(height: 0.7),
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  ReactiveTextField<String>(
                    formControl: formModel.officeForm.zipControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      labelText: 'Office zip',
                      helperText: '',
                      helperStyle: TextStyle(height: 0.7),
                      errorStyle: TextStyle(height: 0.7),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      formModel.submit(onValid: (model) {
                        if (formModel.form.valid) {
                          debugPrint(model.toString());
                        }
                      });
                    },
                    child: const Text('Sign Up'),
                  ),
                  ReactiveUserProfileFormConsumer(
                    builder: (context, formModel, child) {
                      return ElevatedButton(
                        onPressed: formModel.form.valid
                            ? () {
                                formModel.submit(onValid: (model) {
                                  debugPrint(model.firstName);
                                  debugPrint(model.lastName);
                                });
                              }
                            : null,
                        child: const Text('Submit'),
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
