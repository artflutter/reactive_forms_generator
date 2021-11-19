// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_form.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveGroupFormConsumer extends StatelessWidget {
  const ReactiveGroupFormConsumer({Key? key, required this.builder, this.child})
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
  const GroupFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final GroupForm form;
}

class ReactiveGroupForm extends StatelessWidget {
  const ReactiveGroupForm(
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
  const GroupFormBuilder(
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
  void personalRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(personalControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void phoneRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(phoneControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void addressRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(addressControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void address2Remove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(address2ControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void personalValueUpdate(Personal? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      personalControl.updateValue(
          PersonalForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void phoneValueUpdate(Phone? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      phoneControl.updateValue(
          PhoneForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void addressValueUpdate(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      addressControl.updateValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void address2ValueUpdate(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      address2Control.updateValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void personalValuePatch(Personal? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      personalControl.patchValue(
          PersonalForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void phoneValuePatch(Phone? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      phoneControl.patchValue(
          PhoneForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void addressValuePatch(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      addressControl.patchValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void address2ValuePatch(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      address2Control.patchValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void personalValueReset(Personal? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      personalControl.reset(
          value:
              PersonalForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void phoneValueReset(Phone? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      phoneControl.reset(
          value: PhoneForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void addressValueReset(Address? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      addressControl.reset(
          value:
              AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void address2ValueReset(Address? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      address2Control.reset(
          value:
              AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
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
  void updateValue(Group value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          GroupForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Group value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: GroupForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: this.formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
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
  void nameRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(nameControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void emailRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(emailControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void nameValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void emailValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      emailControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void nameValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void emailValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      emailControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void nameValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void emailValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  Personal get model => Personal(name: nameValue, email: emailValue);
  void updateValue(Personal? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          PersonalForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Personal? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value:
              PersonalForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: this.formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
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
  void phoneNumberRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(phoneNumberControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void countryIsoRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(countryIsoControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void phoneNumberValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      phoneNumberControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void countryIsoValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      countryIsoControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void phoneNumberValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      phoneNumberControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void countryIsoValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      countryIsoControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void phoneNumberValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      phoneNumberControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void countryIsoValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      countryIsoControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get phoneNumberControl =>
      form.control(phoneNumberControlPath()) as FormControl<String>;
  FormControl<String> get countryIsoControl =>
      form.control(countryIsoControlPath()) as FormControl<String>;
  Phone get model =>
      Phone(phoneNumber: phoneNumberValue, countryIso: countryIsoValue);
  void updateValue(Phone? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          PhoneForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Phone? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: PhoneForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: this.formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
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
