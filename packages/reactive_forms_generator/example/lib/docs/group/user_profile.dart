import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class UserProfile {
  @FormControlAnnotation(
    validators: const [requiredValidator],
  )
  final String firstName;

  @FormControlAnnotation(
    validators: const [requiredValidator],
  )
  final String lastName;

  final Address? home;

  final Address? office;

  UserProfile({
    required this.firstName,
    required this.lastName,
    this.home,
    this.office,
  });
}

@FormGroupAnnotation()
class Address {
  @FormControlAnnotation()
  final String? street;

  @FormControlAnnotation()
  final String? city;

  @FormControlAnnotation()
  final String? zip;

  Address({
    this.street,
    this.city,
    this.zip,
  });
}
