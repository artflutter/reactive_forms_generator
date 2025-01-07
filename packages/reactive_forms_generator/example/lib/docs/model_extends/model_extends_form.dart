import 'package:example/docs/model_extends/model_extends.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class ModelExtendsWidget extends StatefulWidget {
  const ModelExtendsWidget({super.key});

  @override
  State<ModelExtendsWidget> createState() => _ModelExtendsWidgetState();
}

class _ModelExtendsWidgetState extends State<ModelExtendsWidget> {
  ModelExtends _emptyModel = ModelExtends();

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login'),
      body: ModelExtendsFormBuilder(
        model: _emptyModel,
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                formControl: formModel.emailControl,
                validationMessages: {
                  ValidationMessage.required: (_) => 'Required'
                },
                // showErrors: (_) => false,
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
                // showErrors: (_) => false,
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
              ReactiveModelExtendsFormConsumer(
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
                    ModelExtends(email: 'some@e.mail', password: 'xx'),
                  );
                  setState(() {
                    _emptyModel =
                        ModelExtends(email: 'some@e.mail', password: 'xx');
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
              ReactiveModelExtendsFormConsumer(
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
