import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'renamed_basic.gform.dart';

@Rf(name: 'SomeWiredName')
class RenamedBasic {
  final String email;

  final String password;

  RenamedBasic({
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.email = '',
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.password = '',
  });
}
