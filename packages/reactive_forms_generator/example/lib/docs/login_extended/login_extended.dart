import 'package:reactive_forms/reactive_forms.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login_extended.gform.dart';

@ReactiveFormAnnotation()
@FormGroupAnnotation<LoginExtendedForm>(
  validators: [
    allFieldsRequired,
  ],
  validatorsTyped: [
    allFieldsRequiredTyped,
  ],
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
    @FormControlAnnotation<String>(
      validators: [
        requiredValidator,
      ],
    )
        this.email = '',
    @FormControlAnnotation<String>(
      validators: [
        requiredValidator,
      ],
    )
        required this.password,
    @FormControlAnnotation<bool>(
      validators: [
        requiredValidator,
      ],
    )
        required this.rememberMe,
    @FormControlAnnotation<String>(
      validators: [
        requiredValidator,
      ],
    )
        required this.theme,
    @FormControlAnnotation<UserMode>(
      validators: [
        requiredValidator,
      ],
    )
        required this.mode,
    @FormControlAnnotation<int>(
      validators: [
        requiredValidator,
      ],
    )
        required this.timeout,
    @FormControlAnnotation<double>(
      validators: [
        requiredValidator,
      ],
    )
        required this.height,
    this.unAnnotated,
  });
}
