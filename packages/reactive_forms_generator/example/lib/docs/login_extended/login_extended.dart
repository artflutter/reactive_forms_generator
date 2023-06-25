import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login_extended.gform.dart';

@ReactiveFormAnnotation()
@FormGroupAnnotation(
  validators: [AllFieldsRequired()],
)
class LoginExtended {
  final String email;

  final String password;

  final bool rememberMe;

  final String theme;

  final UserMode mode;

  final int timeout;

  final double height;

  final String? unAnnotated;

  LoginExtended({
    @FormControlAnnotation(
      validators: [RequiredValidator()],
      asyncValidators: [UniqueEmailAsyncValidator()],
    )
    this.email = '',
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    required this.password,
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    required this.rememberMe,
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    required this.theme,
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    required this.mode,
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    required this.timeout,
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    required this.height,
    this.unAnnotated,
  });
}
