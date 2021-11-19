import 'package:example/forms/array.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class ArrayNullableFormWidget extends StatelessWidget {
  final contacts = [
    'john@email.com',
    'susan@email.com',
    'caroline@email.com',
  ];

  final fruits = [
    'apple',
    'banana',
    'orange',
  ];

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: Text('Array nullable'),
      body: ArrayNullableFormBuilder(
        model: ArrayNullable(
          emailList: contacts,
          fruitList: fruits.map((e) => false).toList(),
        ),
        builder: (context, formModel, child) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: ReactiveFormArray<String>(
                      formArray: formModel.emailListControl,
                      builder: (context, formArray, child) => Column(
                        children: formModel.emailListValue
                            .map(
                              (email) => ReactiveTextField<String>(
                                formControlName: formModel.emailListValue
                                    .indexOf(email)
                                    .toString(),
                                decoration: InputDecoration(labelText: 'Email'),
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      final newEmail = 'other${contacts.length + 1}@email.com';
                      contacts.add(newEmail);
                      formModel.emailListControl.add(
                        FormControl<String>(value: newEmail),
                      );
                    },
                    child: const Text('add'),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: ReactiveFormArray<bool>(
                      formArray: formModel.fruitListControl,
                      builder: (context, formArray, child) => Column(
                        children: fruits.map(
                          (fruit) {
                            return ReactiveCheckboxListTile(
                              formControlName: fruits.indexOf(fruit).toString(),
                              title: Text(fruit),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      final newFruit = 'otherFruit${fruits.length + 1}';
                      fruits.add(newFruit);
                      formModel.fruitListControl.add(
                        FormControl<bool>(value: false),
                      );
                    },
                    child: const Text('add'),
                  )
                ],
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
              ReactiveArrayNullableFormConsumer(
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
