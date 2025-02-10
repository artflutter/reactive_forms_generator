import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'generic_status_list_output.gform.dart';

@Rf(output: true)
class StatusListO<T extends Enum> {
  final List<T?> list;

  StatusListO({
    @RfArray<T>() this.list = const [],
  });
}
