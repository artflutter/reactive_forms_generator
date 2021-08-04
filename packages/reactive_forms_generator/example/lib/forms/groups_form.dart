import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class Group {
  final Personal? personal;

  final Phone? phone;

  final Address? address;

  Group({
    this.personal,
    this.phone,
    this.address,
  });
}

@FormGroupAnnotation()
class Personal {
  @FormControlAnnotation()
  final String? name;

  @FormControlAnnotation()
  final String? email;

  Personal({
    this.name,
    this.email,
  });
}

@FormGroupAnnotation()
class Phone {
  @FormControlAnnotation()
  final String? phoneNumber;

  @FormControlAnnotation()
  final String? countryIso;

  Phone({
    this.phoneNumber,
    this.countryIso,
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
