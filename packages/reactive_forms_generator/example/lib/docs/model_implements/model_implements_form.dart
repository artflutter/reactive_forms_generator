import 'package:example/docs/model_implements/model_implements.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class ModelImplementsWidget extends StatefulWidget {
  const ModelImplementsWidget({super.key});

  @override
  State<ModelImplementsWidget> createState() => _ModelImplementsWidgetState();
}

class _ModelImplementsWidgetState extends State<ModelImplementsWidget> {
  ModelImplements _emptyModel = ModelImplements();

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login'),
      body: ModelImplementsFormBuilder(
        model: _emptyModel,
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
                  ValidationMessage.required: (_) => 'Required',
                  'mustMatch': (_) => 'Must match validator demo',
                },
                textInputAction: TextInputAction.done,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  helperText: '',
                  helperStyle: TextStyle(height: 0.7),
                  errorStyle: TextStyle(height: 0.7),
                ),
              ),
              ReactiveModelImplementsFormConsumer(
                builder: (context, formModel, child) {
                  // debugPrint(formModel.passwordControl.errors);
                  // debugPrint(formModel.form);
                  debugPrint('dirty => ${formModel.form.dirty}');
                  debugPrint(
                      'passwordDirty => ${formModel.passwordControl.dirty}');

                  return Column(
                    children: [
                      Text(formModel.emailControl.errors.toString()),
                      Text(formModel.passwordControl.errors.toString()),
                    ],
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {
                  formModel.submit(onValid: (model) {
                    debugPrint(model.email);
                    debugPrint(model.password);
                  });
                },
                child: const Text('Submit raw'),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  formModel.updateValue(
                    ModelImplements(email: 'some@e.mail', password: 'xx'),
                  );
                  setState(() {
                    _emptyModel =
                        ModelImplements(email: 'some@e.mail', password: 'xx');
                  });
                },
                child: const Text('Update model'),
              ),
              ElevatedButton(
                onPressed: () {
                  formModel.reset();
                },
                child: const Text('Reset'),
              ),
              const SizedBox(height: 8.0),
              ReactiveModelImplementsFormConsumer(
                builder: (context, formModel, child) {
                  return ElevatedButton(
                    onPressed: formModel.form.valid
                        ? () {
                            formModel.submit(onValid: (model) {
                              debugPrint(model.toString());
                              debugPrint(model.email);
                              debugPrint(model.password);
                            });
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
