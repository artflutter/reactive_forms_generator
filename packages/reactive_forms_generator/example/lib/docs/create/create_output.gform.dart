// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveMSICreateFormConsumer extends StatelessWidget {
  const ReactiveMSICreateFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, MSICreateForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMSICreateForm.of(context);

    if (formModel is! MSICreateForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class MSICreateFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const MSICreateFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final MSICreateForm form;
}

class ReactiveMSICreateForm extends StatelessWidget {
  const ReactiveMSICreateForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final MSICreateForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static MSICreateForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<MSICreateFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        MSICreateFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as MSICreateFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return MSICreateFormInheritedStreamer(
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

extension ReactiveReactiveMSICreateFormExt on BuildContext {
  MSICreateForm? mSICreateFormWatch() => ReactiveMSICreateForm.of(this);

  MSICreateForm? mSICreateFormRead() =>
      ReactiveMSICreateForm.of(this, listen: false);
}

class MSICreateFormBuilder extends StatefulWidget {
  const MSICreateFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final MSICreate? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, MSICreateForm formModel, Widget? child) builder;

  final void Function(BuildContext context, MSICreateForm formModel)? initState;

  @override
  _MSICreateFormBuilderState createState() => _MSICreateFormBuilderState();
}

class _MSICreateFormBuilderState extends State<MSICreateFormBuilder> {
  late MSICreateForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = MSICreateForm(MSICreateForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logMSICreateForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant MSICreateFormBuilder oldWidget) {
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
    return ReactiveMSICreateForm(
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

final _logMSICreateForm = Logger.detached('MSICreateForm');

class MSICreateForm implements FormModel<MSICreate, MSICreateOutput> {
  MSICreateForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String businessNumberControlName = "businessNumber";

  static const String fileIdsControlName = "fileIds";

  static const String nameControlName = "name";

  static const String companyAddressControlName = "companyAddress";

  static const String emailControlName = "email";

  static const String primaryContactControlName = "primaryContact";

  static const String sameMailingAddressAsCompanyControlName =
      "sameMailingAddressAsCompany";

  static const String mailingAddressControlName = "mailingAddress";

  static const String adminsControlName = "admins";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String businessNumberControlPath() => pathBuilder(businessNumberControlName);

  String fileIdsControlPath() => pathBuilder(fileIdsControlName);

  String nameControlPath() => pathBuilder(nameControlName);

  String emailControlPath() => pathBuilder(emailControlName);

  String sameMailingAddressAsCompanyControlPath() =>
      pathBuilder(sameMailingAddressAsCompanyControlName);

  String companyAddressControlPath() => pathBuilder(companyAddressControlName);

  String primaryContactControlPath() => pathBuilder(primaryContactControlName);

  String mailingAddressControlPath() => pathBuilder(mailingAddressControlName);

  String adminsControlPath() => pathBuilder(adminsControlName);

  String? get _idValue => idControl.value;

  String? get _businessNumberValue => businessNumberControl.value;

  List<String>? get _fileIdsValue => fileIdsControl.value;

  String get _nameValue => nameControl.value as String;

  String get _emailValue => emailControl.value as String;

  bool get _sameMailingAddressAsCompanyValue =>
      sameMailingAddressAsCompanyControl.value ?? false;

  AddressOutput get _companyAddressValue => companyAddressForm.model;

  PrimaryContactOutput get _primaryContactValue => primaryContactForm.model;

  AddressOutput get _mailingAddressValue => mailingAddressForm.model;

  List<AdminContactInformationOutput> get _adminsValue =>
      adminsAdminContactInformationForm.map((e) => e.model).toList();

  String? get _idRawValue => idControl.value;

  String? get _businessNumberRawValue => businessNumberControl.value;

  List<String>? get _fileIdsRawValue => fileIdsControl.value;

  String? get _nameRawValue => nameControl.value;

  String? get _emailRawValue => emailControl.value;

  bool get _sameMailingAddressAsCompanyRawValue =>
      sameMailingAddressAsCompanyControl.value ?? false;

  Address get _companyAddressRawValue => companyAddressForm.rawModel;

  PrimaryContact get _primaryContactRawValue => primaryContactForm.rawModel;

  Address get _mailingAddressRawValue => mailingAddressForm.rawModel;

  List<AdminContactInformation> get _adminsRawValue =>
      adminsAdminContactInformationForm.map((e) => e.rawModel).toList();

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
  bool get containsBusinessNumber {
    try {
      form.control(businessNumberControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsFileIds {
    try {
      form.control(fileIdsControlPath());
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
  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsSameMailingAddressAsCompany {
    try {
      form.control(sameMailingAddressAsCompanyControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsCompanyAddress {
    try {
      form.control(companyAddressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsPrimaryContact {
    try {
      form.control(primaryContactControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsMailingAddress {
    try {
      form.control(mailingAddressControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsAdmins {
    try {
      form.control(adminsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get idErrors => idControl.errors;

  Map<String, Object>? get businessNumberErrors => businessNumberControl.errors;

  Map<String, Object>? get fileIdsErrors => fileIdsControl.errors;

  Map<String, Object>? get nameErrors => nameControl.errors;

  Map<String, Object>? get emailErrors => emailControl.errors;

  Map<String, Object> get sameMailingAddressAsCompanyErrors =>
      sameMailingAddressAsCompanyControl.errors;

  Map<String, Object> get companyAddressErrors => companyAddressControl.errors;

  Map<String, Object> get primaryContactErrors => primaryContactControl.errors;

  Map<String, Object> get mailingAddressErrors => mailingAddressControl.errors;

  Map<String, Object> get adminsErrors => adminsControl.errors;

  void get idFocus => form.focus(idControlPath());

  void get businessNumberFocus => form.focus(businessNumberControlPath());

  void get fileIdsFocus => form.focus(fileIdsControlPath());

  void get nameFocus => form.focus(nameControlPath());

  void get emailFocus => form.focus(emailControlPath());

  void get sameMailingAddressAsCompanyFocus =>
      form.focus(sameMailingAddressAsCompanyControlPath());

  void get companyAddressFocus => form.focus(companyAddressControlPath());

  void get primaryContactFocus => form.focus(primaryContactControlPath());

  void get mailingAddressFocus => form.focus(mailingAddressControlPath());

  void get adminsFocus => form.focus(adminsControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void idRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          idControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            idControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void businessNumberRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsBusinessNumber) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          businessNumberControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            businessNumberControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void fileIdsRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFileIds) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          fileIdsControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            fileIdsControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

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

  void idValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void businessNumberValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    businessNumberControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fileIdsValueUpdate(
    List<String>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fileIdsControl.updateValue(value,
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

  void emailValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void sameMailingAddressAsCompanyValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sameMailingAddressAsCompanyControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void companyAddressValueUpdate(
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyAddressControl.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void primaryContactValueUpdate(
    PrimaryContact value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    primaryContactControl.updateValue(
        PrimaryContactForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void mailingAddressValueUpdate(
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    mailingAddressControl.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void adminsValueUpdate(
    List<AdminContactInformation> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      adminsClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <AdminContactInformation>[];
    final toAdd = <AdminContactInformation>[];

    localValue.asMap().forEach((k, v) {
      final values = adminsControl.controls.map((e) => e.value).toList();

      if (adminsAdminContactInformationForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      adminsControl.updateValue(
          toUpdate
              .map((e) => AdminContactInformationForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        adminsControl.add(AdminContactInformationForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void adminsInsert(
    int i,
    AdminContactInformation value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = adminsControl.controls.map((e) => e.value).toList();
    if (values.length < i) {
      addAdminsItem(value);
      return;
    }

    adminsControl.insert(
      i,
      AdminContactInformationForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void adminsClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    adminsAdminContactInformationForm.clear();
    adminsControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void businessNumberValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    businessNumberControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fileIdsValuePatch(
    List<String>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fileIdsControl.patchValue(value,
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

  void sameMailingAddressAsCompanyValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    sameMailingAddressAsCompanyControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void companyAddressValuePatch(
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyAddressControl.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void primaryContactValuePatch(
    PrimaryContact value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    primaryContactControl.updateValue(
        PrimaryContactForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void mailingAddressValuePatch(
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    mailingAddressControl.updateValue(AddressForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void adminsValuePatch(
    List<AdminContactInformation> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = adminsAdminContactInformationForm.asMap().keys;

    final toPatch = <AdminContactInformation>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    adminsControl.patchValue(
        toPatch
            .map((e) => AdminContactInformationForm.formElements(e).rawValue)
            .toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void idValueReset(
    String? value, {
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

  void businessNumberValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      businessNumberControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void fileIdsValueReset(
    List<String>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fileIdsControl.reset(
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

  void sameMailingAddressAsCompanyValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      sameMailingAddressAsCompanyControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void companyAddressValueReset(
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      companyAddressControl.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void primaryContactValueReset(
    PrimaryContact value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      primaryContactControl.reset(
          value: PrimaryContactForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void mailingAddressValueReset(
    Address value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      mailingAddressControl.reset(
          value: AddressForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void adminsValueReset(
    List<AdminContactInformation> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      adminsControl.reset(
          value: value
              .map((e) => AdminContactInformationForm.formElements(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String> get businessNumberControl =>
      form.control(businessNumberControlPath()) as FormControl<String>;

  FormControl<List<String>> get fileIdsControl =>
      form.control(fileIdsControlPath()) as FormControl<List<String>>;

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;

  FormControl<bool> get sameMailingAddressAsCompanyControl =>
      form.control(sameMailingAddressAsCompanyControlPath())
          as FormControl<bool>;

  FormGroup get companyAddressControl =>
      form.control(companyAddressControlPath()) as FormGroup;

  FormGroup get primaryContactControl =>
      form.control(primaryContactControlPath()) as FormGroup;

  FormGroup get mailingAddressControl =>
      form.control(mailingAddressControlPath()) as FormGroup;

  FormArray<Map<String, Object?>> get adminsControl =>
      form.control(adminsControlPath()) as FormArray<Map<String, Object?>>;

  AddressForm get companyAddressForm =>
      AddressForm(form, pathBuilder('companyAddress'));

  PrimaryContactForm get primaryContactForm =>
      PrimaryContactForm(form, pathBuilder('primaryContact'));

  AddressForm get mailingAddressForm =>
      AddressForm(form, pathBuilder('mailingAddress'));

  List<AdminContactInformationForm> get adminsAdminContactInformationForm {
    final values = adminsControl.controls.map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) => MapEntry(
            k, AdminContactInformationForm(form, pathBuilder("admins.$k"))))
        .values
        .toList();
  }

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

  void businessNumberSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      businessNumberControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      businessNumberControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fileIdsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fileIdsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fileIdsControl.markAsEnabled(
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

  void sameMailingAddressAsCompanySetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      sameMailingAddressAsCompanyControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      sameMailingAddressAsCompanyControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void companyAddressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      companyAddressControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      companyAddressControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void primaryContactSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      primaryContactControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      primaryContactControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void mailingAddressSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      mailingAddressControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      mailingAddressControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void adminsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      adminsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      adminsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>,
          List<AdminContactInformationForm>>
      get adminsExtendedControl => ExtendedControl<List<Map<String, Object?>?>,
              List<AdminContactInformationForm>>(
          form.control(adminsControlPath()) as FormArray<Map<String, Object?>>,
          () => adminsAdminContactInformationForm);

  void addAdminsItem(AdminContactInformation value) {
    adminsControl.add(AdminContactInformationForm.formElements(value));
  }

  void removeAdminsItemAtIndex(int i) {
    if ((adminsControl.value ?? []).length > i) {
      adminsControl.removeAt(i);
    }
  }

  void addAdminsItemList(List<AdminContactInformation> value) {
    value.forEach((e) => addAdminsItem(e));
  }

  @override
  @protected
  MSICreateOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logMSICreateForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return MSICreateOutput(
        id: _idValue,
        businessNumber: _businessNumberValue,
        fileIds: _fileIdsValue,
        name: _nameValue,
        companyAddress: _companyAddressValue,
        email: _emailValue,
        primaryContact: _primaryContactValue,
        sameMailingAddressAsCompany: _sameMailingAddressAsCompanyValue,
        mailingAddress: _mailingAddressValue,
        admins: _adminsValue);
  }

  @override
  MSICreate get rawModel {
    return MSICreate(
        id: _idRawValue,
        businessNumber: _businessNumberRawValue,
        fileIds: _fileIdsRawValue,
        name: _nameRawValue,
        companyAddress: _companyAddressRawValue,
        email: _emailRawValue,
        primaryContact: _primaryContactRawValue,
        sameMailingAddressAsCompany: _sameMailingAddressAsCompanyRawValue,
        mailingAddress: _mailingAddressRawValue,
        admins: _adminsRawValue);
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

      adminsAdminContactInformationForm.forEach((e) => e.toggleDisabled());
      companyAddressForm.toggleDisabled();
      primaryContactForm.toggleDisabled();
      mailingAddressForm.toggleDisabled();
      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      adminsAdminContactInformationForm.forEach((e) => e.toggleDisabled());
      companyAddressForm.toggleDisabled();
      primaryContactForm.toggleDisabled();
      mailingAddressForm.toggleDisabled();
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
  bool equalsTo(MSICreate? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      MSICreateForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(MSICreateOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logMSICreateForm.info('Errors');
      _logMSICreateForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    MSICreate? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(MSICreateForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    MSICreate? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(MSICreate? mSICreate) => FormGroup({
        idControlName: FormControl<String>(
            value: mSICreate?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        businessNumberControlName: FormControl<String>(
            value: mSICreate?.businessNumber,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        fileIdsControlName: FormControl<List<String>>(
            value: mSICreate?.fileIds,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: mSICreate?.name,
            validators: [RequiredValidator(), MaxLengthValidator(120)],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: mSICreate?.email,
            validators: [RequiredValidator(), EmailValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        sameMailingAddressAsCompanyControlName: FormControl<bool>(
            value: mSICreate?.sameMailingAddressAsCompany,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        adminsControlName: FormArray(
            (mSICreate?.admins ?? [])
                .map((e) => AdminContactInformationForm.formElements(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        companyAddressControlName:
            AddressForm.formElements(mSICreate?.companyAddress),
        primaryContactControlName:
            PrimaryContactForm.formElements(mSICreate?.primaryContact),
        mailingAddressControlName:
            AddressForm.formElements(mSICreate?.mailingAddress)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

final _logAddressForm = Logger.detached('AddressForm');

class AddressForm implements FormModel<Address, AddressOutput> {
  AddressForm(
    this.form,
    this.path,
  );

  static const String streetControlName = "street";

  static const String cityControlName = "city";

  static const String stateOrProvinceControlName = "stateOrProvince";

  static const String zipCodeControlName = "zipCode";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String streetControlPath() => pathBuilder(streetControlName);

  String cityControlPath() => pathBuilder(cityControlName);

  String stateOrProvinceControlPath() =>
      pathBuilder(stateOrProvinceControlName);

  String zipCodeControlPath() => pathBuilder(zipCodeControlName);

  String get _streetValue => streetControl.value as String;

  String get _cityValue => cityControl.value as String;

  String get _stateOrProvinceValue => stateOrProvinceControl.value as String;

  String get _zipCodeValue => zipCodeControl.value as String;

  String? get _streetRawValue => streetControl.value;

  String? get _cityRawValue => cityControl.value;

  String? get _stateOrProvinceRawValue => stateOrProvinceControl.value;

  String? get _zipCodeRawValue => zipCodeControl.value;

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
  bool get containsStateOrProvince {
    try {
      form.control(stateOrProvinceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsZipCode {
    try {
      form.control(zipCodeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get streetErrors => streetControl.errors;

  Map<String, Object>? get cityErrors => cityControl.errors;

  Map<String, Object>? get stateOrProvinceErrors =>
      stateOrProvinceControl.errors;

  Map<String, Object>? get zipCodeErrors => zipCodeControl.errors;

  void get streetFocus => form.focus(streetControlPath());

  void get cityFocus => form.focus(cityControlPath());

  void get stateOrProvinceFocus => form.focus(stateOrProvinceControlPath());

  void get zipCodeFocus => form.focus(zipCodeControlPath());

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
  void stateOrProvinceRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsStateOrProvince) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          stateOrProvinceControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            stateOrProvinceControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void zipCodeRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsZipCode) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          zipCodeControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            zipCodeControlName,
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

  void stateOrProvinceValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    stateOrProvinceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void zipCodeValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    zipCodeControl.updateValue(value,
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

  void stateOrProvinceValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    stateOrProvinceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void zipCodeValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    zipCodeControl.patchValue(value,
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

  void stateOrProvinceValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      stateOrProvinceControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void zipCodeValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      zipCodeControl.reset(
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

  FormControl<String> get stateOrProvinceControl =>
      form.control(stateOrProvinceControlPath()) as FormControl<String>;

  FormControl<String> get zipCodeControl =>
      form.control(zipCodeControlPath()) as FormControl<String>;

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

  void stateOrProvinceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      stateOrProvinceControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      stateOrProvinceControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void zipCodeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      zipCodeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      zipCodeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  AddressOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logAddressForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return AddressOutput(
        street: _streetValue,
        city: _cityValue,
        stateOrProvince: _stateOrProvinceValue,
        zipCode: _zipCodeValue);
  }

  @override
  Address get rawModel {
    return Address(
        street: _streetRawValue,
        city: _cityRawValue,
        stateOrProvince: _stateOrProvinceRawValue,
        zipCode: _zipCodeRawValue);
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
    required void Function(AddressOutput model) onValid,
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
            validators: [RequiredValidator(), MaxLengthValidator(120)],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        cityControlName: FormControl<String>(
            value: address?.city,
            validators: [RequiredValidator(), MaxLengthValidator(120)],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        stateOrProvinceControlName: FormControl<String>(
            value: address?.stateOrProvince,
            validators: [RequiredValidator(), MaxLengthValidator(120)],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        zipCodeControlName: FormControl<String>(
            value: address?.zipCode,
            validators: [RequiredValidator()],
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

final _logPrimaryContactForm = Logger.detached('PrimaryContactForm');

class PrimaryContactForm
    implements FormModel<PrimaryContact, PrimaryContactOutput> {
  PrimaryContactForm(
    this.form,
    this.path,
  );

  static const String fullNameControlName = "fullName";

  static const String jobTitleControlName = "jobTitle";

  static const String emailControlName = "email";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String fullNameControlPath() => pathBuilder(fullNameControlName);

  String jobTitleControlPath() => pathBuilder(jobTitleControlName);

  String emailControlPath() => pathBuilder(emailControlName);

  String get _fullNameValue => fullNameControl.value as String;

  String? get _jobTitleValue => jobTitleControl.value;

  String get _emailValue => emailControl.value as String;

  String? get _fullNameRawValue => fullNameControl.value;

  String? get _jobTitleRawValue => jobTitleControl.value;

  String? get _emailRawValue => emailControl.value;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsFullName {
    try {
      form.control(fullNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsJobTitle {
    try {
      form.control(jobTitleControlPath());
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

  Map<String, Object>? get fullNameErrors => fullNameControl.errors;

  Map<String, Object>? get jobTitleErrors => jobTitleControl.errors;

  Map<String, Object>? get emailErrors => emailControl.errors;

  void get fullNameFocus => form.focus(fullNameControlPath());

  void get jobTitleFocus => form.focus(jobTitleControlPath());

  void get emailFocus => form.focus(emailControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void fullNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFullName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          fullNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            fullNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void jobTitleRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsJobTitle) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          jobTitleControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            jobTitleControlName,
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

  void fullNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fullNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void jobTitleValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    jobTitleControl.updateValue(value,
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

  void fullNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fullNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void jobTitleValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    jobTitleControl.patchValue(value,
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

  void fullNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fullNameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void jobTitleValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      jobTitleControl.reset(
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

  FormControl<String> get fullNameControl =>
      form.control(fullNameControlPath()) as FormControl<String>;

  FormControl<String> get jobTitleControl =>
      form.control(jobTitleControlPath()) as FormControl<String>;

  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;

  void fullNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fullNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fullNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void jobTitleSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      jobTitleControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      jobTitleControl.markAsEnabled(
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
  PrimaryContactOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logPrimaryContactForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return PrimaryContactOutput(
        fullName: _fullNameValue, jobTitle: _jobTitleValue, email: _emailValue);
  }

  @override
  PrimaryContact get rawModel {
    return PrimaryContact(
        fullName: _fullNameRawValue,
        jobTitle: _jobTitleRawValue,
        email: _emailRawValue);
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
  bool equalsTo(PrimaryContact? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      PrimaryContactForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(PrimaryContactOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logPrimaryContactForm.info('Errors');
      _logPrimaryContactForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    PrimaryContact? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(PrimaryContactForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    PrimaryContact? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(PrimaryContact? primaryContact) => FormGroup({
        fullNameControlName: FormControl<String>(
            value: primaryContact?.fullName,
            validators: [RequiredValidator(), MaxLengthValidator(120)],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        jobTitleControlName: FormControl<String>(
            value: primaryContact?.jobTitle,
            validators: [MaxLengthValidator(120)],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: primaryContact?.email,
            validators: [RequiredValidator(), EmailValidator()],
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

final _logAdminContactInformationForm =
    Logger.detached('AdminContactInformationForm');

class AdminContactInformationForm
    implements
        FormModel<AdminContactInformation, AdminContactInformationOutput> {
  AdminContactInformationForm(
    this.form,
    this.path,
  );

  static const String firstNameControlName = "firstName";

  static const String lastNameControlName = "lastName";

  static const String emailControlName = "email";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String firstNameControlPath() => pathBuilder(firstNameControlName);

  String lastNameControlPath() => pathBuilder(lastNameControlName);

  String emailControlPath() => pathBuilder(emailControlName);

  String get _firstNameValue => firstNameControl.value as String;

  String get _lastNameValue => lastNameControl.value as String;

  String get _emailValue => emailControl.value as String;

  String? get _firstNameRawValue => firstNameControl.value;

  String? get _lastNameRawValue => lastNameControl.value;

  String? get _emailRawValue => emailControl.value;

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
  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get firstNameErrors => firstNameControl.errors;

  Map<String, Object>? get lastNameErrors => lastNameControl.errors;

  Map<String, Object>? get emailErrors => emailControl.errors;

  void get firstNameFocus => form.focus(firstNameControlPath());

  void get lastNameFocus => form.focus(lastNameControlPath());

  void get emailFocus => form.focus(emailControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void firstNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsFirstName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          firstNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            firstNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void lastNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsLastName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          lastNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            lastNameControlName,
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

  void firstNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl.updateValue(value,
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

  void firstNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    firstNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void lastNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    lastNameControl.patchValue(value,
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

  void firstNameValueReset(
    String? value, {
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
    String? value, {
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

  FormControl<String> get firstNameControl =>
      form.control(firstNameControlPath()) as FormControl<String>;

  FormControl<String> get lastNameControl =>
      form.control(lastNameControlPath()) as FormControl<String>;

  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;

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
  AdminContactInformationOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logAdminContactInformationForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return AdminContactInformationOutput(
        firstName: _firstNameValue,
        lastName: _lastNameValue,
        email: _emailValue);
  }

  @override
  AdminContactInformation get rawModel {
    return AdminContactInformation(
        firstName: _firstNameRawValue,
        lastName: _lastNameRawValue,
        email: _emailRawValue);
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
  bool equalsTo(AdminContactInformation? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      AdminContactInformationForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(AdminContactInformationOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logAdminContactInformationForm.info('Errors');
      _logAdminContactInformationForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    AdminContactInformation? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AdminContactInformationForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    AdminContactInformation? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(
          AdminContactInformation? adminContactInformation) =>
      FormGroup({
        firstNameControlName: FormControl<String>(
            value: adminContactInformation?.firstName,
            validators: [RequiredValidator(), MaxLengthValidator(120)],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        lastNameControlName: FormControl<String>(
            value: adminContactInformation?.lastName,
            validators: [RequiredValidator(), MaxLengthValidator(120)],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        emailControlName: FormControl<String>(
            value: adminContactInformation?.email,
            validators: [RequiredValidator(), EmailValidator()],
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
@freezed
class MSICreateOutput with _$MSICreateOutput {
  const factory MSICreateOutput(
      {String? id,
      String? businessNumber,
      List<String>? fileIds,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required String name,
      required AddressOutput companyAddress,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required String email,
      required PrimaryContactOutput primaryContact,
      @RfControl<bool>() @Default(false) bool sameMailingAddressAsCompany,
      required AddressOutput mailingAddress,
      @RfArray<AdminContactInformationOutput>()
      required List<AdminContactInformationOutput> admins}) = _MSICreateOutput;
}

@RfGroup()
@freezed
class AddressOutput with _$AddressOutput {
  const factory AddressOutput(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required String street,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required String city,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required String stateOrProvince,
      @RfControl(validators: [RequiredValidator()])
      required String zipCode}) = _AddressOutput;
}

@RfGroup<PrimaryContactOutput>()
@freezed
class PrimaryContactOutput with _$PrimaryContactOutput {
  const factory PrimaryContactOutput(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required String fullName,
      @RfControl(validators: [MaxLengthValidator(120)]) String? jobTitle,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required String email}) = _PrimaryContactOutput;
}

@RfGroup<AdminContactInformationOutput>()
@freezed
class AdminContactInformationOutput with _$AdminContactInformationOutput {
  const factory AdminContactInformationOutput(
      {@RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required String firstName,
      @RfControl(validators: [RequiredValidator(), MaxLengthValidator(120)])
      required String lastName,
      @RfControl(validators: [RequiredValidator(), EmailValidator()])
      required String email}) = _AdminContactInformationOutput;
}

class ReactiveMSICreateFormArrayBuilder<ReactiveMSICreateFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveMSICreateFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveMSICreateFormArrayBuilderT>? formControl;

  final FormArray<ReactiveMSICreateFormArrayBuilderT>? Function(
      MSICreateForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, MSICreateForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveMSICreateFormArrayBuilderT> control,
      ReactiveMSICreateFormArrayBuilderT? item,
      MSICreateForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMSICreateForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveMSICreateFormArrayBuilderT>(
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
                      as FormControl<ReactiveMSICreateFormArrayBuilderT>,
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

class ReactiveMSICreateFormFormGroupArrayBuilder<
    ReactiveMSICreateFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveMSICreateFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveMSICreateFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveMSICreateFormFormGroupArrayBuilderT>>
      Function(MSICreateForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, MSICreateForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveMSICreateFormFormGroupArrayBuilderT? item,
      MSICreateForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMSICreateForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveMSICreateFormFormGroupArrayBuilderT>[])
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
