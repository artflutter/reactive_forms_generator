import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'model_implements.gform.dart';

abstract class Email {
  final String email;

  Email({this.email = ''});
}

abstract class Password {
  final String password;

  Password({this.password = ''});
}

@ReactiveFormAnnotation()
class ModelImplements implements Email, Password {
  @override
  final String email;

  @override
  final String password;

  ModelImplements({
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    this.email = '',
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    this.password = '',
  });
}
