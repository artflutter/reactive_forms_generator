import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'group_output.gform.dart';

@Rf(output: true)
class GroupO {
  final PersonalO? personal;

  final PhoneO? phone;

  final AddressO? address;

  final AddressO? address2;

  GroupO({
    this.personal,
    this.phone,
    this.address,
    this.address2,
  });
}

@RfGroup()
class PersonalO {
  final String? name;

  final String? email;

  PersonalO({
    @RfControl<String>() this.name,
    @RfControl<String>() this.email,
  });
}

@RfGroup()
class PhoneO {
  final String? phoneNumber;

  final String? countryIso;

  PhoneO({
    @RfControl<String>() this.phoneNumber,
    @RfControl<String>() this.countryIso,
  });
}

@RfGroup()
class AddressO {
  final String? street;

  final String? city;

  final String? zip;

  AddressO({
    @RfControl<String>() this.street,
    @RfControl<String>() this.city,
    @RfControl<String>() this.zip,
  });
}
