import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  return Validators.required(control);
}

@FormGroupAnnotation()
class UserData {
  @FormControlAnnotation()
  final String firstName;

  @FormControlAnnotation()
  final String lastName;

  @FormArrayAnnotation()
  final List<String> skills;

  UserData({
    required this.firstName,
    required this.lastName,
    required this.skills,
  });
}

@ReactiveFormAnnotation()
class Login {
  @FormControlAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final String email;

  @FormControlAnnotation()
  final String? clientId;

  @FormControlAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final String password;

  final UserData userData;

  @FormArrayAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final List<UserData> friends;

  @FormArrayAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final List<String> categories;

  Login({
    this.email = 'default@e.mail',
    required this.password,
    required this.categories,
    required this.userData,
    required this.friends,
    this.clientId,
  });
}
