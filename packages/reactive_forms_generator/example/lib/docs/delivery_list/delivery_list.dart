import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:example/helpers.dart';

part 'delivery_list.gform.dart';

@ReactiveFormAnnotation()
class DeliveryList {
  final List<DeliveryPoint> deliveryList;
  final List<Client>? clientList;

  DeliveryList({
    @FormArrayAnnotation() this.deliveryList = const [],
    @FormArrayAnnotation() this.clientList,
  });
}

@ReactiveFormAnnotation(name: 'StandaloneDeliveryPoint')
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

enum ClientType { home, office }

@FormGroupAnnotation()
class Client {
  final ClientType clientType;

  final String? name;

  final String? notes;

  Client({
    @FormControlAnnotation() required this.clientType,
    @FormControlAnnotation() this.name,
    @FormControlAnnotation() this.notes,
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
