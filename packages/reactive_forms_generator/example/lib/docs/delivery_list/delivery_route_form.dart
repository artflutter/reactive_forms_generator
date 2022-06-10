// ignore_for_file: avoid_print

import 'package:example/docs/delivery_list/delivery_list.dart';
import 'package:example/docs/delivery_list/labels.dart';
import 'package:example/docs/delivery_list/mocks.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart' hide ReactiveTextField;
import 'package:reactive_text_field/reactive_text_field.dart';

class DeliveryListFormWidget extends StatelessWidget {
  final ValueChanged<DeliveryList>? onChange;

  const DeliveryListFormWidget({Key? key, this.onChange}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Delivery list'),
      body: DeliveryListFormBuilder(
        model: const DeliveryList(),
        builder: (context, formModel, child) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ReactiveDeliveryListFormFormGroupArrayBuilder<
                        DeliveryPointForm>(
                      extended: formModel.deliveryListExtendedControl,
                      itemBuilder: (context, i, formItem, _) {
                        return Column(
                          children: [
                            ReactiveTextField<String>(
                              key: name.itemIndexKey(i),
                              formControl: formItem?.nameControl,
                              validationMessages: (_) => {
                                ValidationMessage.required: name.itemError(
                                  i,
                                  errorRequired,
                                ),
                              },
                              decoration: InputDecoration(
                                labelText: name.itemIndex(i),
                              ),
                            ),
                            ReactiveTextField<String>(
                              key: street.itemIndexKey(i),
                              formControl: formItem?.addressForm.streetControl,
                              validationMessages: (_) => {
                                ValidationMessage.required: street.itemError(
                                  i,
                                  errorRequired,
                                ),
                              },
                              decoration: InputDecoration(
                                labelText: street.itemIndex(i),
                              ),
                            ),
                            ReactiveTextField<String>(
                              key: city.itemIndexKey(i),
                              formControl: formItem?.addressForm.cityControl,
                              decoration: InputDecoration(
                                labelText: city.itemIndex(i),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () =>
                                  formModel.removeDeliveryListItemAtIndex(i),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.arrow_upward),
                                  Text(remove.itemIndex(i)),
                                  const Icon(Icons.arrow_upward),
                                ],
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    onPressed: () {
                      formModel.addDeliveryListItem(emptyDeliveryPoint);
                    },
                    child: Text(add.name),
                  )
                ],
              ),
              const SizedBox(height: 16),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            if (formModel.form.valid) {
                              debugPrint(
                                  formModel.deliveryListValue.toString());
                              debugPrint(formModel.model.toString());
                              onChange?.call(formModel.model);
                            } else {
                              formModel.form.markAllAsTouched();
                            }
                          },
                          child: Text(submit.name),
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: SizedBox.shrink(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: ReactiveDeliveryListFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              child: Text(patch.name),
                              onPressed: () {
                                formModel.deliveryListValuePatch(
                                  patchPointList,
                                );
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ReactiveDeliveryListFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              child: Text(update.name),
                              onPressed: () {
                                formModel.deliveryListValueUpdate(
                                  updatePointList,
                                );
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
                              child: Text(empty.name),
                              onPressed: () {
                                formModel.deliveryListValueUpdate([]);
                              },
                            );
                          },
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ReactiveDeliveryListFormConsumer(
                          builder: (context, formModel, child) {
                            return ElevatedButton(
                              child: Text(clear.name),
                              onPressed: () {
                                formModel.deliveryListClear();
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
                              child: Text(insertAt.itemIndex(1)),
                              onPressed: () {
                                formModel.deliveryListInsert(
                                  1,
                                  insertedDeliveryPoint,
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
