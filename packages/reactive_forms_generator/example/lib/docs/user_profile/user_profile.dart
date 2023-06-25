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
      validators: [RequiredValidator()],
    )
    this.firstName = '',
    @FormControlAnnotation(
      validators: [RequiredValidator()],
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
    @FormControlAnnotation<String>() this.street,
    @FormControlAnnotation(
      validators: [RequiredValidator()],
    )
    this.city,
    @FormControlAnnotation<String>() this.zip,
  });
}
