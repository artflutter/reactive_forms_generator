// ignore_for_file: avoid_print

import 'package:example/docs/group/group.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class GroupFormWidget extends StatelessWidget {
  const GroupFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Group'),
      body: GroupFormBuilder(
        model: Group(
          personal: Personal(name: 'vasilich'),
          phone: Phone(countryIso: 'UA'),
          address: Address(city: 'Kiev'),
          address2: Address(city: 'Odessa'),
        ),
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.personalForm.nameControl,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 16.0),
              ReactiveTextField<String>(
                formControl: formModel.personalForm.emailControl,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 16.0),
              ReactiveTextField<String>(
                formControl: formModel.phoneForm.phoneNumberControl,
                decoration: const InputDecoration(
                  labelText: 'Phone number',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 16.0),
              ReactiveTextField<String>(
                formControl: formModel.phoneForm.countryIsoControl,
                decoration: const InputDecoration(
                  labelText: 'Country iso',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                margin: const EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Address 1', style: TextStyle(fontSize: 20)),
                      ReactiveTextField<String>(
                        formControl: formModel.addressForm.cityControl,
                        decoration: const InputDecoration(
                          labelText: 'City',
                          helperText: '',
                          helperStyle: TextStyle(height: 0.7),
                          errorStyle: TextStyle(height: 0.7),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      ReactiveTextField<String>(
                        formControl: formModel.addressForm.streetControl,
                        decoration: const InputDecoration(
                          labelText: 'Street',
                          helperText: '',
                          helperStyle: TextStyle(height: 0.7),
                          errorStyle: TextStyle(height: 0.7),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      ReactiveTextField<String>(
                        formControl: formModel.addressForm.zipControl,
                        decoration: const InputDecoration(
                          labelText: 'Zip',
                          helperText: '',
                          helperStyle: TextStyle(height: 0.7),
                          errorStyle: TextStyle(height: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                margin: const EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Address 2', style: TextStyle(fontSize: 20)),
                      ReactiveTextField<String>(
                        formControl: formModel.address2Form.cityControl,
                        decoration: const InputDecoration(
                          labelText: 'City',
                          helperText: '',
                          helperStyle: TextStyle(height: 0.7),
                          errorStyle: TextStyle(height: 0.7),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      ReactiveTextField<String>(
                        formControl: formModel.address2Form.streetControl,
                        decoration: const InputDecoration(
                          labelText: 'Street',
                          helperText: '',
                          helperStyle: TextStyle(height: 0.7),
                          errorStyle: TextStyle(height: 0.7),
                        ),
                      ),
                      const SizedBox(height: 16.0),
                      ReactiveTextField<String>(
                        formControl: formModel.address2Form.zipControl,
                        decoration: const InputDecoration(
                          labelText: 'Zip',
                          helperText: '',
                          helperStyle: TextStyle(height: 0.7),
                          errorStyle: TextStyle(height: 0.7),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  formModel.submit(onValid: (model) {
                    debugPrint(model.toString());
                    debugPrint(model.personal?.name);
                    debugPrint(model.personal?.email);
                  });
                },
                child: const Text('Sign Up'),
              ),
              ReactiveGroupFormConsumer(
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
