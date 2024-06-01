// ignore_for_file: avoid_print

import 'package:example/docs/renamed_basic/renamed_basic.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class BasicFormWidget extends StatelessWidget {
  const BasicFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Basic'),
      body: SomeWiredNameFormBuilder(
        model: RenamedBasic(),
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.emailControl,
                validationMessages: {
                  ValidationMessage.required: (_) => 'Required'
                },
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
                validationMessages: {
                  ValidationMessage.required: (_) => 'Required'
                },
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              const SizedBox(height: 8.0),
              ReactiveSomeWiredNameFormConsumer(
                builder: (context, formModel, child) {
                  return ElevatedButton(
                    onPressed: formModel.form.valid
                        ? () {
                            // ignore: unnecessary_cast
                            debugPrint((formModel
                                    as FormModel<RenamedBasic, RenamedBasic>)
                                .model
                                .toString());
                            debugPrint(formModel.model.email);
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
