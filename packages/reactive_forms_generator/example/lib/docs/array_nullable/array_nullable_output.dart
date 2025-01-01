import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'array_nullable_output.gform.dart';

@Rf(output: true)
class ArrayNullableO {
  final List<String> emailList;

  final List<bool?> fruitList;

  final List<String?>? vegetablesList;

  final List<String?>? someList;

  final List<UserMode?>? modeList;

  ArrayNullableO({
    @RfArray(
      validators: [RequiredValidator()],
    )
    required this.emailList,
    @RfArray() this.fruitList = const [],
    @RfArray() this.vegetablesList,
    @RfArray() this.modeList,
    @RfControl<List<String?>>() this.someList,
  });
}
