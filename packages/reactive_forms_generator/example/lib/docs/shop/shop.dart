// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:reactive_forms/reactive_forms.dart';
// import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
// import 'package:example/helpers.dart';
//
// part 'shop.gform.dart';
//
// @Rf()
// class Shop extends Equatable {
//   final Address? shopAddress;
//   final List<Client>? clientList;
//
//   const Shop({
//     this.shopAddress,
//     @RfArray() this.clientList,
//   });
//
//   @override
//   List<Object?> get props => [shopAddress, clientList];
// }
//
// enum ClientType { home, office }
//
// @RfGroup()
// class Client extends Equatable {
//   final ClientType clientType;
//
//   final String? name;
//
//   final String? notes;
//
//   final List<Address> addressList;
//
//   const Client({
//     @RfControl() required this.clientType,
//     @RfArray() this.addressList = const [],
//     @RfControl() this.name,
//     @RfControl() this.notes,
//   });
//
//   @override
//   List<Object?> get props => [name, notes];
// }
//
// @RfGroup()
// class Address extends Equatable {
//   final String? type;
//
//   final String? street;
//
//   final String? city;
//
//   const Address({
//     @RfControl(
//       validators: [requiredValidator],
//     )
//         this.type,
//     @RfControl(
//       validators: [requiredValidator],
//     )
//         this.street,
//     @RfControl()
//         this.city,
//   });
//
//   @override
//   List<Object?> get props => [street, city];
// }
