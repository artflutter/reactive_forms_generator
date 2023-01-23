import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login.gform.dart';

@ReactiveFormAnnotation()
@FormGroupAnnotation(
  validators: [mustMatch],
)
class Login {
  final String email;

  final String password;

  Login({
    @FormControlAnnotation(
      validators: [requiredValidator],
    )
        this.email = '',
    @FormControlAnnotation(
      validators: [requiredValidator],
    )
        this.password = '',
  });
}
