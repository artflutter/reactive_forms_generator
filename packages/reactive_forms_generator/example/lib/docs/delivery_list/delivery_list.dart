import 'package:equatable/equatable.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'delivery_list.gform.dart';

@Rf(output: false)
class DeliveryList extends Equatable {
  final List<DeliveryPoint> deliveryList;
  final List<Client>? clientList;

  const DeliveryList({
    @RfArray() this.deliveryList = const [],
    @RfArray() this.clientList,
  });

  @override
  List<Object?> get props => [deliveryList, clientList];
}

@Rf(output: false, name: 'StandaloneDeliveryPoint')
@RfGroup()
class DeliveryPoint extends Equatable {
  final String name;

  final Address? address;

  const DeliveryPoint({
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.name = "",
    this.address,
  });

  @override
  List<Object?> get props => [name, address];
}

enum ClientType { home, office }

@RfGroup()
class Client extends Equatable {
  final ClientType clientType;

  final String? name;

  final String? notes;

  const Client({
    @RfControl<ClientType>() required this.clientType,
    @RfControl<String>() this.name,
    @RfControl<String>() this.notes,
  });

  @override
  List<Object?> get props => [name, notes];
}

@RfGroup()
class Address extends Equatable {
  final String? street;

  final String? city;

  const Address({
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.street,
    @RfControl<String>() this.city,
  });

  @override
  List<Object?> get props => [street, city];
}
