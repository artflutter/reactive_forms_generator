import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'array_nullable.gform.dart';

@Rf(output: false)
class ArrayNullable {
  final List<String> emailList;

  final List<bool?> fruitList;

  final List<String?>? vegetablesList;

  final List<String?>? someList;

  final List<String> someListRequired;

  final List<UserMode?>? modeList;

  ArrayNullable({
    @RfArray(
      validators: [RequiredValidator()],
    )
    required this.emailList,
    @RfArray() this.fruitList = const [],
    @RfArray() this.vegetablesList,
    @RfArray() this.modeList,
    @RfControl<List<String?>>() this.someList,
    this.someListRequired = const [],
  });
}
