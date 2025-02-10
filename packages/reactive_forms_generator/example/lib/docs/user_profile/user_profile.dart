import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'user_profile.gform.dart';

@Rf(output: false)
class UserProfile {
  final String id;

  final String firstName;

  final String lastName;

  final Address home;

  final Address? office;

  UserProfile({
    required this.id,
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.firstName = "",
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.lastName = "",
    required this.home,
    this.office,
  });
}

@RfGroup()
class Address {
  final String? street;

  final String? city;

  final String? zip;

  Address({
    @RfControl<String>() this.street,
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.city,
    @RfControl<String>() this.zip,
  });
}
