import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

@ReactiveFormAnnotation()
class DeliveryList {
  final List<DeliveryPoint> deliveryList;

  DeliveryList({
    @FormArrayAnnotation() this.deliveryList = const [],
  });
}

@FormGroupAnnotation()
class DeliveryPoint {
  final String name;

  final Address? address;

  DeliveryPoint({
    @FormControlAnnotation(
      validators: const [requiredValidator],
    )
        this.name = '',
    this.address,
  });
}

@FormGroupAnnotation()
class Address {
  final String? street;

  final String? city;

  Address({
    @FormControlAnnotation(
      validators: const [requiredValidator],
    )
        this.street,
    @FormControlAnnotation()
        this.city,
  });
}
