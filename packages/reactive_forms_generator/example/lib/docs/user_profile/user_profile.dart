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
    @FormControlAnnotation<String>(
      validators: [requiredValidator],
    )
        this.firstName = '',
    @FormControlAnnotation<String>(
      validators: [requiredValidator],
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
    @FormControlAnnotation<String>()
        this.street,
    @FormControlAnnotation<String>(
      validators: [requiredValidator],
    )
        this.city,
    @FormControlAnnotation<String>()
        this.zip,
  });
}
