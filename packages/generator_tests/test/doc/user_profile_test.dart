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
            import 'package:reactive_forms/src/validators/required_validator.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            @Rf(output: false)
            class UserProfile {
              final String id;
            
              final String firstName;
            
              final String lastName;
            
              final Address home;
            
              final Address? office;
            
              UserProfile({
                required this.id,
                @RfControl(
                  validators: [RequiredValidator()],
                )
                this.firstName = "",
                @RfControl(
                  validators: [RequiredValidator()],
                )
                this.lastName = "",
                required this.home,
                this.office,
              });
            }
            
            @RfGroup()
            class Address {
              final String? street;
            
              final String? city;
            
              final String? zip;
            
              Address({
                @RfControl<String>() this.street,
                @RfControl(
                  validators: [RequiredValidator()],
                )
                this.city,
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

part of 'user_profile.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveUserProfileFormConsumer extends StatelessWidget {
  const ReactiveUserProfileFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

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
  const UserProfileFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final UserProfileForm form;
}

class ReactiveUserProfileForm extends StatelessWidget {
  const ReactiveUserProfileForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final UserProfileForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static UserProfileForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
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
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveUserProfileFormExt on BuildContext {
  UserProfileForm? userProfileFormWatch() => ReactiveUserProfileForm.of(this);

  UserProfileForm? userProfileFormRead() =>
      ReactiveUserProfileForm.of(this, listen: false);
}

class UserProfileFormBuilder extends StatefulWidget {
  const UserProfileFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final UserProfile? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, UserProfileForm formModel, Widget? child) builder;

  final void Function(BuildContext context, UserProfileForm formModel)?
      initState;

  @override
  _UserProfileFormBuilderState createState() => _UserProfileFormBuilderState();
}

class _UserProfileFormBuilderState extends State<UserProfileFormBuilder> {
  late UserProfileForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        UserProfileForm(UserProfileForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logUserProfileForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant UserProfileFormBuilder oldWidget) {
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
    return ReactiveUserProfileForm(
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

final _logUserProfileForm = Logger.detached('UserProfileForm');

class UserProfileForm implements FormModel<UserProfile, UserProfile> {
  UserProfileForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String firstNameControlName = "firstName";

  static const String lastNameControlName = "lastName";

  static const String homeControlName = "home";

  static const String officeControlName = "office";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String firstNameControlPath() => pathBuilder(firstNameControlName);

  String lastNameControlPath() => pathBuilder(lastNameControlName);

  String homeControlPath() => pathBuilder(homeControlName);

  String officeControlPath() => pathBuilder(officeControlName);

  String get _idValue => idControl.value as String;

  String get _firstNameValue => firstNameControl.value ?? "";

  String get _lastNameValue => lastNameControl.value ?? "";

  Address get _homeValue => homeForm.model;

  Address? get _officeValue => officeForm.model;

  String get _idRawValue => idControl.value as String;

  String get _firstNameRawValue => firstNameControl.value ?? "";

  String get _lastNameRawValue => lastNameControl.value ?? "";

  Address get _homeRawValue => homeForm.rawModel;

  Address? get _officeRawValue => officeForm.rawModel;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsFirstName {
    try {
      form.control(firstNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsLastName {
    try {
      form.control(lastNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsHome {
    try {
      form.control(homeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsOffice {
    try {
      form.control(officeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get idErrors => idControl.errors;

  Map<String, Object> get firstNameErrors => firstNameControl.errors;

  Map<String, Object> get lastNameErrors => lastNameControl.errors;

  Map<String, Object> get homeErrors => homeControl.errors;

  Map<String, Object>? get officeErrors => officeControl.errors;

  void get idFocus => form.focus(idControlPath());

  void get firstNameFocus => form.focus(firstNameControlPath());

  void get lastNameFocus => form.focus(lastNameControlPath());

  void get homeFocus => form.focus(homeControlPath());

  void get officeFocus => form.focus(officeControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void officeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
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

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void homeValueUpdate(
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    homeControl.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void officeValueUpdate(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    officeControl.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void homeValuePatch(
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    homeControl.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void officeValuePatch(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    officeControl.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void firstNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      firstNameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void lastNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      lastNameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void homeValueReset(
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      homeControl.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void officeValueReset(
    Address? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      officeControl.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String> get firstNameControl =>
      form.control(firstNameControlPath()) as FormControl<String>;

  FormControl<String> get lastNameControl =>
      form.control(lastNameControlPath()) as FormControl<String>;

  FormGroup get homeControl => form.control(homeControlPath()) as FormGroup;

  FormGroup get officeControl => form.control(officeControlPath()) as FormGroup;

  AddressForm get homeForm => AddressForm(form, pathBuilder('home'));

  AddressForm get officeForm => AddressForm(form, pathBuilder('office'));

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void firstNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      firstNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      firstNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void lastNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      lastNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      lastNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void homeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      homeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      homeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void officeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      officeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      officeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  UserProfile get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logUserProfileForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return UserProfile(
        id: _idValue,
        firstName: _firstNameValue,
        lastName: _lastNameValue,
        home: _homeValue,
        office: _officeValue);
  }

  @override
  UserProfile get rawModel {
    return UserProfile(
        id: _idRawValue,
        firstName: _firstNameRawValue,
        lastName: _lastNameRawValue,
        home: _homeRawValue,
        office: _officeRawValue);
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

      homeForm.toggleDisabled();
      officeForm.toggleDisabled();
      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      homeForm.toggleDisabled();
      officeForm.toggleDisabled();
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
  bool equalsTo(UserProfile? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      UserProfileForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(UserProfile model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logUserProfileForm.info('Errors');
      _logUserProfileForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    UserProfile? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(UserProfileForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    UserProfile? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(UserProfile? userProfile) => FormGroup({
        idControlName: FormControl<String>(
            value: userProfile?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        firstNameControlName: FormControl<String>(
            value: userProfile?.firstName,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastNameControlName: FormControl<String>(
            value: userProfile?.lastName,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        homeControlName: AddressForm.formElements(userProfile?.home),
        officeControlName: AddressForm.formElements(userProfile?.office)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

final _logAddressForm = Logger.detached('AddressForm');

class AddressForm implements FormModel<Address, Address> {
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
  Address get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logAddressForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return Address(street: _streetValue, city: _cityValue, zip: _zipValue);
  }

  @override
  Address get rawModel {
    return Address(
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
  bool equalsTo(Address? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      AddressForm.formElements(other).rawValue,
    );
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
      _logAddressForm.info('Errors');
      _logAddressForm.info('┗━━ ${form.errors}');
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
            validators: [RequiredValidator()],
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

class ReactiveUserProfileFormArrayBuilder<ReactiveUserProfileFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveUserProfileFormArrayBuilder({
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

  final FormArray<ReactiveUserProfileFormArrayBuilderT>? formControl;

  final FormArray<ReactiveUserProfileFormArrayBuilderT>? Function(
      UserProfileForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UserProfileForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveUserProfileFormArrayBuilderT> control,
      ReactiveUserProfileFormArrayBuilderT? item,
      UserProfileForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
      FormControl<ReactiveUserProfileFormArrayBuilderT> control)? controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserProfileForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveUserProfileFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveUserProfileFormArrayBuilderT>,
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
                      as FormControl<ReactiveUserProfileFormArrayBuilderT>,
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

class ReactiveUserProfileFormArrayBuilder2<ReactiveUserProfileFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveUserProfileFormArrayBuilder2({
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

  final FormArray<ReactiveUserProfileFormArrayBuilderT>? formControl;

  final FormArray<ReactiveUserProfileFormArrayBuilderT>? Function(
      UserProfileForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        UserProfileForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveUserProfileFormArrayBuilderT> control,
        ReactiveUserProfileFormArrayBuilderT? item,
        UserProfileForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
      FormControl<ReactiveUserProfileFormArrayBuilderT> control)? controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUserProfileForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveUserProfileFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveUserProfileFormArrayBuilderT>,
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
                      as FormControl<ReactiveUserProfileFormArrayBuilderT>,
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

class ReactiveUserProfileFormFormGroupArrayBuilder<
    ReactiveUserProfileFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveUserProfileFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveUserProfileFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveUserProfileFormFormGroupArrayBuilderT>>
      Function(UserProfileForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      UserProfileForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveUserProfileFormFormGroupArrayBuilderT? item,
      UserProfileForm formModel) itemBuilder;

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
        final itemList =
            (value.value() ?? <ReactiveUserProfileFormFormGroupArrayBuilderT>[])
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
