@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'group_output';

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

            @Rf(output: true)
            class GroupO {
              final PersonalO? personal;
            
              final PhoneO? phone;
                        
              final AddressO? address;
            
              final AddressO? address2;
            
              GroupO({
                this.personal,
                this.phone,
                this.address,
                this.address2,
              });
            }
            
            @RfGroup()
            class PersonalO {
              final String? name;
            
              final String? email;
            
              PersonalO({
                @RfControl<String>() this.name,
                @RfControl<String>() this.email,
              });
            }
            
            @RfGroup()
            class PhoneO {
              final String? phoneNumber;
            
              final String? countryIso;
            
              PhoneO({
                @RfControl<String>() this.phoneNumber,
                @RfControl<String>() this.countryIso,
              });
            }
            
            @RfGroup()
            class AddressO {
              final String? street;
            
              final String? city;
            
              final String? zip;
            
              AddressO({
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
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'group_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveGroupOFormConsumer extends StatelessWidget {
  const ReactiveGroupOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, GroupOForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupOForm.of(context);

    if (formModel is! GroupOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class GroupOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const GroupOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final GroupOForm form;
}

class ReactiveGroupOForm extends StatelessWidget {
  const ReactiveGroupOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final GroupOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static GroupOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<GroupOFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<GroupOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as GroupOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return GroupOFormInheritedStreamer(
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

extension ReactiveReactiveGroupOFormExt on BuildContext {
  GroupOForm? groupOFormWatch() => ReactiveGroupOForm.of(this);

  GroupOForm? groupOFormRead() => ReactiveGroupOForm.of(this, listen: false);
}

class GroupOFormBuilder extends StatefulWidget {
  const GroupOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final GroupO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, GroupOForm formModel, Widget? child) builder;

  final void Function(BuildContext context, GroupOForm formModel)? initState;

  @override
  _GroupOFormBuilderState createState() => _GroupOFormBuilderState();
}

class _GroupOFormBuilderState extends State<GroupOFormBuilder> {
  late GroupOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = GroupOForm(GroupOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logGroupOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant GroupOFormBuilder oldWidget) {
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
    return ReactiveGroupOForm(
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

final _logGroupOForm = Logger.detached('GroupOForm');

class GroupOForm implements FormModel<GroupO, GroupOOutput> {
  GroupOForm(
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

  PersonalOOutput? get _personalValue => personalForm.model;

  PhoneOOutput? get _phoneValue => phoneForm.model;

  AddressOOutput? get _addressValue => addressForm.model;

  AddressOOutput? get _address2Value => address2Form.model;

  PersonalO? get _personalRawValue => personalForm.rawModel;

  PhoneO? get _phoneRawValue => phoneForm.rawModel;

  AddressO? get _addressRawValue => addressForm.rawModel;

  AddressO? get _address2RawValue => address2Form.rawModel;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsPersonal {
    try {
      form.control(personalControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsPhone {
    try {
      form.control(phoneControlPath());
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

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsAddress2 {
    try {
      form.control(address2ControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get personalErrors => personalControl.errors;

  Map<String, Object>? get phoneErrors => phoneControl.errors;

  Map<String, Object>? get addressErrors => addressControl.errors;

  Map<String, Object>? get address2Errors => address2Control.errors;

  void get personalFocus => form.focus(personalControlPath());

  void get phoneFocus => form.focus(phoneControlPath());

  void get addressFocus => form.focus(addressControlPath());

  void get address2Focus => form.focus(address2ControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
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

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
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

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
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
    PersonalO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    personalControl.updateValue(PersonalOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValueUpdate(
    PhoneO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl.updateValue(PhoneOForm.formElements(value).rawValue,
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

  void address2ValueUpdate(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    address2Control.updateValue(AddressOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void personalValuePatch(
    PersonalO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    personalControl.updateValue(PersonalOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneValuePatch(
    PhoneO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneControl.updateValue(PhoneOForm.formElements(value).rawValue,
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

  void address2ValuePatch(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    address2Control.updateValue(AddressOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void personalValueReset(
    PersonalO? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      personalControl.reset(
          value: PersonalOForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void phoneValueReset(
    PhoneO? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneControl.reset(
          value: PhoneOForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

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

  void address2ValueReset(
    AddressO? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      address2Control.reset(
          value: AddressOForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormGroup get personalControl =>
      form.control(personalControlPath()) as FormGroup;

  FormGroup get phoneControl => form.control(phoneControlPath()) as FormGroup;

  FormGroup get addressControl =>
      form.control(addressControlPath()) as FormGroup;

  FormGroup get address2Control =>
      form.control(address2ControlPath()) as FormGroup;

  PersonalOForm get personalForm =>
      PersonalOForm(form, pathBuilder('personal'));

  PhoneOForm get phoneForm => PhoneOForm(form, pathBuilder('phone'));

  AddressOForm get addressForm => AddressOForm(form, pathBuilder('address'));

  AddressOForm get address2Form => AddressOForm(form, pathBuilder('address2'));

  void personalSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      personalControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      personalControl.markAsEnabled(
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
      phoneControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneControl.markAsEnabled(
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

  void address2SetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      address2Control.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      address2Control.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  GroupOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logGroupOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return GroupOOutput(
        personal: _personalValue,
        phone: _phoneValue,
        address: _addressValue,
        address2: _address2Value);
  }

  @override
  GroupO get rawModel {
    return GroupO(
        personal: _personalRawValue,
        phone: _phoneRawValue,
        address: _addressRawValue,
        address2: _address2RawValue);
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
  bool equalsTo(GroupO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      GroupOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(GroupOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logGroupOForm.info('Errors');
      _logGroupOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    GroupO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(GroupOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    GroupO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(GroupO? groupO) => FormGroup({
        personalControlName: PersonalOForm.formElements(groupO?.personal),
        phoneControlName: PhoneOForm.formElements(groupO?.phone),
        addressControlName: AddressOForm.formElements(groupO?.address),
        address2ControlName: AddressOForm.formElements(groupO?.address2)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

final _logPersonalOForm = Logger.detached('PersonalOForm');

class PersonalOForm implements FormModel<PersonalO, PersonalOOutput> {
  PersonalOForm(
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

  String? get _nameValue => nameControl.value;

  String? get _emailValue => emailControl.value;

  String? get _nameRawValue => nameControl.value;

  String? get _emailRawValue => emailControl.value;

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
  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get nameErrors => nameControl.errors;

  Map<String, Object>? get emailErrors => emailControl.errors;

  void get nameFocus => form.focus(nameControlPath());

  void get emailFocus => form.focus(emailControlPath());

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
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
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

  void emailValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

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

  void emailValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;

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

  void emailSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  PersonalOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logPersonalOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return PersonalOOutput(name: _nameValue, email: _emailValue);
  }

  @override
  PersonalO get rawModel {
    return PersonalO(name: _nameRawValue, email: _emailRawValue);
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
  bool equalsTo(PersonalO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      PersonalOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(PersonalOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logPersonalOForm.info('Errors');
      _logPersonalOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    PersonalO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PersonalOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PersonalO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PersonalO? personalO) => FormGroup({
        nameControlName: FormControl<String>(
            value: personalO?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: personalO?.email,
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

final _logPhoneOForm = Logger.detached('PhoneOForm');

class PhoneOForm implements FormModel<PhoneO, PhoneOOutput> {
  PhoneOForm(
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

  String? get _phoneNumberValue => phoneNumberControl.value;

  String? get _countryIsoValue => countryIsoControl.value;

  String? get _phoneNumberRawValue => phoneNumberControl.value;

  String? get _countryIsoRawValue => countryIsoControl.value;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsPhoneNumber {
    try {
      form.control(phoneNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsCountryIso {
    try {
      form.control(countryIsoControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get phoneNumberErrors => phoneNumberControl.errors;

  Map<String, Object>? get countryIsoErrors => countryIsoControl.errors;

  void get phoneNumberFocus => form.focus(phoneNumberControlPath());

  void get countryIsoFocus => form.focus(countryIsoControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
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

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
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
    phoneNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryIsoValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryIsoControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneNumberValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    phoneNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void countryIsoValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    countryIsoControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void phoneNumberValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      phoneNumberControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void countryIsoValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      countryIsoControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get phoneNumberControl =>
      form.control(phoneNumberControlPath()) as FormControl<String>;

  FormControl<String> get countryIsoControl =>
      form.control(countryIsoControlPath()) as FormControl<String>;

  void phoneNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      phoneNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      phoneNumberControl.markAsEnabled(
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
      countryIsoControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      countryIsoControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  PhoneOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logPhoneOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return PhoneOOutput(
        phoneNumber: _phoneNumberValue, countryIso: _countryIsoValue);
  }

  @override
  PhoneO get rawModel {
    return PhoneO(
        phoneNumber: _phoneNumberRawValue, countryIso: _countryIsoRawValue);
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
  bool equalsTo(PhoneO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      PhoneOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(PhoneOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logPhoneOForm.info('Errors');
      _logPhoneOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    PhoneO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PhoneOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PhoneO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PhoneO? phoneO) => FormGroup({
        phoneNumberControlName: FormControl<String>(
            value: phoneO?.phoneNumber,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        countryIsoControlName: FormControl<String>(
            value: phoneO?.countryIso,
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

final _logAddressOForm = Logger.detached('AddressOForm');

class AddressOForm implements FormModel<AddressO, AddressOOutput> {
  AddressOForm(
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

  String? get _streetValue => streetControl.value;

  String? get _cityValue => cityControl.value;

  String? get _zipValue => zipControl.value;

  String? get _streetRawValue => streetControl.value;

  String? get _cityRawValue => cityControl.value;

  String? get _zipRawValue => zipControl.value;

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

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsZip {
    try {
      form.control(zipControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get streetErrors => streetControl.errors;

  Map<String, Object>? get cityErrors => cityControl.errors;

  Map<String, Object>? get zipErrors => zipControl.errors;

  void get streetFocus => form.focus(streetControlPath());

  void get cityFocus => form.focus(cityControlPath());

  void get zipFocus => form.focus(zipControlPath());

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

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
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

  void zipValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    zipControl.updateValue(value,
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

  void zipValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    zipControl.patchValue(value,
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

  void zipValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      zipControl.reset(
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

  FormControl<String> get zipControl =>
      form.control(zipControlPath()) as FormControl<String>;

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

  void zipSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      zipControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      zipControl.markAsEnabled(
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
    return AddressOOutput(
        street: _streetValue, city: _cityValue, zip: _zipValue);
  }

  @override
  AddressO get rawModel {
    return AddressO(
        street: _streetRawValue, city: _cityRawValue, zip: _zipRawValue);
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
            validators: [],
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
            touched: false),
        zipControlName: FormControl<String>(
            value: addressO?.zip,
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
class GroupOOutput {
  final PersonalOOutput? personal;
  final PhoneOOutput? phone;
  final AddressOOutput? address;
  final AddressOOutput? address2;
  GroupOOutput({this.personal, this.phone, this.address, this.address2});
}

@RfGroup()
class PersonalOOutput {
  final String? name;
  final String? email;
  PersonalOOutput(
      {@RfControl<String>() this.name, @RfControl<String>() this.email});
}

@RfGroup()
class PhoneOOutput {
  final String? phoneNumber;
  final String? countryIso;
  PhoneOOutput(
      {@RfControl<String>() this.phoneNumber,
      @RfControl<String>() this.countryIso});
}

@RfGroup()
class AddressOOutput {
  final String? street;
  final String? city;
  final String? zip;
  AddressOOutput(
      {@RfControl<String>() this.street,
      @RfControl<String>() this.city,
      @RfControl<String>() this.zip});
}

class ReactiveGroupOFormArrayBuilder<ReactiveGroupOFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveGroupOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveGroupOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveGroupOFormArrayBuilderT>? Function(
      GroupOForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveGroupOFormArrayBuilderT> control,
      ReactiveGroupOFormArrayBuilderT? item,
      GroupOForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveGroupOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveGroupOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveGroupOFormArrayBuilderT>,
                ) ??
                true)
            .toList();

        final itemList = values
            .map((item) {
              return MapEntry(
                item.$1,
                itemBuilder(
                  context,
                  item.$1,
                  formArray.controls[item.$1]
                      as FormControl<ReactiveGroupOFormArrayBuilderT>,
                  item.$2.value,
                  formModel,
                ),
              );
            })
            .map((e) => e.value)
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
          return emptyBuilder!(context);
        }

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

class ReactiveGroupOFormArrayBuilder2<ReactiveGroupOFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveGroupOFormArrayBuilder2({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveGroupOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveGroupOFormArrayBuilderT>? Function(
      GroupOForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        GroupOForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveGroupOFormArrayBuilderT> control,
        ReactiveGroupOFormArrayBuilderT? item,
        GroupOForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveGroupOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveGroupOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveGroupOFormArrayBuilderT>,
                ) ??
                true)
            .toList();

        final itemList = values
            .map((item) {
              return MapEntry(
                item.$1,
                itemBuilder((
                  context: context,
                  i: item.$1,
                  control: formArray.controls[item.$1]
                      as FormControl<ReactiveGroupOFormArrayBuilderT>,
                  item: item.$2.value,
                  formModel: formModel
                )),
              );
            })
            .map((e) => e.value)
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
          return emptyBuilder!(context);
        }

        return builder?.call((
              context: context,
              itemList: itemList,
              formModel: formModel,
            )) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveGroupOFormFormGroupArrayBuilder<
    ReactiveGroupOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveGroupOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveGroupOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveGroupOFormFormGroupArrayBuilderT>>
      Function(GroupOForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveGroupOFormFormGroupArrayBuilderT? item,
      GroupOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveGroupOFormFormGroupArrayBuilderT>[])
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
