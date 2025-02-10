import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'renamed_basic_output.gform.dart';

@Rf(output: true, name: 'SomeWiredName')
class RenamedBasicO {
  final String? email;

  final String? password;

  RenamedBasicO({
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.email,
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.password,
  });
}
