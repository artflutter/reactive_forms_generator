import 'package:flutter/widgets.dart';

import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login.gform.dart';

Map<String, dynamic>? required(AbstractControl<dynamic> control) {
  return Validators.required(control);
}

@ReactiveFormAnnotation()
class Login {
  @FormControlAnnotation(
    validators: const [
      required,
    ],
  )
  final String email;

  @FormControlAnnotation(
    validators: const [
      required,
    ],
  )
  final String password;

  Login({
    this.email = 'default@e.mail',
    required this.password,
  });
}
