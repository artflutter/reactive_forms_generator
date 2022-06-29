import 'package:reactive_forms/reactive_forms.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'array_nullable.gform.dart';

@ReactiveFormAnnotation()
class ArrayNullable {
  final List<String> emailList;

  final List<bool?> fruitList;

  final List<String?>? vegetablesList;

  final List<String?>? someList;

  ArrayNullable({
    @FormArrayAnnotation(
      validators: [
        requiredValidator,
      ],
    )
        required this.emailList,
    @FormArrayAnnotation()
        this.fruitList = const [],
    @FormArrayAnnotation()
        this.vegetablesList,
    @FormControlAnnotation<List<String?>>()
        this.someList,
  });
}
