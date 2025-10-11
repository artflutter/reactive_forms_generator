import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class ReactiveFormArrayItemBuilder<T> extends StatelessWidget {
  const ReactiveFormArrayItemBuilder({
    Key? key,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  }) : super(key: key);

  final FormArray<T>? formControl;

  final Widget Function(BuildContext context, List<Widget> itemList)? builder;

  final Widget Function(
    BuildContext context,
    int i,
    FormControl<T> control,
    T? item,
  )
  itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<T> control)? controlFilter;

  @override
  Widget build(BuildContext context) {
    return ReactiveFormArray<T>(
      formArray: formControl,
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) => controlFilter?.call(e.$2 as FormControl<T>) ?? true)
            .toList();

        final itemList = values
            .map((item) {
              return MapEntry(
                item.$1,
                itemBuilder(
                  context,
                  item.$1,
                  formArray.controls[item.$1] as FormControl<T>,
                  item.$2.value,
                ),
              );
            })
            .map((e) => e.value)
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
          return emptyBuilder!(context);
        }

        return builder?.call(context, itemList) ?? Column(children: itemList);
      },
    );
  }
}
