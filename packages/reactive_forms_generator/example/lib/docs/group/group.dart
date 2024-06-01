import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'group.gform.dart';

@Rf(output: false)
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

@RfGroup()
class Personal {
  final String? name;

  final String? email;

  Personal({
    @RfControl<String>() this.name,
    @RfControl<String>() this.email,
  });
}

@RfGroup()
class Phone {
  final String? phoneNumber;

  final String? countryIso;

  Phone({
    @RfControl<String>() this.phoneNumber,
    @RfControl<String>() this.countryIso,
  });
}

@RfGroup()
class Address {
  final String? street;

  final String? city;

  final String? zip;

  Address({
    @RfControl<String>() this.street,
    @RfControl<String>() this.city,
    @RfControl<String>() this.zip,
  });
}
