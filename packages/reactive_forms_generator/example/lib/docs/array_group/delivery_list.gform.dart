// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_list.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveDeliveryListFormConsumer extends StatelessWidget {
  const ReactiveDeliveryListFormConsumer(
      {Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, DeliveryListForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDeliveryListForm.of(context);

    if (formModel is! DeliveryListForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DeliveryListFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const DeliveryListFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final DeliveryListForm form;
}

class ReactiveDeliveryListForm extends StatelessWidget {
  const ReactiveDeliveryListForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final DeliveryListForm form;

  final WillPopCallback? onWillPop;

  static DeliveryListForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              DeliveryListFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DeliveryListFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DeliveryListFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DeliveryListFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class DeliveryListFormBuilder extends StatefulWidget {
  const DeliveryListFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final DeliveryList model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, DeliveryListForm formModel, Widget? child) builder;

  @override
  _DeliveryListFormBuilderState createState() =>
      _DeliveryListFormBuilderState();
}

class _DeliveryListFormBuilderState extends State<DeliveryListFormBuilder> {
  late FormGroup _form;

  late DeliveryListForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = DeliveryListForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveDeliveryListForm(
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

class DeliveryListForm implements FormModel<DeliveryList> {
  DeliveryListForm(this.deliveryList, this.form, this.path) {
    deliveryListDeliveryPointForm = deliveryList.deliveryList
        .asMap()
        .map((k, v) => MapEntry(
            k, DeliveryPointForm(v, form, pathBuilder("deliveryList.$k"))))
        .values
        .toList();
  }

  static String deliveryListControlName = "deliveryList";

  final DeliveryList deliveryList;

  final FormGroup form;

  final String? path;

  late List<DeliveryPointForm> deliveryListDeliveryPointForm;

  String deliveryListControlPath() => pathBuilder(deliveryListControlName);
  List<DeliveryPoint> get deliveryListValue =>
      (deliveryListControl?.value ?? [])
          .asMap()
          .map((k, v) => MapEntry(
              k,
              DeliveryPointForm(
                      DeliveryPoint(), form, pathBuilder("deliveryList.$k"))
                  .model))
          .values
          .toList();
  bool get containsDeliveryList => form.contains(deliveryListControlPath());
  Object? get deliveryListErrors => deliveryListControl?.errors;
  void get deliveryListFocus => form.focus(deliveryListControlPath());
  void deliveryListRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(deliveryListControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void deliveryListValueUpdate(List<DeliveryPoint> value,
          {bool updateParent = true, bool emitEvent = true}) =>
      deliveryListControl?.updateValue(
          value
              .map((e) => DeliveryPointForm(e, FormGroup({}), null)
                  .formElements()
                  .rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  void deliveryListValuePatch(List<DeliveryPoint> value,
          {bool updateParent = true, bool emitEvent = true}) =>
      deliveryListControl?.patchValue(
          value
              .map((e) => DeliveryPointForm(e, FormGroup({}), null)
                  .formElements()
                  .rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  void deliveryListValueReset(List<DeliveryPoint> value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      deliveryListControl?.reset(
          value: value
              .map((e) => DeliveryPointForm(e, FormGroup({}), null)
                  .formElements()
                  .rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormArray<Map<String, Object?>>? get deliveryListControl {
    if (containsDeliveryList) {
      return form.control(deliveryListControlPath())
          as FormArray<Map<String, Object?>>?;
    }
  }

  void addDeliveryListItem(DeliveryPoint value) {
    final formGroup =
        DeliveryPointForm(value, form, pathBuilder('deliveryList'))
            .formElements();

    deliveryListControl?.add(formGroup);
  }

  DeliveryList get model => DeliveryList(deliveryList: deliveryListValue);
  void updateValue(DeliveryList value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          DeliveryListForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(DeliveryList value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: DeliveryListForm(value, FormGroup({}), null)
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
        deliveryListControlName: FormArray(
            deliveryListDeliveryPointForm.map((e) => e.formElements()).toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class DeliveryPointForm implements FormModel<DeliveryPoint> {
  DeliveryPointForm(this.deliveryPoint, this.form, this.path) {
    addressForm =
        AddressForm(deliveryPoint.address, form, pathBuilder('address'));
  }

  static String nameControlName = "name";

  static String addressControlName = "address";

  late AddressForm addressForm;

  final DeliveryPoint deliveryPoint;

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);
  String addressControlPath() => pathBuilder(addressControlName);
  String get nameValue => nameControl?.value as String;
  Address? get addressValue => addressForm.model;
  bool get containsName => form.contains(nameControlPath());
  bool get containsAddress => form.contains(addressControlPath());
  Object? get nameErrors => nameControl?.errors;
  Object? get addressErrors => addressControl?.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get addressFocus => form.focus(addressControlPath());
  void nameRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(nameControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void addressRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(addressControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void nameValueUpdate(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl?.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void addressValueUpdate(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      addressControl?.updateValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void nameValuePatch(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl?.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void addressValuePatch(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      addressControl?.patchValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void nameValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      nameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void addressValueReset(Address? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      addressControl?.reset(
          value:
              AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String>? get nameControl {
    if (containsName) {
      return form.control(nameControlPath()) as FormControl<String>?;
    }
  }

  FormGroup? get addressControl {
    if (containsAddress) {
      return form.control(addressControlPath()) as FormGroup?;
    }
  }

  DeliveryPoint get model =>
      DeliveryPoint(name: nameValue, address: addressValue);
  void updateValue(DeliveryPoint value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          DeliveryPointForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(DeliveryPoint value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: DeliveryPointForm(value, FormGroup({}), null)
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
        nameControlName: FormControl<String>(
            value: deliveryPoint.name,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        addressControlName: addressForm.formElements()
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

  final Address? address;

  final FormGroup form;

  final String? path;

  String streetControlPath() => pathBuilder(streetControlName);
  String cityControlPath() => pathBuilder(cityControlName);
  String? get streetValue => streetControl?.value;
  String? get cityValue => cityControl?.value;
  bool get containsStreet => form.contains(streetControlPath());
  bool get containsCity => form.contains(cityControlPath());
  Object? get streetErrors => streetControl?.errors;
  Object? get cityErrors => cityControl?.errors;
  void get streetFocus => form.focus(streetControlPath());
  void get cityFocus => form.focus(cityControlPath());
  void streetRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(streetControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void cityRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(cityControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void streetValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      streetControl?.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void cityValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      cityControl?.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void streetValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      streetControl?.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void cityValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      cityControl?.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
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
  FormControl<String>? get streetControl {
    if (containsStreet) {
      return form.control(streetControlPath()) as FormControl<String>?;
    }
  }

  FormControl<String>? get cityControl {
    if (containsCity) {
      return form.control(cityControlPath()) as FormControl<String>?;
    }
  }

  Address get model => Address(street: streetValue, city: cityValue);
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
            validators: [requiredValidator],
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
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveDeliveryPointFormConsumer extends StatelessWidget {
  const ReactiveDeliveryPointFormConsumer(
      {Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, DeliveryPointForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDeliveryPointForm.of(context);

    if (formModel is! DeliveryPointForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DeliveryPointFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const DeliveryPointFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final DeliveryPointForm form;
}

class ReactiveDeliveryPointForm extends StatelessWidget {
  const ReactiveDeliveryPointForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final DeliveryPointForm form;

  final WillPopCallback? onWillPop;

  static DeliveryPointForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              DeliveryPointFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DeliveryPointFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DeliveryPointFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DeliveryPointFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class DeliveryPointFormBuilder extends StatefulWidget {
  const DeliveryPointFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final DeliveryPoint model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, DeliveryPointForm formModel, Widget? child) builder;

  @override
  _DeliveryPointFormBuilderState createState() =>
      _DeliveryPointFormBuilderState();
}

class _DeliveryPointFormBuilderState extends State<DeliveryPointFormBuilder> {
  late FormGroup _form;

  late DeliveryPointForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = DeliveryPointForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveDeliveryPointForm(
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
