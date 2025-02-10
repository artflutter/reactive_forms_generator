// ignore_for_file: avoid_print

import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

import 'generic.dart';

class GenericFormWidget extends StatefulWidget {
  const GenericFormWidget({super.key});

  @override
  GenericFormWidgetState createState() => GenericFormWidgetState();
}

class GenericFormWidgetState extends State<GenericFormWidget> {
  String tagsAsString = '';
  String tagsAsInt = '';

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
      title: const Text('Generic Form'),
      body: Column(children: [
        TagsFormBuilder<String>(
          model: Tags<String>(tags: ['new tag 0']),
          builder: (context, formModel, child) {
            return Column(
              children: [
                ReactiveFormField<List<String>, List<String>>(
                  builder: (field) {
                    return Column(
                      children: [
                        ElevatedButton(
                            child: const Text('add tag'),
                            onPressed: () {
                              final newList = List<String>.from(
                                  field.value ?? <String>[''])
                                ..add('new tag ${field.value?.length ?? 0}');

                              field.didChange(newList);
                            }),
                        ElevatedButton(
                            child: const Text('remove tag'),
                            onPressed: () {
                              final newList =
                                  List<String>.from(field.value ?? <String>[''])
                                    ..removeLast();
                              field.didChange(newList);
                            }),
                        ...(field.value ?? ['first tag'])
                            .map((e) => Text(e.toString())),
                        Text('field value type: ${field.value.runtimeType}'),
                        Text(tagsAsString)
                      ],
                    );
                  },
                  formControl: formModel.tagsControl,
                ),
                ReactiveTagsFormConsumer(
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
        TagsFormBuilder<int>(
          model: Tags<int>(tags: [0]),
          builder: (context, formModel, child) {
            return Column(
              children: [
                ReactiveFormField<List<int>, List<int>>(
                  builder: (field) {
                    return Column(
                      children: [
                        ElevatedButton(
                            child: const Text('add tag'),
                            onPressed: () {
                              final newList =
                                  List<int>.from(field.value ?? <int>[1])
                                    ..add(field.value?.length ?? 0 + 1);

                              field.didChange(newList);
                            }),
                        ElevatedButton(
                            child: const Text('remove tag'),
                            onPressed: () {
                              final newList =
                                  List<int>.from(field.value ?? <int>[0])
                                    ..removeLast();
                              field.didChange(newList);
                            }),
                        ...(field.value ?? [0]).map((e) => Text(e.toString())),
                        Text('field value type: ${field.value.runtimeType}'),
                        Text(tagsAsInt)
                      ],
                    );
                  },
                  formControl: formModel.tagsControl,
                ),
                ReactiveTagsFormConsumer(
                  builder: (context, formModel, child) {
                    return ElevatedButton(
                      onPressed: () {
                        formModel.submit(onValid: (model) {
                          tagsAsInt = model.toString();
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
        )
      ]),
    );
  }
}
