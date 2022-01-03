import 'package:example/docs/remove_form_control/tiny.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class RemoveControlFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: Text('Form control is removed'),
      body: TinyFormBuilder(
        model: Tiny(),
        builder: (context, formModel, child) {
          // We don't want the password control but we still want to use the
          // TinyForm for code reuse purposes
          formModel.passwordRemove();
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
              ReactiveTinyFormConsumer(
                builder: (context, formModel, child) {
                  return ElevatedButton(
                    child: Text('Submit'),
                    onPressed: formModel.form.valid
                        ? () {
                            // ignore: unnecessary_cast
                            print(
                                'If there is no error below this text, you fixed it, good job!');
                            print((formModel as FormModel<Tiny>).model);
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
