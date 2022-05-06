import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'renamed_basic.gform.dart';

@ReactiveFormAnnotation(name: 'SomeWiredName')
class RenamedBasic {
  final String email;

  final String password;

  RenamedBasic({
    @FormControlAnnotation<String>(
      validators: [requiredValidator],
    )
        this.email = '',
    @FormControlAnnotation<String>(
      validators: [requiredValidator],
    )
        this.password = '',
  });
}
