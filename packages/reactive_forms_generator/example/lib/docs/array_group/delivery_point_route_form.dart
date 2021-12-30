import 'package:example/docs/array_group/delivery_list.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class DeliveryPointWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: Text('Delivery list'),
      body: DeliveryPointFormBuilder(
        model: DeliveryPoint(),
        builder: (context, formModel, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  ReactiveTextField<String>(
                    formControl: formModel.nameControl,
                    validationMessages: (_) => {
                      ValidationMessage.required: 'Must not be empty',
                    },
                    decoration: InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  ReactiveTextField<String>(
                    formControl: formModel.addressForm.streetControl,
                    validationMessages: (_) => {
                      ValidationMessage.required: 'Must not be empty',
                    },
                    decoration: InputDecoration(
                      labelText: 'Street',
                    ),
                  ),
                  ReactiveTextField<String>(
                    formControl: formModel.addressForm.cityControl,
                    validationMessages: (_) => {
                      ValidationMessage.required: 'Must not be empty',
                    },
                    decoration: InputDecoration(
                      labelText: 'City',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
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
                  ReactiveDeliveryPointFormConsumer(
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
