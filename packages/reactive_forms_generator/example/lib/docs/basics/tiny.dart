import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'tiny.gform.dart';

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
