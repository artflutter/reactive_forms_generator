import 'package:example/docs/login/labels.dart';
import 'package:example/docs/login/login_output.dart';
import 'package:example/docs/login/mocks.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class LoginOutputFormWidget extends StatefulWidget {
  final ValueChanged<LoginOOutput>? onChange;

  const LoginOutputFormWidget({super.key, this.onChange});

  @override
  State<LoginOutputFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginOutputFormWidget> {
  LoginO _emptyModel = mockedLoginOEmpty;

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Login Output(beta)'),
      body: LoginOFormBuilder(
        model: _emptyModel,
        builder: (context, formModel, child) {
          return Column(
            children: [
              ReactiveTextField<String>(
                key: email.itemKey,
                formControl: formModel.emailControl,
                validationMessages: {
                  ValidationMessage.required: (_) => errorRequired
                },
                decoration: InputDecoration(
                  labelText: email.name,
                  helperText: '',
                  helperStyle: const TextStyle(height: 0.8),
                  errorStyle: const TextStyle(height: 0.8),
                ),
              ),
              const SizedBox(height: 8.0),
              ReactiveTextField<String>(
                key: password.itemKey,
                formControl: formModel.passwordControl,
                obscureText: true,
                validationMessages: {
                  ValidationMessage.required: (_) => errorRequired,
                  'mustMatch': (_) => errorMustMatch,
                },
                textInputAction: TextInputAction.done,
                decoration: InputDecoration(
                  labelText: password.name,
                  helperText: '',
                  helperStyle: const TextStyle(height: 0.8),
                  errorStyle: const TextStyle(height: 0.8),
                ),
              ),
              // ReactiveLoginFormConsumer(
              //   builder: (context, formModel, child) {
              //     // debugPrint(formModel.passwordControl.errors);
              //     // debugPrint(formModel.form);
              //     debugPrint('dirty => ${formModel.form.dirty}');
              //     debugPrint(
              //         'passwordDirty => ${formModel.passwordControl.dirty}');
              //
              //     return Column(
              //       children: [
              //         Text(formModel.emailControl.errors.toString()),
              //         Text(formModel.passwordControl.errors.toString()),
              //       ],
              //     );
              //   },
              // ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          key: submitRaw.itemKey,
                          onPressed: () {
                            formModel.submit(onValid: (model) {
                              debugPrint(model.email);
                              debugPrint(model.password);
                              widget.onChange?.call(model);
                            });
                          },
                          child: const Text('Submit raw'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ReactiveLoginOFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              key: submit.itemKey,
                              onPressed: formModel.form.valid
                                  ? () {
                                      formModel.submit(onValid: (model) {
                                        debugPrint(model.toString());
                                        debugPrint(model.email);
                                        debugPrint(model.password);
                                        widget.onChange?.call(model);
                                      });
                                    }
                                  : null,
                              child: const Text('Submit'),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          key: submitRaw.itemKey,
                          onPressed: () => formModel.submit(
                            onValid: (_) => debugPrint('FormValid'),
                            onNotValid: () {
                              debugPrint('FormInvalid');
                            },
                          ),
                          child: const Text('Submit method'),
                        ),
                      ),
                      const SizedBox(width: 8),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          key: updateModel.itemKey,
                          onPressed: () {
                            setState(() => _emptyModel = mockedLoginO);
                          },
                          child: const Text('Update model'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          key: reset.itemKey,
                          onPressed: () => formModel.reset(),
                          child: const Text('Reset'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () =>
                              formModel.emailControl.markAsDisabled(),
                          child: const Text('Disable Email'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () => formModel.toggleDisabled(),
                          child: const Text('Toggle Disabled'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
