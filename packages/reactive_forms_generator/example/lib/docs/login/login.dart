import 'package:reactive_forms/reactive_forms.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login.gform.dart';

@ReactiveFormAnnotation()
class Basic {
  final String email;

  final String password;

  Basic({
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
