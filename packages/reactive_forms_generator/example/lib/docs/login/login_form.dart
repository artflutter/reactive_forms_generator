import 'package:example/docs/login/login.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({Key? key}) : super(key: key);

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  Login _emptyModel = Login(email: '', password: '');

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login'),
      body: LoginFormBuilder(
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
              ReactiveLoginFormConsumer(
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
                  debugPrint(formModel.model.email);
                  debugPrint(formModel.model.password);
                  formModel.form.markAllAsTouched();
                },
                child: const Text('Submit raw'),
              ),
              const SizedBox(height: 8.0),
              ElevatedButton(
                onPressed: () {
                  formModel.updateValue(
                    Login(email: 'some@e.mail', password: 'xx'),
                  );
                  setState(() {
                    _emptyModel = Login(email: 'some@e.mail', password: 'xx');
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
              ReactiveLoginFormConsumer(
                builder: (context, formModel, child) {
                  return ElevatedButton(
                    onPressed: formModel.form.valid
                        ? () {
                            // ignore: unnecessary_cast, avoid_print
                            debugPrint((formModel as FormModel<Login>)
                                .model
                                .toString());
                            // ignore: avoid_print
                            debugPrint(formModel.model.email);
                            // ignore: avoid_print
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
