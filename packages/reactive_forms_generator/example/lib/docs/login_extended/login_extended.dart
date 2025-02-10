import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login_extended.gform.dart';

@Rf(output: false)
@RfGroup(
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
  final List<int> someIntList;

  LoginExtended({
    @RfControl(
      validators: [RequiredValidator()],
      asyncValidators: [UniqueEmailAsyncValidator()],
    )
    this.email = "",
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.password,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.rememberMe,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.theme,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.mode,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.timeout,
    @RfControl(
      validators: [RequiredValidator()],
    )
    required this.height,
    this.unAnnotated,
    this.someIntList = const [],
  });
}
