import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class ArrayNullable {
  final List<String> emailList;

  final List<bool?> fruitList;

  final List<String?>? vegetablesList;

  final List<String?>? someList;

  ArrayNullable({
    @FormArrayAnnotation(
      validators: const [
        requiredValidator,
      ],
    )
        required this.emailList,
    @FormArrayAnnotation()
        this.fruitList = const [],
    @FormArrayAnnotation()
        this.vegetablesList,
    @FormControlAnnotation()
        this.someList,
  });
}
