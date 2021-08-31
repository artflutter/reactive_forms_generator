@Timeout(Duration(seconds: 145))

import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with nullable groups types',
      () async {
        return testGenerator(
          model: r'''
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

            @ReactiveFormAnnotation()
            class Group {
              final Personal? personal;
            
              final Phone? phone;
            
              final Address? address;
            
              final Address? address2;
            
              Group({
                this.personal,
                this.phone,
                this.address,
                this.address2,
              });
            }
            
            @FormGroupAnnotation()
            class Personal {
              final String? name;
            
              final String? email;
            
              Personal({
                @FormControlAnnotation()
                this.name,
                
                @FormControlAnnotation()
                this.email,
              });
            }
            
            @FormGroupAnnotation()
            class Phone {
              final String? phoneNumber;
            
              final String? countryIso;
            
              Phone({
                @FormControlAnnotation()
                this.phoneNumber,
                
                @FormControlAnnotation()
                this.countryIso,
              });
            }
            
            @FormGroupAnnotation()
            class Address {
              final String? street;
            
              final String? city;
            
              final String? zip;
            
              Address({
                @FormControlAnnotation()
                this.street,
                
                @FormControlAnnotation()
                this.city,
                
                @FormControlAnnotation()
                this.zip,
              });
            }
          ''',
          generatedFile: generatedFile,
        );
      },
    );
  });
}

const generatedFile = r'''// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'dart:core';
import 'login.dart';

class ReactiveGroupFormConsumer extends StatelessWidget {
  ReactiveGroupFormConsumer({Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, GroupForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupForm.of(context);

    if (formModel is! GroupForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class GroupFormInheritedStreamer extends InheritedStreamer<dynamic> {
  GroupFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final GroupForm form;
}

class ReactiveGroupForm extends StatelessWidget {
  ReactiveGroupForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final GroupForm form;

  final WillPopCallback? onWillPop;

  static GroupForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<GroupFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<GroupFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as GroupFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return GroupFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class GroupFormBuilder extends StatefulWidget {
  GroupFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final Group model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, GroupForm formModel, Widget? child) builder;

  @override
  _GroupFormBuilderState createState() => _GroupFormBuilderState();
}

class _GroupFormBuilderState extends State<GroupFormBuilder> {
  late FormGroup _form;

  late GroupForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = GroupForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveGroupForm(
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

class GroupForm {
  GroupForm(this.group, this.form, this.path) {
    personalForm = PersonalForm(group.personal, form, pathBuilder('personal'));
    phoneForm = PhoneForm(group.phone, form, pathBuilder('phone'));
    addressForm = AddressForm(group.address, form, pathBuilder('address'));
    address2Form = AddressForm(group.address2, form, pathBuilder('address2'));
  }

  static String personalControlName = "personal";

  static String phoneControlName = "phone";

  static String addressControlName = "address";

  static String address2ControlName = "address2";

  late PersonalForm personalForm;

  late PhoneForm phoneForm;

  late AddressForm addressForm;

  late AddressForm address2Form;

  final Group group;

  final FormGroup form;

  final String? path;

  String personalControlPath() => pathBuilder(personalControlName);
  String phoneControlPath() => pathBuilder(phoneControlName);
  String addressControlPath() => pathBuilder(addressControlName);
  String address2ControlPath() => pathBuilder(address2ControlName);
  Personal? get personalValue => personalForm.model;
  Phone? get phoneValue => phoneForm.model;
  Address? get addressValue => addressForm.model;
  Address? get address2Value => address2Form.model;
  bool get containsPersonal => form.contains(personalControlPath());
  bool get containsPhone => form.contains(phoneControlPath());
  bool get containsAddress => form.contains(addressControlPath());
  bool get containsAddress2 => form.contains(address2ControlPath());
  Object? get personalErrors => personalControl.errors;
  Object? get phoneErrors => phoneControl.errors;
  Object? get addressErrors => addressControl.errors;
  Object? get address2Errors => address2Control.errors;
  void get personalFocus => form.focus(personalControlPath());
  void get phoneFocus => form.focus(phoneControlPath());
  void get addressFocus => form.focus(addressControlPath());
  void get address2Focus => form.focus(address2ControlPath());
  FormGroup get personalControl =>
      form.control(personalControlPath()) as FormGroup;
  FormGroup get phoneControl => form.control(phoneControlPath()) as FormGroup;
  FormGroup get addressControl =>
      form.control(addressControlPath()) as FormGroup;
  FormGroup get address2Control =>
      form.control(address2ControlPath()) as FormGroup;
  Group get model => Group(
      personal: personalValue,
      phone: phoneValue,
      address: addressValue,
      address2: address2Value);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        personalControlName: personalForm.formElements(),
        phoneControlName: phoneForm.formElements(),
        addressControlName: addressForm.formElements(),
        address2ControlName: address2Form.formElements()
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class PersonalForm {
  PersonalForm(this.personal, this.form, this.path) {}

  static String nameControlName = "name";

  static String emailControlName = "email";

  final Personal? personal;

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);
  String emailControlPath() => pathBuilder(emailControlName);
  String? get nameValue => nameControl.value;
  String? get emailValue => emailControl.value;
  bool get containsName => form.contains(nameControlPath());
  bool get containsEmail => form.contains(emailControlPath());
  Object? get nameErrors => nameControl.errors;
  Object? get emailErrors => emailControl.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get emailFocus => form.focus(emailControlPath());
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  Personal get model => Personal(name: nameValue, email: emailValue);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        nameControlName: FormControl<String>(
            value: personal?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: personal?.email,
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

class PhoneForm {
  PhoneForm(this.phone, this.form, this.path) {}

  static String phoneNumberControlName = "phoneNumber";

  static String countryIsoControlName = "countryIso";

  final Phone? phone;

  final FormGroup form;

  final String? path;

  String phoneNumberControlPath() => pathBuilder(phoneNumberControlName);
  String countryIsoControlPath() => pathBuilder(countryIsoControlName);
  String? get phoneNumberValue => phoneNumberControl.value;
  String? get countryIsoValue => countryIsoControl.value;
  bool get containsPhoneNumber => form.contains(phoneNumberControlPath());
  bool get containsCountryIso => form.contains(countryIsoControlPath());
  Object? get phoneNumberErrors => phoneNumberControl.errors;
  Object? get countryIsoErrors => countryIsoControl.errors;
  void get phoneNumberFocus => form.focus(phoneNumberControlPath());
  void get countryIsoFocus => form.focus(countryIsoControlPath());
  FormControl<String> get phoneNumberControl =>
      form.control(phoneNumberControlPath()) as FormControl<String>;
  FormControl<String> get countryIsoControl =>
      form.control(countryIsoControlPath()) as FormControl<String>;
  Phone get model =>
      Phone(phoneNumber: phoneNumberValue, countryIso: countryIsoValue);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        phoneNumberControlName: FormControl<String>(
            value: phone?.phoneNumber,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        countryIsoControlName: FormControl<String>(
            value: phone?.countryIso,
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

class AddressForm {
  AddressForm(this.address, this.form, this.path) {}

  static String streetControlName = "street";

  static String cityControlName = "city";

  static String zipControlName = "zip";

  final Address? address;

  final FormGroup form;

  final String? path;

  String streetControlPath() => pathBuilder(streetControlName);
  String cityControlPath() => pathBuilder(cityControlName);
  String zipControlPath() => pathBuilder(zipControlName);
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
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
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
            validators: [],
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
''';
