import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class ArrayNullable {
  @FormArrayAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final List<String> emailList;

  @FormArrayAnnotation()
  final List<bool?> fruitList;

  @FormArrayAnnotation()
  final List<String?>? vegetablesList;

  @FormControlAnnotation()
  final List<String?>? someList;

  ArrayNullable({
    required this.emailList,
    this.fruitList = const [],
    this.vegetablesList,
    this.someList,
  });
}
