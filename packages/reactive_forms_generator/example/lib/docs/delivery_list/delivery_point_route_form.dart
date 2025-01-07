// ignore_for_file: avoid_print

import 'package:example/docs/delivery_list/delivery_list.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class DeliveryPointWidget extends StatelessWidget {
  const DeliveryPointWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Delivery list'),
      body: StandaloneDeliveryPointFormBuilder(
        model: const DeliveryPoint(),
        builder: (context, formModel, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  ReactiveTextField<String>(
                    formControl: formModel.nameControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    decoration: const InputDecoration(
                      labelText: 'Name',
                    ),
                  ),
                  ReactiveTextField<String>(
                    formControl: formModel.addressForm.streetControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    decoration: const InputDecoration(
                      labelText: 'Street',
                    ),
                  ),
                  ReactiveTextField<String>(
                    formControl: formModel.addressForm.cityControl,
                    validationMessages: {
                      ValidationMessage.required: (_) => 'Required'
                    },
                    decoration: const InputDecoration(
                      labelText: 'City',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      formModel.submit(onValid: (model) {
                        debugPrint(model.toString());
                      });
                    },
                    child: const Text('Sign Up'),
                  ),
                  ReactiveStandaloneDeliveryPointFormConsumer(
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
