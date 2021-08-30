import 'package:example/docs/freezed/freezed_class.dart';
import 'package:example/docs/freezed/freezed_class.gform.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class FreezedFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: Text('Login'),
      body: FreezedClassFormBuilder(
        model: FreezedClass(),
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.idControl,
                textInputAction: TextInputAction.next,
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
                    print(formModel.model);
                    print(formModel.model.year);
                  } else {
                    formModel.form.markAllAsTouched();
                  }
                },
                child: const Text('Sign Up'),
              ),
              ReactiveFreezedClassFormConsumer(
                builder: (context, formModel, child) {
                  return ElevatedButton(
                    child: Text('Submit'),
                    onPressed: formModel.form.valid ? () {} : null,
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
