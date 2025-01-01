import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'user_profile_output.gform.dart';

@Rf(output: true)
class UserProfileO {
  final String id;

  final String? firstName;

  final String? lastName;

  final AddressO home;

  final AddressO? office;

  UserProfileO({
    required this.id,
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.firstName,
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.lastName,
    required this.home,
    this.office,
  });
}

@RfGroup()
class AddressO {
  final String? street;

  final String? city;

  final String? zip;

  AddressO({
    @RfControl<String>() this.street,
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.city,
    @RfControl<String>() this.zip,
  });
}
