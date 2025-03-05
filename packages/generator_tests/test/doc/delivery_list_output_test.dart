@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'delivery_list_output';

void main() {
  group('doc', () {
    test(
      'Delivery list Output',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms/src/validators/required_validator.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            @Rf(output: true)
            class DeliveryListO extends Equatable {
              final List<DeliveryPointO> deliveryList;
              final List<ClientO>? clientList;
              const DeliveryListO({
                @RfArray() this.deliveryList = const [],
                @RfArray() this.clientList,
              });
            
              @override
              List<Object?> get props => [deliveryList, clientList];
            }
            
            @Rf(output: true, name: 'StandaloneDeliveryPoint')
            @RfGroup()
            class DeliveryPointO extends Equatable {
              final String name;
            
              final AddressO? address;
              const DeliveryPointO({
                @RfControl(
                  validators: [RequiredValidator()],
                )
                this.name = "",
                this.address,
              });
            
              @override
              List<Object?> get props => [name, address];
            }
            
            enum ClientType { home, office }
            
            @RfGroup()
            class ClientO extends Equatable {
              final ClientType clientType;
            
              final String? name;
            
              final String? notes;
              const ClientO({
                @RfControl<ClientType>() required this.clientType,
                @RfControl<String>() this.name,
                @RfControl<String>() this.notes,
              });
            
              @override
              List<Object?> get props => [name, notes];
            }
            
            @RfGroup()
            class AddressO extends Equatable {
              final String? street;
            
              final String? city;
              const AddressO({
                @RfControl(
                  validators: [RequiredValidator()],
                )
                this.street,
                @RfControl<String>() this.city,
              });
            
              @override
              List<Object?> get props => [street, city];
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
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_list_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveDeliveryListOFormConsumer extends StatelessWidget {
  const ReactiveDeliveryListOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, DeliveryListOForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDeliveryListOForm.of(context);

    if (formModel is! DeliveryListOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class DeliveryListOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const DeliveryListOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final DeliveryListOForm form;
}

class ReactiveDeliveryListOForm extends StatelessWidget {
  const ReactiveDeliveryListOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final DeliveryListOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static DeliveryListOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              DeliveryListOFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        DeliveryListOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as DeliveryListOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return DeliveryListOFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveDeliveryListOFormExt on BuildContext {
  DeliveryListOForm? deliveryListOFormWatch() =>
      ReactiveDeliveryListOForm.of(this);

  DeliveryListOForm? deliveryListOFormRead() =>
      ReactiveDeliveryListOForm.of(this, listen: false);
}

class DeliveryListOFormBuilder extends StatefulWidget {
  const DeliveryListOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final DeliveryListO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, DeliveryListOForm formModel, Widget? child) builder;

  final void Function(BuildContext context, DeliveryListOForm formModel)?
      initState;

  @override
  _DeliveryListOFormBuilderState createState() =>
      _DeliveryListOFormBuilderState();
}

class _DeliveryListOFormBuilderState extends State<DeliveryListOFormBuilder> {
  late DeliveryListOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        DeliveryListOForm(DeliveryListOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logDeliveryListOForm.onRecord.listen((LogRecord e) {
      // use `dumpErrorToConsole` for severe messages to ensure that severe
      // exceptions are formatted consistently with other Flutter examples and
      // avoids printing duplicate exceptions
      if (e.level >= Level.SEVERE) {
        final Object? error = e.error;
        FlutterError.dumpErrorToConsole(
          FlutterErrorDetails(
            exception: error is Exception ? error : Exception(error),
            stack: e.stackTrace,
            library: e.loggerName,
            context: ErrorDescription(e.message),
          ),
        );
      } else {
        log(
          e.message,
          time: e.time,
          sequenceNumber: e.sequenceNumber,
          level: e.level.value,
          name: e.loggerName,
          zone: e.zone,
          error: e.error,
          stackTrace: e.stackTrace,
        );
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant DeliveryListOFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    _logSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveDeliveryListOForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

final _logDeliveryListOForm = Logger.detached('DeliveryListOForm');

class DeliveryListOForm
    implements FormModel<DeliveryListO, DeliveryListOOutput> {
  DeliveryListOForm(
    this.form,
    this.path,
  );

  static const String deliveryListControlName = "deliveryList";

  static const String clientListControlName = "clientList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String deliveryListControlPath() => pathBuilder(deliveryListControlName);

  String clientListControlPath() => pathBuilder(clientListControlName);

  List<DeliveryPointOOutput> get _deliveryListValue =>
      deliveryListDeliveryPointOForm.map((e) => e.model).toList();

  List<ClientOOutput>? get _clientListValue =>
      clientListClientOForm.map((e) => e.model).toList();

  List<DeliveryPointO> get _deliveryListRawValue =>
      deliveryListDeliveryPointOForm.map((e) => e.rawModel).toList();

  List<ClientO>? get _clientListRawValue =>
      clientListClientOForm.map((e) => e.rawModel).toList();

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsDeliveryList {
    try {
      form.control(deliveryListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsClientList {
    try {
      form.control(clientListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get deliveryListErrors => deliveryListControl.errors;

  Map<String, Object>? get clientListErrors => clientListControl.errors;

  void get deliveryListFocus => form.focus(deliveryListControlPath());

  void get clientListFocus => form.focus(clientListControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void clientListRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  void deliveryListValueUpdate(
    List<DeliveryPointO> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      deliveryListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <DeliveryPointO>[];
    final toAdd = <DeliveryPointO>[];

    localValue.asMap().forEach((k, v) {
      final values = deliveryListControl.controls.map((e) => e.value).toList();

      if (deliveryListDeliveryPointOForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      deliveryListControl.updateValue(
          toUpdate
              .map((e) => DeliveryPointOForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        deliveryListControl.add(DeliveryPointOForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void clientListValueUpdate(
    List<ClientO>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value ?? []);
    if (localValue.isEmpty) {
      clientListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <ClientO>[];
    final toAdd = <ClientO>[];

    localValue.asMap().forEach((k, v) {
      final values = clientListControl.controls.map((e) => e.value).toList();

      if (clientListClientOForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      clientListControl.updateValue(
          toUpdate.map((e) => ClientOForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        clientListControl.add(ClientOForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void deliveryListInsert(
    int i,
    DeliveryPointO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = deliveryListControl.controls.map((e) => e.value).toList();
    if (values.length < i) {
      addDeliveryListItem(value);
      return;
    }

    deliveryListControl.insert(
      i,
      DeliveryPointOForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void clientListInsert(
    int i,
    ClientO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = clientListControl.controls.map((e) => e.value).toList();
    if (values.length < i) {
      addClientListItem(value);
      return;
    }

    clientListControl.insert(
      i,
      ClientOForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void deliveryListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    deliveryListDeliveryPointOForm.clear();
    deliveryListControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void clientListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    clientListClientOForm.clear();
    clientListControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void deliveryListValuePatch(
    List<DeliveryPointO> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = deliveryListDeliveryPointOForm.asMap().keys;

    final toPatch = <DeliveryPointO>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    deliveryListControl.patchValue(
        toPatch
            .map((e) => DeliveryPointOForm.formElements(e).rawValue)
            .toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void clientListValuePatch(
    List<ClientO>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = clientListClientOForm.asMap().keys;

    final toPatch = <ClientO>[];
    (value ?? []).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    clientListControl.patchValue(
        toPatch.map((e) => ClientOForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void deliveryListValueReset(
    List<DeliveryPointO> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      deliveryListControl.reset(
          value: value
              .map((e) => DeliveryPointOForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  void clientListValueReset(
    List<ClientO>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      clientListControl.reset(
          value:
              value?.map((e) => ClientOForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormArray<Map<String, Object?>> get deliveryListControl =>
      form.control(deliveryListControlPath())
          as FormArray<Map<String, Object?>>;

  FormArray<Map<String, Object?>> get clientListControl =>
      form.control(clientListControlPath()) as FormArray<Map<String, Object?>>;

  List<DeliveryPointOForm> get deliveryListDeliveryPointOForm {
    final values = deliveryListControl.controls.map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) => MapEntry(
            k, DeliveryPointOForm(form, pathBuilder("deliveryList.$k"))))
        .values
        .toList();
  }

  List<ClientOForm> get clientListClientOForm {
    final values = clientListControl.controls.map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, ClientOForm(form, pathBuilder("clientList.$k"))))
        .values
        .toList();
  }

  void deliveryListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      deliveryListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      deliveryListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void clientListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      clientListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      clientListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<DeliveryPointOForm>>
      get deliveryListExtendedControl => ExtendedControl<
              List<Map<String, Object?>?>, List<DeliveryPointOForm>>(
          form.control(deliveryListControlPath())
              as FormArray<Map<String, Object?>>,
          () => deliveryListDeliveryPointOForm);

  ExtendedControl<List<Map<String, Object?>?>, List<ClientOForm>>
      get clientListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<ClientOForm>>(
              form.control(clientListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => clientListClientOForm);

  void addDeliveryListItem(DeliveryPointO value) {
    deliveryListControl.add(DeliveryPointOForm.formElements(value));
  }

  void addClientListItem(ClientO value) {
    clientListControl.add(ClientOForm.formElements(value));
  }

  void removeDeliveryListItemAtIndex(int i) {
    if ((deliveryListControl.value ?? []).length > i) {
      deliveryListControl.removeAt(i);
    }
  }

  void removeClientListItemAtIndex(int i) {
    if ((clientListControl.value ?? []).length > i) {
      clientListControl.removeAt(i);
    }
  }

  void addDeliveryListItemList(List<DeliveryPointO> value) {
    value.forEach((e) => addDeliveryListItem(e));
  }

  void addClientListItemList(List<ClientO> value) {
    value.forEach((e) => addClientListItem(e));
  }

  @override
  @protected
  DeliveryListOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logDeliveryListOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return DeliveryListOOutput(
        deliveryList: _deliveryListValue, clientList: _clientListValue);
  }

  @override
  DeliveryListO get rawModel {
    return DeliveryListO(
        deliveryList: _deliveryListRawValue, clientList: _clientListRawValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      deliveryListDeliveryPointOForm.forEach((e) => e.toggleDisabled());
      clientListClientOForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      deliveryListDeliveryPointOForm.forEach((e) => e.toggleDisabled());
      clientListClientOForm.forEach((e) => e.toggleDisabled());

      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(DeliveryListO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      DeliveryListOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(DeliveryListOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logDeliveryListOForm.info('Errors');
      _logDeliveryListOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    DeliveryListO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DeliveryListOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    DeliveryListO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(DeliveryListO? deliveryListO) => FormGroup({
        deliveryListControlName: FormArray(
            (deliveryListO?.deliveryList ?? [])
                .map((e) => DeliveryPointOForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        clientListControlName: FormArray(
            (deliveryListO?.clientList ?? [])
                .map((e) => ClientOForm.formElements(e))
                .toList(),
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

final _logDeliveryPointOForm = Logger.detached('DeliveryPointOForm');

class DeliveryPointOForm
    implements FormModel<DeliveryPointO, DeliveryPointOOutput> {
  DeliveryPointOForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String addressControlName = "address";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String nameControlPath() => pathBuilder(nameControlName);

  String addressControlPath() => pathBuilder(addressControlName);

  String get _nameValue => nameControl.value ?? "";

  AddressOOutput? get _addressValue => addressForm.model;

  String get _nameRawValue => nameControl.value ?? "";

  AddressO? get _addressRawValue => addressForm.rawModel;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsAddress {
    try {
      form.control(addressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get nameErrors => nameControl.errors;

  Map<String, Object>? get addressErrors => addressControl.errors;

  void get nameFocus => form.focus(nameControlPath());

  void get addressFocus => form.focus(addressControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void addressRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValueUpdate(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.updateValue(AddressOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValuePatch(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.updateValue(AddressOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void addressValueReset(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl.reset(
          value: AddressOForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormGroup get addressControl =>
      form.control(addressControlPath()) as FormGroup;

  AddressOForm get addressForm => AddressOForm(form, pathBuilder('address'));

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  DeliveryPointOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logDeliveryPointOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return DeliveryPointOOutput(name: _nameValue, address: _addressValue);
  }

  @override
  DeliveryPointO get rawModel {
    return DeliveryPointO(name: _nameRawValue, address: _addressRawValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      addressForm.toggleDisabled();
      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      addressForm.toggleDisabled();
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(DeliveryPointO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      DeliveryPointOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(DeliveryPointOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logDeliveryPointOForm.info('Errors');
      _logDeliveryPointOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    DeliveryPointO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(DeliveryPointOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    DeliveryPointO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(DeliveryPointO? deliveryPointO) => FormGroup({
        nameControlName: FormControl<String>(
            value: deliveryPointO?.name,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        addressControlName: AddressOForm.formElements(deliveryPointO?.address)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

final _logAddressOForm = Logger.detached('AddressOForm');

class AddressOForm implements FormModel<AddressO, AddressOOutput> {
  AddressOForm(
    this.form,
    this.path,
  );

  static const String streetControlName = "street";

  static const String cityControlName = "city";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String streetControlPath() => pathBuilder(streetControlName);

  String cityControlPath() => pathBuilder(cityControlName);

  String get _streetValue => streetControl.value as String;

  String? get _cityValue => cityControl.value;

  String? get _streetRawValue => streetControl.value;

  String? get _cityRawValue => cityControl.value;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsStreet {
    try {
      form.control(streetControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsCity {
    try {
      form.control(cityControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get streetErrors => streetControl.errors;

  Map<String, Object>? get cityErrors => cityControl.errors;

  void get streetFocus => form.focus(streetControlPath());

  void get cityFocus => form.focus(cityControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void streetRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void cityRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  void streetValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    streetControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void streetValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    streetControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void streetValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      streetControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void cityValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cityControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get streetControl =>
      form.control(streetControlPath()) as FormControl<String>;

  FormControl<String> get cityControl =>
      form.control(cityControlPath()) as FormControl<String>;

  void streetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      streetControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      streetControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void citySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      cityControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      cityControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  AddressOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logAddressOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return AddressOOutput(street: _streetValue, city: _cityValue);
  }

  @override
  AddressO get rawModel {
    return AddressO(street: _streetRawValue, city: _cityRawValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(AddressO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      AddressOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(AddressOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logAddressOForm.info('Errors');
      _logAddressOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AddressOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    AddressO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(AddressO? addressO) => FormGroup({
        streetControlName: FormControl<String>(
            value: addressO?.street,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cityControlName: FormControl<String>(
            value: addressO?.city,
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

final _logClientOForm = Logger.detached('ClientOForm');

class ClientOForm implements FormModel<ClientO, ClientOOutput> {
  ClientOForm(
    this.form,
    this.path,
  );

  static const String clientTypeControlName = "clientType";

  static const String nameControlName = "name";

  static const String notesControlName = "notes";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String clientTypeControlPath() => pathBuilder(clientTypeControlName);

  String nameControlPath() => pathBuilder(nameControlName);

  String notesControlPath() => pathBuilder(notesControlName);

  ClientType get _clientTypeValue => clientTypeControl.value as ClientType;

  String? get _nameValue => nameControl.value;

  String? get _notesValue => notesControl.value;

  ClientType get _clientTypeRawValue => clientTypeControl.value as ClientType;

  String? get _nameRawValue => nameControl.value;

  String? get _notesRawValue => notesControl.value;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsClientType {
    try {
      form.control(clientTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsNotes {
    try {
      form.control(notesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get clientTypeErrors => clientTypeControl.errors;

  Map<String, Object>? get nameErrors => nameControl.errors;

  Map<String, Object>? get notesErrors => notesControl.errors;

  void get clientTypeFocus => form.focus(clientTypeControlPath());

  void get nameFocus => form.focus(nameControlPath());

  void get notesFocus => form.focus(notesControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void nameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void notesRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  void clientTypeValueUpdate(
    ClientType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    clientTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void notesValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    notesControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void clientTypeValuePatch(
    ClientType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    clientTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void notesValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    notesControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void clientTypeValueReset(
    ClientType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      clientTypeControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void nameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void notesValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      notesControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<ClientType> get clientTypeControl =>
      form.control(clientTypeControlPath()) as FormControl<ClientType>;

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormControl<String> get notesControl =>
      form.control(notesControlPath()) as FormControl<String>;

  void clientTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      clientTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      clientTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void notesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      notesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      notesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  ClientOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logClientOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ClientOOutput(
        clientType: _clientTypeValue, name: _nameValue, notes: _notesValue);
  }

  @override
  ClientO get rawModel {
    return ClientO(
        clientType: _clientTypeRawValue,
        name: _nameRawValue,
        notes: _notesRawValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(ClientO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      ClientOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ClientOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logClientOForm.info('Errors');
      _logClientOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ClientO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ClientOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ClientO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ClientO? clientO) => FormGroup({
        clientTypeControlName: FormControl<ClientType>(
            value: clientO?.clientType,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: clientO?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        notesControlName: FormControl<String>(
            value: clientO?.notes,
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

@Rf(output: true)
class DeliveryListOOutput extends Equatable {
  final List<DeliveryPointOOutput> deliveryList;
  final List<ClientOOutput>? clientList;
  const DeliveryListOOutput(
      {@RfArray() required this.deliveryList, @RfArray() this.clientList});
  @override
  List<Object?> get props => [deliveryList, clientList];
}

@Rf(output: true, name: 'StandaloneDeliveryPoint')
@RfGroup()
class DeliveryPointOOutput extends Equatable {
  final String name;
  final AddressOOutput? address;
  const DeliveryPointOOutput(
      {@RfControl(validators: [RequiredValidator()]) required this.name,
      this.address});
  @override
  List<Object?> get props => [name, address];
}

@RfGroup()
class ClientOOutput extends Equatable {
  final ClientType clientType;
  final String? name;
  final String? notes;
  const ClientOOutput(
      {@RfControl<ClientType>() required this.clientType,
      @RfControl<String>() this.name,
      @RfControl<String>() this.notes});
  @override
  List<Object?> get props => [name, notes];
}

@RfGroup()
class AddressOOutput extends Equatable {
  final String street;
  final String? city;
  const AddressOOutput(
      {@RfControl(validators: [RequiredValidator()]) required this.street,
      @RfControl<String>() this.city});
  @override
  List<Object?> get props => [street, city];
}

class ReactiveDeliveryListOFormArrayBuilder<
    ReactiveDeliveryListOFormArrayBuilderT> extends StatelessWidget {
  const ReactiveDeliveryListOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveDeliveryListOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveDeliveryListOFormArrayBuilderT>? Function(
      DeliveryListOForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DeliveryListOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveDeliveryListOFormArrayBuilderT> control,
      ReactiveDeliveryListOFormArrayBuilderT? item,
      DeliveryListOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDeliveryListOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveDeliveryListOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  formArray.controls[i]
                      as FormControl<ReactiveDeliveryListOFormArrayBuilderT>,
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

class ReactiveDeliveryListOFormFormGroupArrayBuilder<
    ReactiveDeliveryListOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveDeliveryListOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveDeliveryListOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveDeliveryListOFormFormGroupArrayBuilderT>>
      Function(DeliveryListOForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      DeliveryListOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveDeliveryListOFormFormGroupArrayBuilderT? item,
      DeliveryListOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveDeliveryListOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveDeliveryListOFormFormGroupArrayBuilderT>[])
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

class ReactiveStandaloneDeliveryPointFormConsumer extends StatelessWidget {
  const ReactiveStandaloneDeliveryPointFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      StandaloneDeliveryPointForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStandaloneDeliveryPointForm.of(context);

    if (formModel is! StandaloneDeliveryPointForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class StandaloneDeliveryPointFormInheritedStreamer
    extends InheritedStreamer<dynamic> {
  const StandaloneDeliveryPointFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final StandaloneDeliveryPointForm form;
}

class ReactiveStandaloneDeliveryPointForm extends StatelessWidget {
  const ReactiveStandaloneDeliveryPointForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final StandaloneDeliveryPointForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static StandaloneDeliveryPointForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              StandaloneDeliveryPointFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        StandaloneDeliveryPointFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as StandaloneDeliveryPointFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return StandaloneDeliveryPointFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveStandaloneDeliveryPointFormExt on BuildContext {
  StandaloneDeliveryPointForm? standaloneDeliveryPointFormWatch() =>
      ReactiveStandaloneDeliveryPointForm.of(this);

  StandaloneDeliveryPointForm? standaloneDeliveryPointFormRead() =>
      ReactiveStandaloneDeliveryPointForm.of(this, listen: false);
}

class StandaloneDeliveryPointFormBuilder extends StatefulWidget {
  const StandaloneDeliveryPointFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final DeliveryPointO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context,
      StandaloneDeliveryPointForm formModel, Widget? child) builder;

  final void Function(
      BuildContext context, StandaloneDeliveryPointForm formModel)? initState;

  @override
  _StandaloneDeliveryPointFormBuilderState createState() =>
      _StandaloneDeliveryPointFormBuilderState();
}

class _StandaloneDeliveryPointFormBuilderState
    extends State<StandaloneDeliveryPointFormBuilder> {
  late StandaloneDeliveryPointForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = StandaloneDeliveryPointForm(
        StandaloneDeliveryPointForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription =
        _logStandaloneDeliveryPointForm.onRecord.listen((LogRecord e) {
      // use `dumpErrorToConsole` for severe messages to ensure that severe
      // exceptions are formatted consistently with other Flutter examples and
      // avoids printing duplicate exceptions
      if (e.level >= Level.SEVERE) {
        final Object? error = e.error;
        FlutterError.dumpErrorToConsole(
          FlutterErrorDetails(
            exception: error is Exception ? error : Exception(error),
            stack: e.stackTrace,
            library: e.loggerName,
            context: ErrorDescription(e.message),
          ),
        );
      } else {
        log(
          e.message,
          time: e.time,
          sequenceNumber: e.sequenceNumber,
          level: e.level.value,
          name: e.loggerName,
          zone: e.zone,
          error: e.error,
          stackTrace: e.stackTrace,
        );
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant StandaloneDeliveryPointFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    _logSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveStandaloneDeliveryPointForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

final _logStandaloneDeliveryPointForm =
    Logger.detached('StandaloneDeliveryPointForm');

class StandaloneDeliveryPointForm
    implements FormModel<DeliveryPointO, DeliveryPointOOutput> {
  StandaloneDeliveryPointForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String addressControlName = "address";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String nameControlPath() => pathBuilder(nameControlName);

  String addressControlPath() => pathBuilder(addressControlName);

  String get _nameValue => nameControl.value ?? "";

  AddressOOutput? get _addressValue => addressForm.model;

  String get _nameRawValue => nameControl.value ?? "";

  AddressO? get _addressRawValue => addressForm.rawModel;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsAddress {
    try {
      form.control(addressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get nameErrors => nameControl.errors;

  Map<String, Object>? get addressErrors => addressControl.errors;

  void get nameFocus => form.focus(nameControlPath());

  void get addressFocus => form.focus(addressControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void addressRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValueUpdate(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.updateValue(AddressOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValuePatch(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl.updateValue(AddressOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void addressValueReset(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl.reset(
          value: AddressOForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormGroup get addressControl =>
      form.control(addressControlPath()) as FormGroup;

  AddressOForm get addressForm => AddressOForm(form, pathBuilder('address'));

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      addressControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  DeliveryPointOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logStandaloneDeliveryPointForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return DeliveryPointOOutput(name: _nameValue, address: _addressValue);
  }

  @override
  DeliveryPointO get rawModel {
    return DeliveryPointO(name: _nameRawValue, address: _addressRawValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      addressForm.toggleDisabled();
      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      addressForm.toggleDisabled();
      currentFormInstance.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentFormInstance.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(DeliveryPointO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      StandaloneDeliveryPointForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(DeliveryPointOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logStandaloneDeliveryPointForm.info('Errors');
      _logStandaloneDeliveryPointForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    DeliveryPointO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(StandaloneDeliveryPointForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    DeliveryPointO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(DeliveryPointO? deliveryPointO) => FormGroup({
        nameControlName: FormControl<String>(
            value: deliveryPointO?.name,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        addressControlName: AddressOForm.formElements(deliveryPointO?.address)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveStandaloneDeliveryPointFormArrayBuilder<
    ReactiveStandaloneDeliveryPointFormArrayBuilderT> extends StatelessWidget {
  const ReactiveStandaloneDeliveryPointFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveStandaloneDeliveryPointFormArrayBuilderT>?
      formControl;

  final FormArray<ReactiveStandaloneDeliveryPointFormArrayBuilderT>? Function(
      StandaloneDeliveryPointForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StandaloneDeliveryPointForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveStandaloneDeliveryPointFormArrayBuilderT> control,
      ReactiveStandaloneDeliveryPointFormArrayBuilderT? item,
      StandaloneDeliveryPointForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStandaloneDeliveryPointForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveStandaloneDeliveryPointFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  formArray.controls[i] as FormControl<
                      ReactiveStandaloneDeliveryPointFormArrayBuilderT>,
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

class ReactiveStandaloneDeliveryPointFormFormGroupArrayBuilder<
        ReactiveStandaloneDeliveryPointFormFormGroupArrayBuilderT>
    extends StatelessWidget {
  const ReactiveStandaloneDeliveryPointFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveStandaloneDeliveryPointFormFormGroupArrayBuilderT>>?
      extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveStandaloneDeliveryPointFormFormGroupArrayBuilderT>>
      Function(StandaloneDeliveryPointForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StandaloneDeliveryPointForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveStandaloneDeliveryPointFormFormGroupArrayBuilderT? item,
      StandaloneDeliveryPointForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStandaloneDeliveryPointForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveStandaloneDeliveryPointFormFormGroupArrayBuilderT>[])
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
