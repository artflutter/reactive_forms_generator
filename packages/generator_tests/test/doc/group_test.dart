@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'group';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with nullable groups types',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';

            @Rf()
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
            
            @RfGroup()
            class Personal {
              final String? name;
            
              final String? email;
            
              Personal({
                @RfControl<String>() this.name,
                @RfControl<String>() this.email,
              });
            }
            
            @RfGroup()
            class Phone {
              final String? phoneNumber;
            
              final String? countryIso;
            
              Phone({
                @RfControl<String>() this.phoneNumber,
                @RfControl<String>() this.countryIso,
              });
            }
            
            @RfGroup()
            class Address {
              final String? street;
            
              final String? city;
            
              final String? zip;
            
              Address({
                @RfControl<String>() this.street,
                @RfControl<String>() this.city,
                @RfControl<String>() this.zip,
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

part of 'group.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveGroupFormConsumer extends StatelessWidget {
  const ReactiveGroupFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

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
  const GroupFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final GroupForm form;
}

class ReactiveGroupForm extends StatelessWidget {
  const ReactiveGroupForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final GroupForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static GroupForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
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
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveGroupFormExt on BuildContext {
  GroupForm? groupFormWatch() => ReactiveGroupForm.of(this);

  GroupForm? groupFormRead() => ReactiveGroupForm.of(this, listen: false);
}

class GroupFormBuilder extends StatefulWidget {
  const GroupFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Group? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, GroupForm formModel, Widget? child) builder;

  final void Function(BuildContext context, GroupForm formModel)? initState;

  @override
  _GroupFormBuilderState createState() => _GroupFormBuilderState();
}

class _GroupFormBuilderState extends State<GroupFormBuilder> {
  late GroupForm _formModel;

  @override
  void initState() {
    _formModel = GroupForm(GroupForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant GroupFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveGroupForm(
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

/// Similar to the GroupFormBuilder but opts out of automatic form lifecycle
/// management.
///
/// See `GroupFormBuilder.initState` and `GroupFormBuilder.dispose` for examples
/// of initializing/disposing the formModel.
class GroupFormModelBuilder extends StatefulWidget {
  const GroupFormModelBuilder({
    Key? key,
    required this.formModel,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final GroupForm formModel;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, GroupForm formModel, Widget? child) builder;

  final void Function(BuildContext context, GroupForm formModel)? initState;

  @override
  _GroupFormModelBuilderState createState() => _GroupFormModelBuilderState();
}

class _GroupFormModelBuilderState extends State<GroupFormModelBuilder> {
  late GroupForm _formModel;

  @override
  void initState() {
    super.initState();

    _formModel = widget.formModel;

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);
  }

  @override
  void didUpdateWidget(covariant GroupFormModelBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.formModel != oldWidget.formModel) {
      _formModel = widget.formModel;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveGroupForm(
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

class GroupForm implements FormModel<Group> {
  GroupForm(
    this.form,
    this.path,
  );

  static const String personalControlName = "personal";

  static const String phoneControlName = "phone";

  static const String addressControlName = "address";

  static const String address2ControlName = "address2";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String personalControlPath() => pathBuilder(personalControlName);

  String phoneControlPath() => pathBuilder(phoneControlName);

  String addressControlPath() => pathBuilder(addressControlName);

  String address2ControlPath() => pathBuilder(address2ControlName);

  Personal? get _personalValue => personalForm.model;

  Phone? get _phoneValue => phoneForm.model;

  Address? get _addressValue => addressForm.model;

  Address? get _address2Value => address2Form.model;

  bool get containsPersonal {
    try {
      form.control(personalControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPhone {
    try {
      form.control(phoneControlPath());
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

  bool get containsAddress2 {
    try {
      form.control(address2ControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get personalErrors => personalControl?.errors;

  Map<String, Object>? get phoneErrors => phoneControl?.errors;

  Map<String, Object>? get addressErrors => addressControl?.errors;

  Map<String, Object>? get address2Errors => address2Control?.errors;

  void get personalFocus => form.focus(personalControlPath());

  void get phoneFocus => form.focus(phoneControlPath());

  void get addressFocus => form.focus(addressControlPath());

  void get address2Focus => form.focus(address2ControlPath());

  void personalRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPersonal) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          personalControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            personalControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void phoneRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPhone) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          phoneControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            phoneControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

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

  void address2Remove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsAddress2) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          address2ControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            address2ControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void personalValueUpdate(
    Personal? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    personalControl?.updateValue(PersonalForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValueUpdate(
    Phone? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl?.updateValue(PhoneForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValueUpdate(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void address2ValueUpdate(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    address2Control?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void personalValuePatch(
    Personal? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    personalControl?.updateValue(PersonalForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValuePatch(
    Phone? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl?.updateValue(PhoneForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void addressValuePatch(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    addressControl?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void address2ValuePatch(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    address2Control?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void personalValueReset(
    Personal? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      personalControl?.reset(
          value: PersonalForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void phoneValueReset(
    Phone? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneControl?.reset(
          value: PhoneForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void addressValueReset(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      addressControl?.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void address2ValueReset(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      address2Control?.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormGroup? get personalControl => containsPersonal
      ? form.control(personalControlPath()) as FormGroup?
      : null;

  FormGroup? get phoneControl =>
      containsPhone ? form.control(phoneControlPath()) as FormGroup? : null;

  FormGroup? get addressControl =>
      containsAddress ? form.control(addressControlPath()) as FormGroup? : null;

  FormGroup? get address2Control => containsAddress2
      ? form.control(address2ControlPath()) as FormGroup?
      : null;

  PersonalForm get personalForm => PersonalForm(form, pathBuilder('personal'));

  PhoneForm get phoneForm => PhoneForm(form, pathBuilder('phone'));

  AddressForm get addressForm => AddressForm(form, pathBuilder('address'));

  AddressForm get address2Form => AddressForm(form, pathBuilder('address2'));

  void personalSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      personalControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      personalControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void phoneSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phoneControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneControl?.markAsEnabled(
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
      addressControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      addressControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void address2SetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      address2Control?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      address2Control?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Group get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'GroupForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Group(
        personal: _personalValue,
        phone: _phoneValue,
        address: _addressValue,
        address2: _address2Value);
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

      personalForm.toggleDisabled();
      phoneForm.toggleDisabled();
      addressForm.toggleDisabled();
      address2Form.toggleDisabled();
      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      personalForm.toggleDisabled();
      phoneForm.toggleDisabled();
      addressForm.toggleDisabled();
      address2Form.toggleDisabled();
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
  void submit({
    required void Function(Group model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Group? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(GroupForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Group? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Group? group) => FormGroup({
        personalControlName: PersonalForm.formElements(group?.personal),
        phoneControlName: PhoneForm.formElements(group?.phone),
        addressControlName: AddressForm.formElements(group?.address),
        address2ControlName: AddressForm.formElements(group?.address2)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class PersonalForm implements FormModel<Personal> {
  PersonalForm(
    this.form,
    this.path,
  );

  static const String nameControlName = "name";

  static const String emailControlName = "email";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String nameControlPath() => pathBuilder(nameControlName);

  String emailControlPath() => pathBuilder(emailControlName);

  String? get _nameValue => nameControl?.value;

  String? get _emailValue => emailControl?.value;

  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get nameErrors => nameControl?.errors;

  Map<String, Object>? get emailErrors => emailControl?.errors;

  void get nameFocus => form.focus(nameControlPath());

  void get emailFocus => form.focus(emailControlPath());

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

  void emailRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsEmail) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          emailControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            emailControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void emailValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String>? get nameControl => containsName
      ? form.control(nameControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get emailControl => containsEmail
      ? form.control(emailControlPath()) as FormControl<String>?
      : null;

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Personal get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'PersonalForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Personal(name: _nameValue, email: _emailValue);
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
  void submit({
    required void Function(Personal model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Personal? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PersonalForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Personal? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Personal? personal) => FormGroup({
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

class PhoneForm implements FormModel<Phone> {
  PhoneForm(
    this.form,
    this.path,
  );

  static const String phoneNumberControlName = "phoneNumber";

  static const String countryIsoControlName = "countryIso";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String phoneNumberControlPath() => pathBuilder(phoneNumberControlName);

  String countryIsoControlPath() => pathBuilder(countryIsoControlName);

  String? get _phoneNumberValue => phoneNumberControl?.value;

  String? get _countryIsoValue => countryIsoControl?.value;

  bool get containsPhoneNumber {
    try {
      form.control(phoneNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsCountryIso {
    try {
      form.control(countryIsoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get phoneNumberErrors => phoneNumberControl?.errors;

  Map<String, Object>? get countryIsoErrors => countryIsoControl?.errors;

  void get phoneNumberFocus => form.focus(phoneNumberControlPath());

  void get countryIsoFocus => form.focus(countryIsoControlPath());

  void phoneNumberRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsPhoneNumber) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          phoneNumberControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            phoneNumberControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void countryIsoRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCountryIso) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          countryIsoControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            countryIsoControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void phoneNumberValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneNumberControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryIsoValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryIsoControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneNumberValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneNumberControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryIsoValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryIsoControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneNumberValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneNumberControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void countryIsoValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      countryIsoControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String>? get phoneNumberControl => containsPhoneNumber
      ? form.control(phoneNumberControlPath()) as FormControl<String>?
      : null;

  FormControl<String>? get countryIsoControl => containsCountryIso
      ? form.control(countryIsoControlPath()) as FormControl<String>?
      : null;

  void phoneNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phoneNumberControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneNumberControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void countryIsoSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      countryIsoControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      countryIsoControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Phone get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'PhoneForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Phone(phoneNumber: _phoneNumberValue, countryIso: _countryIsoValue);
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
  void submit({
    required void Function(Phone model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Phone? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PhoneForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Phone? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Phone? phone) => FormGroup({
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

class AddressForm implements FormModel<Address> {
  AddressForm(
    this.form,
    this.path,
  );

  static const String streetControlName = "street";

  static const String cityControlName = "city";

  static const String zipControlName = "zip";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String streetControlPath() => pathBuilder(streetControlName);

  String cityControlPath() => pathBuilder(cityControlName);

  String zipControlPath() => pathBuilder(zipControlName);

  String? get _streetValue => streetControl?.value;

  String? get _cityValue => cityControl?.value;

  String? get _zipValue => zipControl?.value;

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

  Map<String, Object>? get streetErrors => streetControl?.errors;

  Map<String, Object>? get cityErrors => cityControl?.errors;

  Map<String, Object>? get zipErrors => zipControl?.errors;

  void get streetFocus => form.focus(streetControlPath());

  void get cityFocus => form.focus(cityControlPath());

  void get zipFocus => form.focus(zipControlPath());

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

  void zipRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  void streetValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    streetControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void zipValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    zipControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void streetValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    streetControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void cityValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    cityControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void zipValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    zipControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void streetValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      streetControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void cityValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      cityControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void zipValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
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

  void streetSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      streetControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      streetControl?.markAsEnabled(
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
      cityControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      cityControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void zipSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      zipControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      zipControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Address get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'AddressForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Address(street: _streetValue, city: _cityValue, zip: _zipValue);
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
  void submit({
    required void Function(Address model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AddressForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Address? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Address? address) => FormGroup({
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

class ReactiveGroupFormArrayBuilder<ReactiveGroupFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveGroupFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveGroupFormArrayBuilderT>? formControl;

  final FormArray<ReactiveGroupFormArrayBuilderT>? Function(
      GroupForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupForm formModel)?
      builder;

  final Widget Function(BuildContext context, int i,
      ReactiveGroupFormArrayBuilderT? item, GroupForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveGroupFormArrayBuilderT>(
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

class ReactiveGroupFormFormGroupArrayBuilder<
    ReactiveGroupFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveGroupFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveGroupFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveGroupFormFormGroupArrayBuilderT>>
      Function(GroupForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveGroupFormFormGroupArrayBuilderT? item,
      GroupForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveGroupFormFormGroupArrayBuilderT>[])
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
