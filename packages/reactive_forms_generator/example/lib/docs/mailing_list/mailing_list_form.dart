// ignore_for_file: avoid_print

import 'package:example/docs/mailing_list/mailing_list.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class MailingListFormWidget extends StatefulWidget {
  const MailingListFormWidget({Key? key}) : super(key: key);

  @override
  State<MailingListFormWidget> createState() => _MailingListFormWidgetState();
}

class _MailingListFormWidgetState extends State<MailingListFormWidget> {
  MailingList _model = MailingList(emailList: [
    'test@gmail.com',
    'wrong email',
  ]);

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Mailing list'),
      body: MailingListFormBuilder(
        model: _model,
        builder: (context, formModel, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ReactiveMailingListFormArrayBuilder<String>(
                      formControl: formModel.emailListControl,
                      itemBuilder: (context, i, item, formModel) {
                        return ReactiveTextField<String>(
                          formControlName: i.toString(),
                          validationMessages: {
                            'email': (_) => 'Invalid email',
                          },
                          decoration: InputDecoration(
                            labelText: 'Email $i',
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      formModel.addEmailListItem('');
                    },
                    child: const Text('add'),
                  )
                ],
              ),
              const SizedBox(height: 16),
              ReactiveMailingListFormConsumer(
                builder: (context, formModel, child) {
                  final errorText = {
                    'emailDuplicates': 'Two identical emails are in the list',
                  };
                  final errors = <String, dynamic>{};

                  formModel.emailListControl.errors.forEach((key, value) {
                    final intKey = int.tryParse(key);
                    if (intKey == null) {
                      errors[key] = value;
                    }
                  });
                  if (formModel.emailListControl.hasErrors &&
                      errors.isNotEmpty) {
                    return Text(errorText[errors.entries.first.key] ?? '');
                  } else {
                    return Container();
                  }
                },
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      formModel.reset();
                    },
                    child: const Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _model = MailingList(emailList: [
                          'updateSetState1@gmail.com',
                          'updateSetState2@email.com',
                        ]);
                      });
                    },
                    child: const Text('Update `setState` 2 pcs.'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _model = MailingList(emailList: [
                          'updateSetState1@gmail.com',
                          'updateSetState2@email.com',
                          'updateSetState3@email.com',
                        ]);
                      });
                    },
                    child: const Text('Update `setState` 3 pcs.'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      formModel.reset(
                        value: MailingList(emailList: [
                          'update1@gmail.com2',
                          'update2@email.com',
                          'update3@email.com',
                        ]),
                      );
                    },
                    child: const Text('Update'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formModel.form.valid) {
                        debugPrint(formModel.model.toString());
                      } else {
                        formModel.form.markAllAsTouched();
                      }
                    },
                    child: const Text('Sign Up'),
                  ),
                  ReactiveMailingListFormConsumer(
                    builder: (context, formModel, child) {
                      return ElevatedButton(
                        onPressed: formModel.form.valid ? () {} : null,
                        child: const Text('Submit'),
                      );
                    },
                  ),
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
