import 'package:example/docs/group/user_profile.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class GroupRemoveFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: Text('Tiny'),
      body: SafeArea(
        child: UserProfileFormBuilder(
          model: UserProfile(),
          builder: (context, formModel, child) {
            formModel.homeForm.cityRemove();
            if (formModel.homeForm.cityControl == null) {
              print('You fixed removing a nested form\'s control. Good job!');
            }
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ReactiveTextField<String>(
                    formControl: formModel.firstNameControl,
                    validationMessages: (control) => {
                      ValidationMessage.required: 'Must not be empty',
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
                    validationMessages: (control) => {
                      ValidationMessage.required: 'Must not be empty',
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
                  Text('Home address', style: TextStyle(fontSize: 18)),
                  ReactiveTextField<String>(
                    formControl: formModel.homeForm.cityControl,
                    validationMessages: (control) => {
                      ValidationMessage.required: 'Must not be empty',
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
                    validationMessages: (control) => {
                      ValidationMessage.required: 'Must not be empty',
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
                    validationMessages: (control) => {
                      ValidationMessage.required: 'Must not be empty',
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
                  Text('Office address', style: TextStyle(fontSize: 18)),
                  const SizedBox(height: 8.0),
                  ReactiveTextField<String>(
                    formControl: formModel.officeForm.cityControl,
                    validationMessages: (control) => {
                      ValidationMessage.required: 'Must not be empty',
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
                    validationMessages: (control) => {
                      ValidationMessage.required: 'Must not be empty',
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
                    validationMessages: (control) => {
                      ValidationMessage.required: 'Must not be empty',
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
                      if (formModel.form.valid) {
                        print(formModel.model);
                      } else {
                        formModel.form.markAllAsTouched();
                      }
                    },
                    child: const Text('Sign Up'),
                  ),
                  ReactiveUserProfileFormConsumer(
                    builder: (context, formModel, child) {
                      return ElevatedButton(
                        child: Text('Submit'),
                        onPressed: formModel.form.valid
                            ? () {
                                print(formModel.model.firstName);
                                print(formModel.model.lastName);
                              }
                            : null,
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
