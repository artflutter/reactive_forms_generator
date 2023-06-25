// ignore_for_file: implementation_imports
import 'package:reactive_forms/src/validators/required_validator.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'model_extends.gform.dart';

abstract class Email {
  final String email;

  Email({this.email = ''});
}

@ReactiveFormAnnotation()
class ModelExtends extends Email {
  final String password;

  ModelExtends({
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    super.email = '',
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    this.password = '',
  });
}
