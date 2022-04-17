// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:reactive_forms/reactive_forms.dart';
// import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
// import 'package:example/helpers.dart';
//
// part 'shop.gform.dart';
//
// @ReactiveFormAnnotation()
// class Shop extends Equatable {
//   final Address? shopAddress;
//   final List<Client>? clientList;
//
//   const Shop({
//     this.shopAddress,
//     @FormArrayAnnotation() this.clientList,
//   });
//
//   @override
//   List<Object?> get props => [shopAddress, clientList];
// }
//
// enum ClientType { home, office }
//
// @FormGroupAnnotation()
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
//     @FormControlAnnotation() required this.clientType,
//     @FormArrayAnnotation() this.addressList = const [],
//     @FormControlAnnotation() this.name,
//     @FormControlAnnotation() this.notes,
//   });
//
//   @override
//   List<Object?> get props => [name, notes];
// }
//
// @FormGroupAnnotation()
// class Address extends Equatable {
//   final String? type;
//
//   final String? street;
//
//   final String? city;
//
//   const Address({
//     @FormControlAnnotation(
//       validators: [requiredValidator],
//     )
//         this.type,
//     @FormControlAnnotation(
//       validators: [requiredValidator],
//     )
//         this.street,
//     @FormControlAnnotation()
//         this.city,
//   });
//
//   @override
//   List<Object?> get props => [street, city];
// }
