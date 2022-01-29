import 'package:example/docs/delivery_list/delivery_list.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class DeliveryListFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: Text('Delivery list'),
      body: DeliveryListFormBuilder(
        model: DeliveryList(),
        builder: (context, formModel, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ReactiveFormArray<Map<String, Object?>>(
                      formArray: formModel.deliveryListControl,
                      builder: (context, formArray, child) {
                        return Column(
                          children: formModel.deliveryListValue
                              .asMap()
                              .map((i, deliveryPoint) {
                                return MapEntry(
                                    i,
                                    Column(
                                      children: [
                                        ReactiveTextField<String>(
                                          formControlName: '${i}.name',
                                          validationMessages: (_) => {
                                            ValidationMessage.required:
                                                'Must not be empty',
                                          },
                                          decoration: InputDecoration(
                                            labelText: 'Name ${i}',
                                          ),
                                        ),
                                        ReactiveTextField<String>(
                                          formControlName:
                                              '${i}.address.street',
                                          validationMessages: (_) => {
                                            ValidationMessage.required:
                                                'Must not be empty',
                                          },
                                          decoration: InputDecoration(
                                            labelText: 'Street ${i}',
                                          ),
                                        ),
                                        ReactiveTextField<String>(
                                          formControlName: '${i}.address.city',
                                          validationMessages: (_) => {
                                            ValidationMessage.required:
                                                'Must not be empty',
                                          },
                                          decoration: InputDecoration(
                                            labelText: 'City ${i}',
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () => formModel
                                              .removeDeliveryListItemAtIndex(i),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Icon(Icons.arrow_upward),
                                              Text('Remove ${i}'),
                                              Icon(Icons.arrow_upward),
                                            ],
                                          ),
                                        )
                                      ],
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
                      formModel.addDeliveryListItem(DeliveryPoint());
                    },
                    child: const Text('add'),
                  )
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
                        print(formModel.deliveryListValue);
                        print(formModel.model);
                      } else {
                        formModel.form.markAllAsTouched();
                      }
                    },
                    child: const Text('Sign Up'),
                  ),
                  ReactiveDeliveryListFormConsumer(
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
