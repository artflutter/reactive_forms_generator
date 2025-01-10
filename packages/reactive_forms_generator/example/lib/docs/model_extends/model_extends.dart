import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'model_extends.gform.dart';

abstract class Email {
  final String email;

  Email({this.email = ''});
}

@Rf(output: false)
class ModelExtends extends Email {
  final String password;

  ModelExtends({
    @RfControl(
      validators: [RequiredValidator()],
    )
    super.email = "",
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.password = "",
  });
}
