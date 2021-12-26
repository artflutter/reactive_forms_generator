import 'package:example/docs/arrays/mailing_list.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class MailingListFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: Text('Mailing list'),
      body: MailingListFormBuilder(
        model: MailingList(emailList: [
          'test@gmail.com',
          'wrond email',
        ]),
        builder: (context, formModel, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ReactiveFormArray<String>(
                      formArray: formModel.emailListControl,
                      builder: (context, formArray, child) {
                        return Column(
                          children: formModel.emailListValue
                              .asMap()
                              .map((i, email) {
                                return MapEntry(
                                    i,
                                    ReactiveTextField<String>(
                                      formControlName: i.toString(),
                                      validationMessages: (_) => {
                                        'email': 'Invalid email',
                                      },
                                      decoration: InputDecoration(
                                          labelText: 'Email ${i}'),
                                    ));
                              })
                              .values
                              .toList(),
                        );
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      formModel.addEmailListItem('');
                    },
                    child: const Text('add'),
                  )
                ],
              ),
              SizedBox(height: 16),
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
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      formModel.resetValue(MailingList(emailList: [
                        'test@gmail.com2',
                        'wrond email3',
                      ]));
                    },
                    child: const Text('Reset'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (formModel.form.valid) {
                        print(formModel.model);
                      } else {
                        formModel.form.markAllAsTouched();
                      }
                    },
                    child: const Text('Sign Up'),
                  ),
                  ReactiveMailingListFormConsumer(
                    builder: (context, formModel, child) {
                      return ElevatedButton(
                        child: Text('Submit'),
                        onPressed: formModel.form.valid ? () {} : null,
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
