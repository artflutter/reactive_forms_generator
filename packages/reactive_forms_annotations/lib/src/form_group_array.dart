import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class ReactiveFormGroupArrayItemBuilder<T> extends StatelessWidget {
  const ReactiveFormGroupArrayItemBuilder({
    super.key,
    required this.extended,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
  });

  final ExtendedControl<List<Map<String, Object?>?>, List<T>> extended;

  final Widget Function(BuildContext context, List<Widget> itemList)? builder;

  final Widget Function(BuildContext context, int i, T? item) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  @override
  Widget build(BuildContext context) {
    final value = extended;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <T>[])
            .asMap()
            .map((i, item) => MapEntry(i, itemBuilder(context, i, item)))
            .values
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
          return emptyBuilder!(context);
        }

        return builder?.call(context, itemList) ?? Column(children: itemList);
      },
    );
  }
}
