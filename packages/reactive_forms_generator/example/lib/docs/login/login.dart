import 'package:equatable/equatable.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login.gform.dart';

@ReactiveFormAnnotation()
@FormGroupAnnotation(
  validators: [mustMatch],
)
class Login extends Equatable {
  final String email;

  final String password;

  const Login({
    @FormControlAnnotation(
      validators: [requiredValidator],
      validatorsTest: [RequiredValidator<String>()],
    )
        this.email = '',
    @FormControlAnnotation(
      validators: [requiredValidator],
    )
        this.password = '',
  });

  @override
  List<Object?> get props => [email, password];
}
