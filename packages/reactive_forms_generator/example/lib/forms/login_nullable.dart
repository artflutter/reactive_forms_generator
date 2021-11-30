import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'login_nullable.gform.dart';

@ReactiveFormAnnotation()
class LoginNullable {
  final String? email;

  final String? password;

  final bool? rememberMe;

  final String? theme;

  final UserMode? mode;

  final int? timeout;

  final double? height;

  LoginNullable({
    @FormControlAnnotation() this.email,
    @FormControlAnnotation() this.password,
    @FormControlAnnotation() this.rememberMe,
    @FormControlAnnotation() this.theme,
    @FormControlAnnotation() this.mode,
    @FormControlAnnotation() this.timeout,
    @FormControlAnnotation() this.height,
  });
}
