import 'package:example/docs/delivery_list/delivery_list.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart' hide ReactiveTextField;
import 'package:reactive_text_field/reactive_text_field.dart';

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
                          children: formModel.deliveryListDeliveryPointForm
                              .asMap()
                              .map((i, deliveryPoint) {
                                print(deliveryPoint.nameControlPath());
                                return MapEntry(
                                    i,
                                    Column(
                                      children: [
                                        ReactiveTextField<String>(
                                          formControl:
                                              deliveryPoint.nameControl,
                                          validationMessages: (_) => {
                                            ValidationMessage.required:
                                                'Must not be empty',
                                          },
                                          decoration: InputDecoration(
                                            labelText: 'Name ${i}',
                                          ),
                                        ),
                                        ReactiveTextField<String>(
                                          formControl: deliveryPoint
                                              .addressForm.streetControl,
                                          validationMessages: (_) => {
                                            ValidationMessage.required:
                                                'Must not be empty',
                                          },
                                          decoration: InputDecoration(
                                            labelText: 'Street ${i}',
                                          ),
                                        ),
                                        ReactiveTextField<String>(
                                          formControl: deliveryPoint
                                              .addressForm.cityControl,
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
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
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
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ReactiveDeliveryListFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              child: Text('Submit'),
                              onPressed: formModel.form.valid ? () {} : null,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ReactiveDeliveryListFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              child: Text('Patch'),
                              onPressed: () {
                                formModel.deliveryListValuePatch([
                                  DeliveryPoint(
                                    name: 'patched',
                                    address: Address(
                                      city: 'patchedCity',
                                      street: 'patchedStreet',
                                    ),
                                  ),
                                ]);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ReactiveDeliveryListFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              child: Text('Update'),
                              onPressed: () {
                                formModel.deliveryListValueUpdate([
                                  DeliveryPoint(
                                    name: 'updated1',
                                    address: Address(
                                      city: 'updatedCity1',
                                      street: 'updatedStreet1',
                                    ),
                                  ),
                                  DeliveryPoint(
                                    name: 'updated2',
                                    address: Address(
                                      city: 'updatedCity2',
                                      street: 'updatedStreet2',
                                    ),
                                  ),
                                ]);
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ReactiveDeliveryListFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              child: Text('Empty'),
                              onPressed: () {
                                formModel.deliveryListValueUpdate([]);
                              },
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ReactiveDeliveryListFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              child: Text('Clear'),
                              onPressed: () {
                                formModel.deliveryListClear();
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  ReactiveDeliveryListFormConsumer(
                    builder: (context, formModel, child) {
                      return ElevatedButton(
                        child: Text('Reset'),
                        onPressed: () {
                          formModel.deliveryListValueReset([]);
                        },
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
