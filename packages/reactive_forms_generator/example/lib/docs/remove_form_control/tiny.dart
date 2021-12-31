import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'tiny.gform.dart';

@ReactiveFormAnnotation()
class Tiny {
  final String email;

  // If you might delete a field in a form widget,
  // you'll have to make it optional
  final String? password;

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
