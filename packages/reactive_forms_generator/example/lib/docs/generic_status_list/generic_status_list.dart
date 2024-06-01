import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'generic_status_list.gform.dart';

@Rf(output: false)
class StatusList<T extends Enum> {
  final List<T?> list;

  StatusList({
    @RfArray<T>() this.list = const [],
  });
}
