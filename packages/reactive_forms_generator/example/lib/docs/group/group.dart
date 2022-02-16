import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'group.gform.dart';

@ReactiveFormAnnotation()
class Group {
  final Personal? personal;

  final Phone? phone;

  final Address? address;

  final Address? address2;

  Group({
    this.personal,
    this.phone,
    this.address,
    this.address2,
  });
}

@FormGroupAnnotation()
class Personal {
  final String? name;

  final String? email;

  Personal({
    @FormControlAnnotation() this.name,
    @FormControlAnnotation() this.email,
  });
}

@FormGroupAnnotation()
class Phone {
  final String? phoneNumber;

  final String? countryIso;

  Phone({
    @FormControlAnnotation() this.phoneNumber,
    @FormControlAnnotation() this.countryIso,
  });
}

@FormGroupAnnotation()
class Address {
  final String? street;

  final String? city;

  final String? zip;

  Address({
    @FormControlAnnotation() this.street,
    @FormControlAnnotation() this.city,
    @FormControlAnnotation() this.zip,
  });
}
