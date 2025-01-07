import 'package:example/docs/delivery_list/delivery_list.dart';
import 'package:example/docs/delivery_list/labels.dart';
import 'package:example/docs/delivery_list/mocks.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms/reactive_forms.dart';

class DeliveryListFormWidget extends StatelessWidget {
  final ValueChanged<DeliveryList>? onChange;

  const DeliveryListFormWidget({super.key, this.onChange});

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
                            Row(
                              children: [
                                Expanded(
                                  child: ReactiveTextField<String>(
                                    key: name.itemIndexKey(i),
                                    formControl: formItem?.nameControl,
                                    validationMessages: {
                                      ValidationMessage.required: (_) =>
                                          name.itemError(
                                            i,
                                            errorRequired,
                                          ),
                                    },
                                    decoration: InputDecoration(
                                      labelText: name.itemIndex(i),
                                    ),
                                  ),
                                ),
                                IconButton(
                                  key: toggleEnableDisable.itemKey,
                                  onPressed: () {
                                    formModel.deliveryListDeliveryPointForm[i]
                                        .nameSetDisabled(!formModel
                                            .deliveryListDeliveryPointForm[i]
                                            .nameControl
                                            .disabled);
                                  },
                                  icon: const Icon(
                                    Icons.disabled_by_default_rounded,
                                  ),
                                ),
                              ],
                            ),
                            ReactiveTextField<String>(
                              key: street.itemIndexKey(i),
                              formControl: formItem?.addressForm.streetControl,
                              validationMessages: {
                                ValidationMessage.required: (error) =>
                                    street.itemError(
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
                            ReactiveDeliveryListFormConsumer(
                                builder: (context, formModel, child) {
                              return ElevatedButton(
                                onPressed: formModel.deliveryListControl.enabled
                                    ? () => formModel
                                        .removeDeliveryListItemAtIndex(i)
                                    : null,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const Icon(Icons.arrow_upward),
                                    Text(remove.itemIndex(i)),
                                    const Icon(Icons.arrow_upward),
                                  ],
                                ),
                              );
                            }),
                          ],
                        );
                      },
                    ),
                  ),
                  const SizedBox(width: 16),
                  ReactiveDeliveryListFormConsumer(
                      builder: (context, formModel, child) {
                    return ElevatedButton(
                      onPressed: formModel.deliveryListControl.enabled
                          ? () =>
                              formModel.addDeliveryListItem(emptyDeliveryPoint)
                          : null,
                      child: Text(add.name),
                    );
                  }),
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
                            formModel.submit(onValid: (model) {
                              debugPrint(model.toString());
                              onChange?.call(model);
                            });
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
                        child: ElevatedButton(
                          onPressed: () {
                            formModel.form.markAsEnabled();
                          },
                          child: const Text('Enable'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            formModel.form.markAsDisabled();
                          },
                          child: const Text('Disable'),
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
