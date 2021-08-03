import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

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

  @FormControlAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final bool rememberMe;

  @FormControlAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final String theme;

  @FormControlAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final UserMode mode;

  @FormControlAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final int timeout;

  @FormControlAnnotation(
    validators: const [
      requiredValidator,
    ],
  )
  final double height;

  Login({
    this.email = 'default@e.mail',
    required this.password,
    required this.rememberMe,
    required this.theme,
    required this.mode,
    required this.timeout,
    required this.height,
  });
}
