// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'dart:core';
import 'user_profile.dart';

class ReactiveUserProfileFormConsumer extends StatelessWidget {
  ReactiveUserProfileFormConsumer({Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, UserProfileForm formGroup, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final form = ReactiveUserProfileForm.of(context);

    if (form is! UserProfileForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, form, child);
  }
}

class UserProfileFormInheritedStreamer extends InheritedStreamer<dynamic> {
  UserProfileFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final UserProfileForm form;
}

class ReactiveUserProfileForm extends StatelessWidget {
  ReactiveUserProfileForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final UserProfileForm form;

  final WillPopCallback? onWillPop;

  static UserProfileForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              UserProfileFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        UserProfileFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as UserProfileFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return UserProfileFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class UserProfileFormBuilder extends StatefulWidget {
  UserProfileFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final UserProfile model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, UserProfileForm formModel, Widget? child) builder;

  @override
  _UserProfileFormBuilderState createState() => _UserProfileFormBuilderState();
}

class _UserProfileFormBuilderState extends State<UserProfileFormBuilder> {
  late FormGroup _form;

  late UserProfileForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = UserProfileForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveUserProfileForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveForm(
        formGroup: _form,
        onWillPop: widget.onWillPop,
        child: widget.builder(context, _formModel, widget.child),
      ),
    );
  }
}

class UserProfileForm {
  UserProfileForm(this.userProfile, this.form, this.path) {
    homeForm = AddressForm(userProfile.home, form, 'home');
    officeForm = AddressForm(userProfile.office, form, 'office');
  }

  static String firstNameControlName = "firstName";

  static String lastNameControlName = "lastName";

  static String homeControlName = "home";

  static String officeControlName = "office";

  late AddressForm homeForm;

  late AddressForm officeForm;

  final UserProfile userProfile;

  final FormGroup form;

  final String? path;

  String firstNameControlPath() =>
      [path, firstNameControlName].whereType<String>().join(".");
  String lastNameControlPath() =>
      [path, lastNameControlName].whereType<String>().join(".");
  String get firstNameValue => firstNameControl.value as String;
  String get lastNameValue => lastNameControl.value as String;
  bool get containsFirstName => form.contains(firstNameControlPath());
  bool get containsLastName => form.contains(lastNameControlPath());
  Object? get firstNameErrors => firstNameControl.errors;
  Object? get lastNameErrors => lastNameControl.errors;
  void get firstNameFocus => form.focus(firstNameControlPath());
  void get lastNameFocus => form.focus(lastNameControlPath());
  FormControl<String> get firstNameControl =>
      form.control(firstNameControlPath()) as FormControl<String>;
  FormControl<String> get lastNameControl =>
      form.control(lastNameControlPath()) as FormControl<String>;
  UserProfile get model => UserProfile(
      firstName: firstNameValue,
      lastName: lastNameValue,
      home: homeForm.model,
      office: officeForm.model);
  FormGroup formElements() => FormGroup({
        firstNameControlName: FormControl<String>(
            value: userProfile.firstName,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastNameControlName: FormControl<String>(
            value: userProfile.lastName,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        homeControlName: homeForm.formElements(),
        officeControlName: officeForm.formElements()
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class AddressForm {
  AddressForm(this.address, this.form, this.path) {}

  static String streetControlName = "street";

  static String cityControlName = "city";

  static String zipControlName = "zip";

  final Address? address;

  final FormGroup form;

  final String? path;

  String streetControlPath() =>
      [path, streetControlName].whereType<String>().join(".");
  String cityControlPath() =>
      [path, cityControlName].whereType<String>().join(".");
  String zipControlPath() =>
      [path, zipControlName].whereType<String>().join(".");
  String? get streetValue => streetControl.value;
  String? get cityValue => cityControl.value;
  String? get zipValue => zipControl.value;
  bool get containsStreet => form.contains(streetControlPath());
  bool get containsCity => form.contains(cityControlPath());
  bool get containsZip => form.contains(zipControlPath());
  Object? get streetErrors => streetControl.errors;
  Object? get cityErrors => cityControl.errors;
  Object? get zipErrors => zipControl.errors;
  void get streetFocus => form.focus(streetControlPath());
  void get cityFocus => form.focus(cityControlPath());
  void get zipFocus => form.focus(zipControlPath());
  FormControl<String> get streetControl =>
      form.control(streetControlPath()) as FormControl<String>;
  FormControl<String> get cityControl =>
      form.control(cityControlPath()) as FormControl<String>;
  FormControl<String> get zipControl =>
      form.control(zipControlPath()) as FormControl<String>;
  Address get model =>
      Address(street: streetValue, city: cityValue, zip: zipValue);
  FormGroup formElements() => FormGroup({
        streetControlName: FormControl<String>(
            value: address?.street,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cityControlName: FormControl<String>(
            value: address?.city,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        zipControlName: FormControl<String>(
            value: address?.zip,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}
