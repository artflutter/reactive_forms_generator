// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

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
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final UserProfileForm form;

  final WillPopCallback? onWillPop;

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
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class UserProfileFormBuilder extends StatefulWidget {
  const UserProfileFormBuilder({
    Key? key,
    required this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final UserProfile model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, UserProfileForm formModel, Widget? child) builder;

  final void Function(BuildContext context, UserProfileForm formModel)?
      initState;

  @override
  _UserProfileFormBuilderState createState() => _UserProfileFormBuilderState();
}

class _UserProfileFormBuilderState extends State<UserProfileFormBuilder> {
  late UserProfileForm _formModel;

  @override
  void initState() {
    _formModel = UserProfileForm(
        widget.model, UserProfileForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant UserProfileFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = UserProfileForm(
          widget.model, UserProfileForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }
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
    return ReactiveUserProfileForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class UserProfileForm implements FormModel<UserProfile> {
  UserProfileForm(
    this.userProfile,
    this.form,
    this.path,
  ) {
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
  String get _firstNameValue => firstNameControl.value ?? "";
  String get _lastNameValue => lastNameControl.value ?? "";
  Address get _homeValue => homeForm.model;
  Address? get _officeValue => officeForm.model;
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
    officeControl?.updateValue(AddressForm.formElements(value).rawValue,
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
    officeControl?.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void firstNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      firstNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void lastNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      lastNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
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
      officeControl?.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get firstNameControl =>
      form.control(firstNameControlPath()) as FormControl<String>;
  FormControl<String> get lastNameControl =>
      form.control(lastNameControlPath()) as FormControl<String>;
  FormGroup get homeControl => form.control(homeControlPath()) as FormGroup;
  FormGroup? get officeControl =>
      containsOffice ? form.control(officeControlPath()) as FormGroup? : null;
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
      officeControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      officeControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  UserProfile get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return UserProfile(
        id: userProfile.id,
        firstName: _firstNameValue,
        lastName: _lastNameValue,
        home: _homeValue,
        office: _officeValue);
  }

  UserProfileForm copyWithPath(String? path) {
    return UserProfileForm(userProfile, form, path);
  }

  @override
  void updateValue(
    UserProfile value, {
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
  static FormGroup formElements(UserProfile userProfile) => FormGroup({
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
        homeControlName: AddressForm.formElements(userProfile.home),
        officeControlName: AddressForm.formElements(userProfile.office)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class AddressForm implements FormModel<Address> {
  AddressForm(
    this.address,
    this.form,
    this.path,
  ) {}

  static String streetControlName = "street";

  static String cityControlName = "city";

  static String zipControlName = "zip";

  final Address? address;

  final FormGroup form;

  final String? path;

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

  Object? get streetErrors => streetControl?.errors;
  Object? get cityErrors => cityControl?.errors;
  Object? get zipErrors => zipControl?.errors;
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
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Address(street: _streetValue, city: _cityValue, zip: _zipValue);
  }

  AddressForm copyWithPath(String? path) {
    return AddressForm(address, form, path);
  }

  @override
  void updateValue(
    Address value, {
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
  const ReactiveUserProfileFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
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
  const ReactiveUserProfileFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
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
