
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'issue_203.gform.dart';

@Rf()
final class LoginFormModel {
  final String domain;
  final String username;
  final String password;
  final bool rememberMe;

  const LoginFormModel({
    @RfControl(validators: [RequiredValidator()]) this.domain = '',
    @RfControl(validators: [RequiredValidator()]) this.username = '',
    @RfControl(validators: [RequiredValidator()]) this.password = '',
    @RfControl<bool>() this.rememberMe = true,
  });
}