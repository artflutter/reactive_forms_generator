import 'package:example/docs/renamed_basic/renamed_basic.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class BasicFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: Text('Basic'),
      body: SomeWiredNameFormBuilder(
        model: RenamedBasic(),
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.emailControl,
                validationMessages: (control) => {
                  ValidationMessage.required: 'The email must not be empty',
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
                validationMessages: (control) => {
                  ValidationMessage.required: 'The password must not be empty',
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
                    child: Text('Submit'),
                    onPressed: formModel.form.valid
                        ? () {
                            // ignore: unnecessary_cast
                            print((formModel as FormModel<RenamedBasic>).model);
                            print(formModel.model.email);
                            print(formModel.model.password);
                          }
                        : null,
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
