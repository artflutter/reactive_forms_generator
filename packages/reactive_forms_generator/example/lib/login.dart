import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  return Validators.required(control);
}

@ReactiveFormAnnotation()
class Login {
  @FormControlAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final String email;

  @FormControlAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final String password;

  Login({
    this.email = 'default@e.mail',
    required this.password,
  });
}
