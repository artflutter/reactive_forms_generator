import 'package:equatable/equatable.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'delivery_list_output.gform.dart';

@Rf(output: true)
class DeliveryListO extends Equatable {
  final List<DeliveryPointO> deliveryList;
  final List<ClientO>? clientList;

  const DeliveryListO({
    @RfArray() this.deliveryList = const [],
    @RfArray() this.clientList,
  });

  @override
  List<Object?> get props => [deliveryList, clientList];
}

@Rf(output: true, name: 'StandaloneDeliveryPoint')
@RfGroup()
class DeliveryPointO extends Equatable {
  final String name;

  final AddressO? address;

  const DeliveryPointO({
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
class ClientO extends Equatable {
  final ClientType clientType;

  final String? name;

  final String? notes;

  const ClientO({
    @RfControl<ClientType>() required this.clientType,
    @RfControl<String>() this.name,
    @RfControl<String>() this.notes,
  });

  @override
  List<Object?> get props => [name, notes];
}

@RfGroup()
class AddressO extends Equatable {
  final String? street;

  final String? city;

  const AddressO({
    @RfControl(
      validators: [RequiredValidator()],
    )
    this.street,
    @RfControl<String>() this.city,
  });

  @override
  List<Object?> get props => [street, city];
}
