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
      {Key? key, this.model, this.child, this.onWillPop, required this.builder})
      : super(key: key);

  final DeliveryList? model;

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
    deliveryListDeliveryPointForm = (deliveryList?.deliveryList ?? [])
        .asMap()
        .map((k, v) => MapEntry(
            k, DeliveryPointForm(v, form, pathBuilder("deliveryList.$k"))))
        .values
        .toList();
    clientListClientForm = (deliveryList?.clientList ?? [])
        .asMap()
        .map((k, v) =>
            MapEntry(k, ClientForm(v, form, pathBuilder("clientList.$k"))))
        .values
        .toList();
  }

  static String deliveryListControlName = "deliveryList";

  static String clientListControlName = "clientList";

  final DeliveryList? deliveryList;

  final FormGroup form;

  final String? path;

  late List<DeliveryPointForm> deliveryListDeliveryPointForm;

  late List<ClientForm> clientListClientForm;

  String deliveryListControlPath() => pathBuilder(deliveryListControlName);
  String clientListControlPath() => pathBuilder(clientListControlName);
  List<DeliveryPoint> get deliveryListValue => deliveryListDeliveryPointForm
      .asMap()
      .map((k, v) => MapEntry(
          k,
          DeliveryPointForm(v.model, v.form, pathBuilder("deliveryList.$k"))
              .model))
      .values
      .toList();
  List<Client>? get clientListValue => clientListClientForm
      .asMap()
      .map((k, v) => MapEntry(
          k, ClientForm(v.model, v.form, pathBuilder("clientList.$k")).model))
      .values
      .toList();
  bool get containsDeliveryList {
    try {
      form.control(deliveryListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsClientList {
    try {
      form.control(clientListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get deliveryListErrors => deliveryListControl.errors;
  Object? get clientListErrors => clientListControl?.errors;
  void get deliveryListFocus => form.focus(deliveryListControlPath());
  void get clientListFocus => form.focus(clientListControlPath());
  void clientListRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsClientList) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          clientListControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            clientListControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void deliveryListValueUpdate(List<DeliveryPoint> value,
          {bool updateParent = true, bool emitEvent = true}) =>
      deliveryListControl.updateValue(
          value
              .map((e) => DeliveryPointForm(e, FormGroup({}), null)
                  .formElements()
                  .rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  void clientListValueUpdate(List<Client>? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      clientListControl?.updateValue(
          value
              ?.map((e) =>
                  ClientForm(e, FormGroup({}), null).formElements().rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  void deliveryListValuePatch(List<DeliveryPoint> value,
          {bool updateParent = true, bool emitEvent = true}) =>
      deliveryListControl.patchValue(
          value
              .map((e) => DeliveryPointForm(e, FormGroup({}), null)
                  .formElements()
                  .rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  void clientListValuePatch(List<Client>? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      clientListControl?.patchValue(
          value
              ?.map((e) =>
                  ClientForm(e, FormGroup({}), null).formElements().rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  void deliveryListValueReset(List<DeliveryPoint> value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      deliveryListControl.reset(
          value: value
              .map((e) => DeliveryPointForm(e, FormGroup({}), null)
                  .formElements()
                  .rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  void clientListValueReset(List<Client>? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      clientListControl?.reset(
          value: value
              ?.map((e) =>
                  ClientForm(e, FormGroup({}), null).formElements().rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormArray<Map<String, Object?>> get deliveryListControl =>
      form.control(deliveryListControlPath())
          as FormArray<Map<String, Object?>>;
  FormArray<Map<String, Object?>>? get clientListControl => containsClientList
      ? form.control(clientListControlPath())
          as FormArray<Map<String, Object?>>?
      : null;
  void addDeliveryListItem(DeliveryPoint value) {
    final formClass = DeliveryPointForm(value, form,
        pathBuilder('deliveryList.${deliveryListDeliveryPointForm.length}'));

    deliveryListDeliveryPointForm.add(formClass);
    deliveryListControl.add(formClass.formElements());
  }

  void addClientListItem(Client value) {
    final formClass = ClientForm(
        value, form, pathBuilder('clientList.${clientListClientForm.length}'));

    clientListClientForm.add(formClass);
    clientListControl?.add(formClass.formElements());
  }

  void removeDeliveryListItemAtIndex(int i) {
    if (deliveryListDeliveryPointForm.asMap().containsKey(i) &&
        (deliveryListControl.value ?? []).asMap().containsKey(i)) {
      deliveryListDeliveryPointForm.removeAt(i);

      deliveryListDeliveryPointForm.asMap().forEach((k, v) {
        deliveryListDeliveryPointForm[k] =
            DeliveryPointForm(v.model, v.form, pathBuilder("deliveryList.$k"));
      });

      deliveryListControl.removeAt(i);
    }
  }

  void removeClientListItemAtIndex(int i) {
    if (clientListClientForm.asMap().containsKey(i) &&
        (clientListControl?.value ?? []).asMap().containsKey(i)) {
      clientListClientForm.removeAt(i);

      clientListClientForm.asMap().forEach((k, v) {
        clientListClientForm[k] =
            ClientForm(v.model, v.form, pathBuilder("clientList.$k"));
      });

      clientListControl?.removeAt(i);
    }
  }

  void addDeliveryListItemList(List<DeliveryPoint> value) {
    value.map((e) => addDeliveryListItem(e));
  }

  void addClientListItemList(List<Client> value) {
    value.map((e) => addClientListItem(e));
  }

  DeliveryList get model => DeliveryList(
      deliveryList: deliveryListValue, clientList: clientListValue);
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
            disabled: false),
        clientListControlName: FormArray(
            clientListClientForm.map((e) => e.formElements()).toList(),
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
        AddressForm(deliveryPoint?.address, form, pathBuilder('address'));
  }

  static String nameControlName = "name";

  static String addressControlName = "address";

  late AddressForm addressForm;

  final DeliveryPoint? deliveryPoint;

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);
  String addressControlPath() => pathBuilder(addressControlName);
  String get nameValue => nameControl.value as String;
  Address? get addressValue => addressForm.model;
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAddress {
    try {
      form.control(addressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl.errors;
  Object? get addressErrors => addressControl?.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get addressFocus => form.focus(addressControlPath());
  void addressRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsAddress) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          addressControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            addressControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameValueUpdate(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void addressValueUpdate(Address? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      addressControl?.updateValue(
          AddressForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void nameValuePatch(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl.patchValue(value,
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
      nameControl.reset(
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
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormGroup? get addressControl =>
      containsAddress ? form.control(addressControlPath()) as FormGroup? : null;
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
            value: deliveryPoint?.name,
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

  Object? get streetErrors => streetControl?.errors;
  Object? get cityErrors => cityControl?.errors;
  void get streetFocus => form.focus(streetControlPath());
  void get cityFocus => form.focus(cityControlPath());
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
  FormControl<String>? get streetControl => containsStreet
      ? form.control(streetControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get cityControl => containsCity
      ? form.control(cityControlPath()) as FormControl<String>?
      : null;
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

class ClientForm implements FormModel<Client> {
  ClientForm(this.client, this.form, this.path) {}

  static String clientTypeControlName = "clientType";

  static String nameControlName = "name";

  static String notesControlName = "notes";

  final Client? client;

  final FormGroup form;

  final String? path;

  String clientTypeControlPath() => pathBuilder(clientTypeControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String notesControlPath() => pathBuilder(notesControlName);
  ClientType get clientTypeValue => clientTypeControl.value as ClientType;
  String? get nameValue => nameControl?.value;
  String? get notesValue => notesControl?.value;
  bool get containsClientType {
    try {
      form.control(clientTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsNotes {
    try {
      form.control(notesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get clientTypeErrors => clientTypeControl.errors;
  Object? get nameErrors => nameControl?.errors;
  Object? get notesErrors => notesControl?.errors;
  void get clientTypeFocus => form.focus(clientTypeControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get notesFocus => form.focus(notesControlPath());
  void nameRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void notesRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsNotes) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          notesControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            notesControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void clientTypeValueUpdate(ClientType value,
          {bool updateParent = true, bool emitEvent = true}) =>
      clientTypeControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void nameValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl?.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void notesValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      notesControl?.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void clientTypeValuePatch(ClientType value,
          {bool updateParent = true, bool emitEvent = true}) =>
      clientTypeControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void nameValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl?.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void notesValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      notesControl?.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void clientTypeValueReset(ClientType value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      clientTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void nameValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      nameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void notesValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      notesControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<ClientType> get clientTypeControl =>
      form.control(clientTypeControlPath()) as FormControl<ClientType>;
  FormControl<String>? get nameControl => containsName
      ? form.control(nameControlPath()) as FormControl<String>?
      : null;
  FormControl<String>? get notesControl => containsNotes
      ? form.control(notesControlPath()) as FormControl<String>?
      : null;
  Client get model =>
      Client(clientType: clientTypeValue, name: nameValue, notes: notesValue);
  void updateValue(Client value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          ClientForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Client value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: ClientForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: this.formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        clientTypeControlName: FormControl<ClientType>(
            value: client?.clientType,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: client?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        notesControlName: FormControl<String>(
            value: client?.notes,
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
      {Key? key, this.model, this.child, this.onWillPop, required this.builder})
      : super(key: key);

  final DeliveryPoint? model;

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
