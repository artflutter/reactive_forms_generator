// // GENERATED CODE - DO NOT MODIFY BY HAND
//
// // **************************************************************************
// // ReactiveFormsGenerator
// // **************************************************************************
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:reactive_forms/reactive_forms.dart';
// import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
// import 'package:example/helpers.dart';
// import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
// import 'dart:core';
// import 'login.dart';
//
// class ReactiveDeliveryListFormConsumer extends StatelessWidget {
//   ReactiveDeliveryListFormConsumer(
//       {Key? key, required this.builder, this.child})
//       : super(key: key);
//
//   final Widget? child;
//
//   final Widget Function(
//       BuildContext context, DeliveryListForm formModel, Widget? child) builder;
//
//   @override
//   Widget build(BuildContext context) {
//     final formModel = ReactiveDeliveryListForm.of(context);
//
//     if (formModel is! DeliveryListForm) {
//       throw FormControlParentNotFoundException(this);
//     }
//     return builder(context, formModel, child);
//   }
// }
//
// class DeliveryListFormInheritedStreamer extends InheritedStreamer<dynamic> {
//   DeliveryListFormInheritedStreamer(
//       {Key? key,
//       required this.form,
//       required Stream<dynamic> stream,
//       required Widget child})
//       : super(stream, child, key: key);
//
//   final DeliveryListForm form;
// }
//
// class ReactiveDeliveryListForm extends StatelessWidget {
//   ReactiveDeliveryListForm(
//       {Key? key, required this.form, required this.child, this.onWillPop})
//       : super(key: key);
//
//   final Widget child;
//
//   final DeliveryListForm form;
//
//   final WillPopCallback? onWillPop;
//
//   static DeliveryListForm? of(BuildContext context, {bool listen = true}) {
//     if (listen) {
//       return context
//           .dependOnInheritedWidgetOfExactType<
//               DeliveryListFormInheritedStreamer>()
//           ?.form;
//     }
//
//     final element = context.getElementForInheritedWidgetOfExactType<
//         DeliveryListFormInheritedStreamer>();
//     return element == null
//         ? null
//         : (element.widget as DeliveryListFormInheritedStreamer).form;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return DeliveryListFormInheritedStreamer(
//       form: form,
//       stream: form.form.statusChanged,
//       child: WillPopScope(
//         onWillPop: onWillPop,
//         child: child,
//       ),
//     );
//   }
// }
//
// class DeliveryListFormBuilder extends StatefulWidget {
//   DeliveryListFormBuilder(
//       {Key? key,
//       required this.model,
//       this.child,
//       this.onWillPop,
//       required this.builder})
//       : super(key: key);
//
//   final DeliveryList model;
//
//   final Widget? child;
//
//   final WillPopCallback? onWillPop;
//
//   final Widget Function(
//       BuildContext context, DeliveryListForm formModel, Widget? child) builder;
//
//   @override
//   _DeliveryListFormBuilderState createState() =>
//       _DeliveryListFormBuilderState();
// }
//
// class _DeliveryListFormBuilderState extends State<DeliveryListFormBuilder> {
//   late FormGroup _form;
//
//   late DeliveryListForm _formModel;
//
//   @override
//   void initState() {
//     _form = FormGroup({});
//     _formModel = DeliveryListForm(widget.model, _form, null);
//
//     _form.addAll(_formModel.formElements().controls);
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ReactiveDeliveryListForm(
//       form: _formModel,
//       onWillPop: widget.onWillPop,
//       child: ReactiveForm(
//         formGroup: _form,
//         onWillPop: widget.onWillPop,
//         child: widget.builder(context, _formModel, widget.child),
//       ),
//     );
//   }
// }
//
// class DeliveryListForm {
//   DeliveryListForm(this.deliveryList, this.form, this.path) {
//     deliveryListDeliveryPointForm = deliveryList.deliveryList
//         .asMap()
//         .map((k, v) => MapEntry(
//             k, DeliveryPointForm(v, form, pathBuilder("deliveryList.$k"))))
//         .values
//         .toList();
//   }
//
//   static String deliveryListControlName = "deliveryList";
//
//   final DeliveryList deliveryList;
//
//   final FormGroup form;
//
//   final String? path;
//
//   late List<DeliveryPointForm> deliveryListDeliveryPointForm;
//
//   String deliveryListControlPath() => pathBuilder(deliveryListControlName);
//   List<DeliveryPoint> get deliveryListValue => (deliveryListControl.value ?? [])
//       .asMap()
//       .map((k, v) => MapEntry(
//           k,
//           DeliveryPointForm(
//                   DeliveryPoint(), form, pathBuilder("deliveryList.$k"))
//               .model))
//       .values
//       .toList();
//   bool get containsDeliveryList => form.contains(deliveryListControlPath());
//   Object? get deliveryListErrors => deliveryListControl.errors;
//   void get deliveryListFocus => form.focus(deliveryListControlPath());
//   FormArray<Map<String, Object?>> get deliveryListControl =>
//       form.control(deliveryListControlPath())
//           as FormArray<Map<String, Object?>>;
//   void addDeliveryListItem(DeliveryPoint value) {
//     final formGroup =
//         DeliveryPointForm(value, form, pathBuilder('deliveryList'))
//             .formElements();
//
//     deliveryListControl.add(formGroup);
//   }
//
//   DeliveryList get model => DeliveryList(deliveryList: deliveryListValue);
//   String pathBuilder(String? pathItem) =>
//       [path, pathItem].whereType<String>().join(".");
//   FormGroup formElements() => FormGroup({
//         deliveryListControlName: FormArray(
//             deliveryListDeliveryPointForm.map((e) => e.formElements()).toList(),
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false)
//       },
//           validators: [],
//           asyncValidators: [],
//           asyncValidatorsDebounceTime: 250,
//           disabled: false);
// }
//
// class DeliveryPointForm {
//   DeliveryPointForm(this.deliveryPoint, this.form, this.path) {
//     addressForm =
//         AddressForm(deliveryPoint.address, form, pathBuilder('address'));
//   }
//
//   static String nameControlName = "name";
//
//   static String addressControlName = "address";
//
//   late AddressForm addressForm;
//
//   final DeliveryPoint deliveryPoint;
//
//   final FormGroup form;
//
//   final String? path;
//
//   String nameControlPath() => pathBuilder(nameControlName);
//   String addressControlPath() => pathBuilder(addressControlName);
//   String get nameValue => nameControl.value as String;
//   Address? get addressValue => addressForm.model;
//   bool get containsName => form.contains(nameControlPath());
//   bool get containsAddress => form.contains(addressControlPath());
//   Object? get nameErrors => nameControl.errors;
//   Object? get addressErrors => addressControl.errors;
//   void get nameFocus => form.focus(nameControlPath());
//   void get addressFocus => form.focus(addressControlPath());
//   FormControl<String> get nameControl =>
//       form.control(nameControlPath()) as FormControl<String>;
//   FormGroup get addressControl =>
//       form.control(addressControlPath()) as FormGroup;
//   DeliveryPoint get model =>
//       DeliveryPoint(name: nameValue, address: addressValue);
//   String pathBuilder(String? pathItem) =>
//       [path, pathItem].whereType<String>().join(".");
//   FormGroup formElements() => FormGroup({
//         nameControlName: FormControl<String>(
//             value: deliveryPoint.name,
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false,
//             touched: false),
//         addressControlName: addressForm.formElements()
//       },
//           validators: [],
//           asyncValidators: [],
//           asyncValidatorsDebounceTime: 250,
//           disabled: false);
// }
//
// class AddressForm {
//   AddressForm(this.address, this.form, this.path) {}
//
//   static String streetControlName = "street";
//
//   static String cityControlName = "city";
//
//   final Address? address;
//
//   final FormGroup form;
//
//   final String? path;
//
//   String streetControlPath() => pathBuilder(streetControlName);
//   String cityControlPath() => pathBuilder(cityControlName);
//   String? get streetValue => streetControl.value;
//   String? get cityValue => cityControl.value;
//   bool get containsStreet => form.contains(streetControlPath());
//   bool get containsCity => form.contains(cityControlPath());
//   Object? get streetErrors => streetControl.errors;
//   Object? get cityErrors => cityControl.errors;
//   void get streetFocus => form.focus(streetControlPath());
//   void get cityFocus => form.focus(cityControlPath());
//   FormControl<String> get streetControl =>
//       form.control(streetControlPath()) as FormControl<String>;
//   FormControl<String> get cityControl =>
//       form.control(cityControlPath()) as FormControl<String>;
//   Address get model => Address(street: streetValue, city: cityValue);
//   String pathBuilder(String? pathItem) =>
//       [path, pathItem].whereType<String>().join(".");
//   FormGroup formElements() => FormGroup({
//         streetControlName: FormControl<String>(
//             value: address?.street,
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false,
//             touched: false),
//         cityControlName: FormControl<String>(
//             value: address?.city,
//             validators: [],
//             asyncValidators: [],
//             asyncValidatorsDebounceTime: 250,
//             disabled: false,
//             touched: false)
//       },
//           validators: [],
//           asyncValidators: [],
//           asyncValidatorsDebounceTime: 250,
//           disabled: false);
// }
