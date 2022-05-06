@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'user_profile';

void main() {
  group('doc', () {
    test(
      'User profile',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
              return Validators.required(control);
            }
            
            @ReactiveFormAnnotation()
            class UserProfile {
              final String id;
            
              final String firstName;
            
              final String lastName;
            
              final Address home;
                        
              final Address? office;
            
              UserProfile({
                required this.id,
                @FormControlAnnotation<String>(
                  validators: [requiredValidator],
                )
                    this.firstName = '',
                @FormControlAnnotation<String>(
                  validators: [requiredValidator],
                )
                    this.lastName = '',
                required this.home,
                this.office,
              });
            }
            
            @FormGroupAnnotation()
            class Address {
              final String? street;
            
              final String? city;
            
              final String? zip;
            
              Address({
                @FormControlAnnotation<String>()
                    this.street,
                @FormControlAnnotation<String>(
                  validators: [requiredValidator],
                )
                    this.city,
                @FormControlAnnotation<String>()
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

const generatedFile = r'''// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'user_profile.dart';

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
  Address get homeValue => homeForm.model;
  Address? get officeValue => officeForm.model;
  bool get containsFirstName {
    try {
      form.control(firstNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsLastName {
    try {
      form.control(lastNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHome {
    try {
      form.control(homeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsOffice {
    try {
      form.control(officeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get firstNameErrors => firstNameControl.errors;
  Object? get lastNameErrors => lastNameControl.errors;
  Object? get homeErrors => homeControl.errors;
  Object? get officeErrors => officeControl?.errors;
  void get firstNameFocus => form.focus(firstNameControlPath());
  void get lastNameFocus => form.focus(lastNameControlPath());
  void get homeFocus => form.focus(homeControlPath());
  void get officeFocus => form.focus(officeControlPath());
  void officeRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsOffice) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          officeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            officeControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void firstNameValueUpdate(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    firstNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValueUpdate(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    lastNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void homeValueUpdate(Address value,
      {bool updateParent = true, bool emitEvent = true}) {
    homeControl.updateValue(
        AddressForm(value, FormGroup({}), null).formElements().rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void officeValueUpdate(Address? value,
      {bool updateParent = true, bool emitEvent = true}) {
    officeControl?.updateValue(
        AddressForm(value, FormGroup({}), null).formElements().rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void firstNameValuePatch(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    firstNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValuePatch(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    lastNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void homeValuePatch(Address value,
      {bool updateParent = true, bool emitEvent = true}) {
    homeControl.updateValue(
        AddressForm(value, form, null).formElements().rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void officeValuePatch(Address? value,
      {bool updateParent = true, bool emitEvent = true}) {
    officeControl?.updateValue(
        AddressForm(value, form, null).formElements().rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

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
  void homeValueReset(Address value,
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
      officeControl?.reset(
          value:
              AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get firstNameControl =>
      form.control(firstNameControlPath()) as FormControl<String>;
  FormControl<String> get lastNameControl =>
      form.control(lastNameControlPath()) as FormControl<String>;
  FormGroup get homeControl => form.control(homeControlPath()) as FormGroup;
  FormGroup? get officeControl =>
      containsOffice ? form.control(officeControlPath()) as FormGroup? : null;
  UserProfile get model => UserProfile(
      id: userProfile.id,
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
      value: formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        firstNameControlName: FormControl<String>(
            value: userProfile.firstName,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastNameControlName: FormControl<String>(
            value: userProfile.lastName,
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
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
  String? get streetValue => streetControl?.value;
  String? get cityValue => cityControl?.value;
  String? get zipValue => zipControl?.value;
  bool get containsStreet {
    try {
      form.control(streetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCity {
    try {
      form.control(cityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsZip {
    try {
      form.control(zipControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get streetErrors => streetControl?.errors;
  Object? get cityErrors => cityControl?.errors;
  Object? get zipErrors => zipControl?.errors;
  void get streetFocus => form.focus(streetControlPath());
  void get cityFocus => form.focus(cityControlPath());
  void get zipFocus => form.focus(zipControlPath());
  void streetRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsStreet) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          streetControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            streetControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void cityRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsCity) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          cityControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            cityControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void zipRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsZip) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          zipControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            zipControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void streetValueUpdate(String? value,
      {bool updateParent = true, bool emitEvent = true}) {
    streetControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValueUpdate(String? value,
      {bool updateParent = true, bool emitEvent = true}) {
    cityControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void zipValueUpdate(String? value,
      {bool updateParent = true, bool emitEvent = true}) {
    zipControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void streetValuePatch(String? value,
      {bool updateParent = true, bool emitEvent = true}) {
    streetControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValuePatch(String? value,
      {bool updateParent = true, bool emitEvent = true}) {
    cityControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void zipValuePatch(String? value,
      {bool updateParent = true, bool emitEvent = true}) {
    zipControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void streetValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      streetControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void cityValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      cityControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void zipValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      zipControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String>? get streetControl => containsStreet
      ? form.control(streetControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get cityControl => containsCity
      ? form.control(cityControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get zipControl => containsZip
      ? form.control(zipControlPath()) as FormControl<String>?
      : null;
  Address get model =>
      Address(street: streetValue, city: cityValue, zip: zipValue);
  void updateValue(Address value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Address value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value:
              AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: formElements().rawValue,
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
            validators: [
              (control) => requiredValidator(control as FormControl<String>)
            ],
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

class ReactiveUserProfileFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveUserProfileFormArrayBuilder(
      {Key? key,
      this.control,
      this.formControl,
      this.builder,
      required this.itemBuilder})
      : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(UserProfileForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UserProfileForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, UserProfileForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserProfileForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveUserProfileFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveUserProfileFormFormGroupArrayBuilder(
      {Key? key,
      this.extended,
      this.getExtended,
      this.builder,
      required this.itemBuilder})
      : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      UserProfileForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UserProfileForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, UserProfileForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserProfileForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
''';
