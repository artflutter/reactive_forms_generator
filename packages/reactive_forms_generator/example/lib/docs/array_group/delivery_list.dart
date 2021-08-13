import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class DeliveryList {
  @FormArrayAnnotation()
  final List<DeliveryPoint> deliveryList;

  DeliveryList({
    this.deliveryList = const [],
  });
}

@FormGroupAnnotation()
class DeliveryPoint {
  @FormControlAnnotation(
    validators: const [requiredValidator],
  )
  final String name;

  final Address? address;

  DeliveryPoint({
    this.name = '',
    this.address,
  });
}

@FormGroupAnnotation()
class Address {
  @FormControlAnnotation(
    validators: const [requiredValidator],
  )
  final String? street;

  @FormControlAnnotation()
  final String? city;

  Address({
    this.street,
    this.city,
  });
}
