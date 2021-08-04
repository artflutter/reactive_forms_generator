import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class Tiny {
  @FormControlAnnotation(
    validators: const [requiredValidator],
  )
  final String email;

  @FormControlAnnotation(
    validators: const [requiredValidator],
  )
  final String password;

  Tiny({this.email = '', this.password = ''});
}
