// ignore_for_file: avoid_print

import 'package:example/docs/nested_generics/product.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class NestedGenericFormWidget extends StatefulWidget {
  const NestedGenericFormWidget({super.key});

  @override
  NestedGenericFormWidgetState createState() => NestedGenericFormWidgetState();
}

class NestedGenericFormWidgetState extends State<NestedGenericFormWidget> {
  String tagsAsString = '';
  String tagsAsInt = '';

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Nested Generic Form'),
      body: Column(children: [
        ProductDetailsFormBuilder<Product, Cart>(
          model: ProductDetails<Product, Cart>(
              id: Id<Product, Cart>(companyName: 'company', name: 'name'),
              description: 'description'),
          builder: (context, formModel, child) {
            return Column(
              children: [
                ReactiveFormField<String, String>(
                  builder: (field) {
                    return Column(
                      children: [
                        ElevatedButton(
                            child: const Text('add tag'),
                            onPressed: () {
                              field.didChange('new description');
                            }),
                        ElevatedButton(
                            child: const Text('remove description'),
                            onPressed: () {
                              field.didChange('');
                            }),
                        Text('field value type: ${field.value.runtimeType}'),
                        Text(tagsAsString)
                      ],
                    );
                  },
                  formControl: formModel.descriptionControl,
                ),
                ReactiveProductDetailsFormConsumer(
                  builder: (context, formModel, child) {
                    return ElevatedButton(
                      onPressed: () {
                        formModel.submit(onValid: (model) {
                          tagsAsString = model.toString();
                          setState(() {});
                        });
                      },
                      child: const Text('Submit'),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ]),
    );
  }
}
