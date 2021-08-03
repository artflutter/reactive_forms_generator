import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class LoginNullable {
  @FormControlAnnotation()
  final String? email;

  @FormControlAnnotation()
  final String? password;

  @FormControlAnnotation()
  final bool? rememberMe;

  @FormControlAnnotation()
  final String? theme;

  @FormControlAnnotation()
  final UserMode? mode;

  @FormControlAnnotation()
  final int? timeout;

  @FormControlAnnotation()
  final double? height;

  LoginNullable({
    this.email,
    this.password,
    this.rememberMe,
    this.theme,
    this.mode,
    this.timeout,
    this.height,
  });
}
