import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class Tiny {
  final String email;

  final String password;

  Tiny({
    @FormControlAnnotation(
      validators: const [requiredValidator],
    )
        this.email = '',
    @FormControlAnnotation(
      validators: const [requiredValidator],
    )
        this.password = '',
  });
}
