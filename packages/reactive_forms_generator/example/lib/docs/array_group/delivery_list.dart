import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:example/helpers.dart';

part 'delivery_list.gform.dart';

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
