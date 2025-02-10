import 'package:example/helpers.dart';
import 'package:equatable/equatable.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart'
    hide MustMatchValidator;

part 'login_output.gform.dart';

@Rf(
  output: true,
  requiredValidators: [
    ...defaultRequiredValidators,
    'RequiredValidator2()',
  ],
)
@RfGroup(
  validators: [MustMatchValidator()],
)
class LoginO extends Equatable {
  final String? email;

  final String? password;

  const LoginO({
    @RfControl(
      validators: [RequiredValidator(), RequiredValidator()],
    )
    this.email,
    @RfControl(
      validators: [RequiredValidator2()],
    )
    this.password,
  });

  @override
  List<Object?> get props => [email, password];
}
