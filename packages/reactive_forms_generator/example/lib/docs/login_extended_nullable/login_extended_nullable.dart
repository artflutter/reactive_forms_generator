import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login_extended_nullable.gform.dart';

@ReactiveFormAnnotation()
class LoginExtendedNullable {
  final String? email;

  final String? password;

  final bool? rememberMe;

  final String? theme;

  final UserMode? mode;

  final int? timeout;

  final double? height;

  LoginExtendedNullable({
    @FormControlAnnotation<String>(validators: []) this.email,
    @FormControlAnnotation() this.password,
    @FormControlAnnotation<bool>() this.rememberMe,
    @FormControlAnnotation<String>() this.theme,
    @FormControlAnnotation<UserMode>() this.mode,
    @FormControlAnnotation<int>() this.timeout,
    @FormControlAnnotation<double>() this.height,
  });
}
