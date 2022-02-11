import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'user_profile.gform.dart';

@ReactiveFormAnnotation()
class UserProfile {
  final String id;

  final String firstName;

  final String lastName;

  final Address home;

  final Address? office;

  UserProfile({
    required this.id,
    @FormControlAnnotation(
      validators: const [requiredValidator],
    )
        this.firstName = '',
    @FormControlAnnotation(
      validators: const [requiredValidator],
    )
        this.lastName = '',
    required this.home,
    this.office,
  });
}

@FormGroupAnnotation()
class Address {
  final String? street;

  final String? city;

  final String? zip;

  Address({
    @FormControlAnnotation()
        this.street,
    @FormControlAnnotation(
      validators: const [requiredValidator],
    )
        this.city,
    @FormControlAnnotation()
        this.zip,
  });
}
