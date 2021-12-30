@Timeout(Duration(seconds: 145))

import 'package:test/test.dart';

import '../helpers.dart';

void main() {
  group('doc', () {
    test(
      'User profile',
      () async {
        return testGenerator(
          model: r'''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            import 'package:example/helpers.dart';
            
            part 'gen.gform.dart';
            
            @ReactiveFormAnnotation()
            class UserProfile {
              final String firstName;
            
              final String lastName;
            
              final Address? home;
            
              final Address? office;
            
              UserProfile({
                @FormControlAnnotation(
                  validators: const [requiredValidator],
                )
                    this.firstName = '',
                @FormControlAnnotation(
                  validators: const [requiredValidator],
                )
                    this.lastName = '',
                this.home,
                this.office,
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
                @FormControlAnnotation(
                  validators: const [requiredValidator],
                )
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

part of 'gen.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveUserProfileFormConsumer extends StatelessWidget {
  const ReactiveUserProfileFormConsumer(
      {Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, UserProfileForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserProfileForm.of(context);

    if (formModel is! UserProfileForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class UserProfileFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const UserProfileFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final UserProfileForm form;
}

class ReactiveUserProfileForm extends StatelessWidget {
  const ReactiveUserProfileForm(
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
  const UserProfileFormBuilder(
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

class UserProfileForm implements FormModel<UserProfile> {
  UserProfileForm(this.userProfile, this.form, this.path) {
    homeForm = AddressForm(userProfile.home, form, pathBuilder('home'));
    officeForm = AddressForm(userProfile.office, form, pathBuilder('office'));
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

  String firstNameControlPath() => pathBuilder(firstNameControlName);
  String lastNameControlPath() => pathBuilder(lastNameControlName);
  String homeControlPath() => pathBuilder(homeControlName);
  String officeControlPath() => pathBuilder(officeControlName);
  String get firstNameValue => firstNameControl.value as String;
  String get lastNameValue => lastNameControl.value as String;
  Address? get homeValue => homeForm.model;
  Address? get officeValue => officeForm.model;
  bool get containsFirstName => form.contains(firstNameControlPath());
  bool get containsLastName => form.contains(lastNameControlPath());
  bool get containsHome => form.contains(homeControlPath());
  bool get containsOffice => form.contains(officeControlPath());
  Object? get firstNameErrors => firstNameControl.errors;
  Object? get lastNameErrors => lastNameControl.errors;
  Object? get homeErrors => homeControl.errors;
  Object? get officeErrors => officeControl.errors;
  void get firstNameFocus => form.focus(firstNameControlPath());
  void get lastNameFocus => form.focus(lastNameControlPath());
  void get homeFocus => form.focus(homeControlPath());
  void get officeFocus => form.focus(officeControlPath());
  void firstNameRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(firstNameControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void lastNameRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(lastNameControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void homeRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(homeControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void officeRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(officeControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void firstNameValueUpdate(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      firstNameControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void lastNameValueUpdate(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      lastNameControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void homeValueUpdate(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      homeControl.updateValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void officeValueUpdate(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      officeControl.updateValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void firstNameValuePatch(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      firstNameControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void lastNameValuePatch(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      lastNameControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void homeValuePatch(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      homeControl.patchValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void officeValuePatch(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      officeControl.patchValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void firstNameValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      firstNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void lastNameValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      lastNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void homeValueReset(Address? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      homeControl.reset(
          value:
              AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void officeValueReset(Address? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      officeControl.reset(
          value:
              AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get firstNameControl =>
      form.control(firstNameControlPath()) as FormControl<String>;
  FormControl<String> get lastNameControl =>
      form.control(lastNameControlPath()) as FormControl<String>;
  FormGroup get homeControl => form.control(homeControlPath()) as FormGroup;
  FormGroup get officeControl => form.control(officeControlPath()) as FormGroup;
  UserProfile get model => UserProfile(
      firstName: firstNameValue,
      lastName: lastNameValue,
      home: homeValue,
      office: officeValue);
  void updateValue(UserProfile value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          UserProfileForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(UserProfile value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: UserProfileForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: this.formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        firstNameControlName: FormControl<String>(
            value: userProfile.firstName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastNameControlName: FormControl<String>(
            value: userProfile.lastName,
            validators: [],
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

class AddressForm implements FormModel<Address> {
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
  void streetRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(streetControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void cityRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(cityControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void zipRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(zipControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void streetValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      streetControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void cityValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      cityControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void zipValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      zipControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void streetValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      streetControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void cityValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      cityControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void zipValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      zipControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void streetValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      streetControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void cityValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      cityControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void zipValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      zipControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get streetControl =>
      form.control(streetControlPath()) as FormControl<String>;
  FormControl<String> get cityControl =>
      form.control(cityControlPath()) as FormControl<String>;
  FormControl<String> get zipControl =>
      form.control(zipControlPath()) as FormControl<String>;
  Address get model =>
      Address(street: streetValue, city: cityValue, zip: zipValue);
  void updateValue(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value:
              AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: this.formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
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
