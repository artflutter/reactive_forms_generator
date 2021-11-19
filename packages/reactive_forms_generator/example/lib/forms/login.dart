import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login.gform.dart';

@ReactiveFormAnnotation()
class Login {
  final String email;

  final String password;

  final bool rememberMe;

  final String theme;

  final UserMode mode;

  final int timeout;

  final double height;

  final String? unAnnotated;

  Login({
    @FormControlAnnotation(
      validators: const [
        requiredValidator,
      ],
    )
        this.email = 'default@e.mail',
    @FormControlAnnotation(
      validators: const [
        requiredValidator,
      ],
    )
        required this.password,
    @FormControlAnnotation(
      validators: const [
        requiredValidator,
      ],
    )
        required this.rememberMe,
    @FormControlAnnotation(
      validators: const [
        requiredValidator,
      ],
    )
        required this.theme,
    @FormControlAnnotation(
      validators: const [
        requiredValidator,
      ],
    )
        required this.mode,
    @FormControlAnnotation(
      validators: const [
        requiredValidator,
      ],
    )
        required this.timeout,
    @FormControlAnnotation(
      validators: const [
        requiredValidator,
      ],
    )
        required this.height,
    this.unAnnotated,
  });
}
