// ignore_for_file: implementation_imports
import 'package:example/helpers.dart';
import 'package:reactive_forms/src/validators/required_validator.dart';
import 'package:equatable/equatable.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login.gform.dart';

@ReactiveFormAnnotation()
@FormGroupAnnotation(
  validators: [MustMatchValidator()],
)
class Login extends Equatable {
  final String email;

  final String password;

  const Login({
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
        this.email = '',
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
        this.password = '',
  });

  @override
  List<Object?> get props => [email, password];
}
