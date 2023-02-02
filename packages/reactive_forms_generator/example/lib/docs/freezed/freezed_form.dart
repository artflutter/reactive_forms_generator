// ignore_for_file: avoid_print

import 'package:example/docs/freezed/freezed_class.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class FreezedFormWidget extends StatelessWidget {
  const FreezedFormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login'),
      body: FreezedClassFormBuilder(
        model: FreezedClass(''),
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.idControl,
                textInputAction: TextInputAction.next,
                validationMessages: {
                  ValidationMessage.required: (_) => 'Required'
                },
                decoration: const InputDecoration(
                  labelText: 'ID',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 16.0),
              ReactiveTextField<String>(
                formControl: formModel.nameControl,
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Name',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 16.0),
              ReactiveSlider(
                formControl: formModel.yearControl,
                min: 1900,
                max: 2100,
              ),
              ElevatedButton(
                onPressed: () {
                  if (formModel.form.valid) {
                    debugPrint(formModel.model.toString());
                    debugPrint(formModel.model.year.toString());
                  } else {
                    formModel.form.markAllAsTouched();
                  }
                },
                child: const Text('Sign Up'),
              ),
              ReactiveFreezedClassFormConsumer(
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
