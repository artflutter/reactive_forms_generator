import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'renamed_basic.gform.dart';

@ReactiveFormAnnotation(name: 'SomeWiredName')
class RenamedBasic {
  final String email;

  final String password;

  RenamedBasic({
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
