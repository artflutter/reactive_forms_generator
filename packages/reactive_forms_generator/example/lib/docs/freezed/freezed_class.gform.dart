// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_class.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveFreezedClassFormConsumer extends StatelessWidget {
  const ReactiveFreezedClassFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
    BuildContext context,
    FreezedClassForm formModel,
    Widget? child,
  )
  builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFreezedClassForm.of(context);

    if (formModel is! FreezedClassForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class FreezedClassFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const FreezedClassFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(stream, child, key: key);

  final FreezedClassForm form;
}

class ReactiveFreezedClassForm extends StatelessWidget {
  const ReactiveFreezedClassForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvokedWithResult,
  }) : super(key: key);

  final Widget child;

  final FreezedClassForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
      onPopInvokedWithResult;

  static FreezedClassForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
            FreezedClassFormInheritedStreamer
          >()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<
          FreezedClassFormInheritedStreamer
        >();
    return element == null
        ? null
        : (element.widget as FreezedClassFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return FreezedClassFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvokedWithResult: onPopInvokedWithResult,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveFreezedClassFormExt on BuildContext {
  FreezedClassForm? freezedClassFormWatch() =>
      ReactiveFreezedClassForm.of(this);

  FreezedClassForm? freezedClassFormRead() =>
      ReactiveFreezedClassForm.of(this, listen: false);
}

class FreezedClassFormBuilder extends StatefulWidget {
  const FreezedClassFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvokedWithResult,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final FreezedClass? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
      onPopInvokedWithResult;

  final Widget Function(
    BuildContext context,
    FreezedClassForm formModel,
    Widget? child,
  )
  builder;

  final void Function(BuildContext context, FreezedClassForm formModel)?
  initState;

  @override
  _FreezedClassFormBuilderState createState() =>
      _FreezedClassFormBuilderState();
}

class _FreezedClassFormBuilderState extends State<FreezedClassFormBuilder> {
  late FreezedClassForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = FreezedClassForm(
      FreezedClassForm.formElements(widget.model),
      null,
      null,
    );

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logFreezedClassForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant FreezedClassFormBuilder oldWidget) {
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
    return ReactiveFreezedClassForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

final _logFreezedClassForm = Logger.detached('FreezedClassForm');

class FreezedClassForm implements FormModel<FreezedClass, FreezedClass> {
  FreezedClassForm(this.form, this.path, this._formModel)
    : initial = form.rawValue;

  static const String genderControlName = "gender";

  static const String idControlName = "id";

  static const String nameControlName = "name";

  static const String logoImageControlName = "logoImage";

  static const String yearControlName = "year";

  static const String selectedSpacesControlName = "selectedSpaces";

  final FormGroup form;

  final String? path;

  // ignore: unused_field
  final FormModel<dynamic, dynamic>? _formModel;

  final Map<String, bool> _disabled = {};

  @override
  final Map<String, Object?> initial;

  String genderControlPath() => pathBuilder(genderControlName);

  String idControlPath() => pathBuilder(idControlName);

  String nameControlPath() => pathBuilder(nameControlName);

  String logoImageControlPath() => pathBuilder(logoImageControlName);

  String yearControlPath() => pathBuilder(yearControlName);

  String selectedSpacesControlPath() => pathBuilder(selectedSpacesControlName);

  String? get _genderValue => containsGender ? genderControl.value : null;

  String? get _idValue => containsId ? idControl.value : null;

  String? get _nameValue => containsName ? nameControl.value : null;

  String? get _logoImageValue =>
      containsLogoImage ? logoImageControl.value : null;

  double? get _yearValue => containsYear ? yearControl.value : null;

  List<String> get _selectedSpacesValue => selectedSpacesControl.value ?? [];

  String? get _genderRawValue => containsGender ? genderControl.value : null;

  String? get _idRawValue => containsId ? idControl.value : null;

  String? get _nameRawValue => containsName ? nameControl.value : null;

  String? get _logoImageRawValue =>
      containsLogoImage ? logoImageControl.value : null;

  double? get _yearRawValue => containsYear ? yearControl.value : null;

  List<String> get _selectedSpacesRawValue => selectedSpacesControl.value ?? [];

  bool get containsGender {
    try {
      form.control(genderControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsId {
    try {
      form.control(idControlPath());
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

  bool get containsLogoImage {
    try {
      form.control(logoImageControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsYear {
    try {
      form.control(yearControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSelectedSpaces {
    try {
      form.control(selectedSpacesControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get genderErrors => genderControl.errors;

  Map<String, Object>? get idErrors => idControl.errors;

  Map<String, Object>? get nameErrors => nameControl.errors;

  Map<String, Object>? get logoImageErrors => logoImageControl.errors;

  Map<String, Object>? get yearErrors => yearControl.errors;

  Map<String, Object> get selectedSpacesErrors => selectedSpacesControl.errors;

  void get genderFocus => form.focus(genderControlPath());

  void get idFocus => form.focus(idControlPath());

  void get nameFocus => form.focus(nameControlPath());

  void get logoImageFocus => form.focus(logoImageControlPath());

  void get yearFocus => form.focus(yearControlPath());

  void get selectedSpacesFocus => form.focus(selectedSpacesControlPath());

  void genderRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsGender) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          genderControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            genderControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void idRemove({bool updateParent = true, bool emitEvent = true}) {
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

  void logoImageRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsLogoImage) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          logoImageControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            logoImageControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void yearRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsYear) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          yearControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            yearControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void genderValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void idValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void logoImageValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    logoImageControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void yearValueUpdate(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    yearControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void selectedSpacesValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    selectedSpacesControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void genderValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    genderControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void idValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void logoImageValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    logoImageControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void yearValuePatch(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    yearControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void selectedSpacesValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    selectedSpacesControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void genderValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => genderControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void idValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => idControl.reset(
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
  }) => nameControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void logoImageValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => logoImageControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void yearValueReset(
    double? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => yearControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void selectedSpacesValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => selectedSpacesControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  FormControl<String> get genderControl =>
      form.control(genderControlPath()) as FormControl<String>;

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  FormControl<String> get logoImageControl =>
      form.control(logoImageControlPath()) as FormControl<String>;

  FormControl<double> get yearControl =>
      form.control(yearControlPath()) as FormControl<double>;

  FormControl<List<String>> get selectedSpacesControl =>
      form.control(selectedSpacesControlPath()) as FormControl<List<String>>;

  void genderSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      genderControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      genderControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
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
      idControl.markAsEnabled(updateParent: updateParent, emitEvent: emitEvent);
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

  void logoImageSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      logoImageControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      logoImageControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void yearSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      yearControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      yearControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void selectedSpacesSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      selectedSpacesControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      selectedSpacesControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  FreezedClass get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logFreezedClassForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return FreezedClass(
      _genderValue,
      id: _idValue,
      name: _nameValue,
      logoImage: _logoImageValue,
      year: _yearValue,
      selectedSpaces: _selectedSpacesValue,
    );
  }

  @override
  FreezedClass get rawModel {
    return FreezedClass(
      _genderRawValue,
      id: _idRawValue,
      name: _nameRawValue,
      logoImage: _logoImageRawValue,
      year: _yearRawValue,
      selectedSpaces: _selectedSpacesRawValue,
    );
  }

  @override
  void toggleDisabled({bool updateParent = true, bool emitEvent = true}) {
    if (_disabled.isEmpty) {
      currentForm.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      currentForm.controls.forEach((key, control) {
        if (_disabled[key] == false) {
          currentForm.controls[key]?.markAsEnabled(
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }

        _disabled.remove(key);
      });
    }
  }

  @override
  bool equalsTo(FreezedClass? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm.rawValue,
      FreezedClassForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(FreezedClass model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logFreezedClassForm.info('Errors');
      _logFreezedClassForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  @override
  bool get hasChanged {
    return !const DeepCollectionEquality().equals(
      currentForm.rawValue,
      initial,
    );
  }

  @override
  FormGroup get currentForm {
    return path == null ? form : form.control(path!) as FormGroup;
  }

  @override
  void updateValue(
    FreezedClass? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) => currentForm.updateValue(
    FreezedClassForm.formElements(value).rawValue,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  @override
  void upsertValue(
    FreezedClass? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final formElements = FreezedClassForm.formElements(value);

    currentForm.addAll(formElements.controls);
  }

  @override
  void reset({
    FreezedClass? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) => currentForm.reset(
    value: value != null ? formElements(value).rawValue : null,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  @override
  void updateInitial(Map<String, Object?>? value, String? path) {
    if (_formModel != null) {
      _formModel?.updateInitial(currentForm.rawValue, path);
      return;
    }

    if (value == null) return;

    if (path == null || path.isEmpty) {
      initial.addAll(value);
      return;
    }

    final keys = path.split('.');
    Object? current = initial;
    for (var i = 0; i < keys.length - 1; i++) {
      final key = keys[i];

      if (current is List) {
        final index = int.tryParse(key);
        if (index != null && index >= 0 && index < current.length) {
          current = current[index];
          continue;
        }
      }

      if (current is Map) {
        if (!current.containsKey(key)) {
          current[key] = <String, Object?>{};
        }
        current = current[key];
        continue;
      }

      return;
    }

    final key = keys.last;
    if (current is List) {
      final index = int.tryParse(key);
      if (index != null && index >= 0 && index < current.length) {
        current[index] = value;
      }
    } else if (current is Map) {
      current[key] = value;
    }
  }

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(FreezedClass? freezedClass) => FormGroup(
    {
      genderControlName: FormControl<String>(
        value: freezedClass?.gender,
        validators: [],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
      idControlName: FormControl<String>(
        value: freezedClass?.id,
        validators: [RequiredValidator()],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
      nameControlName: FormControl<String>(
        value: freezedClass?.name,
        validators: [],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
      logoImageControlName: FormControl<String>(
        value: freezedClass?.logoImage,
        validators: [],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
      yearControlName: FormControl<double>(
        value: freezedClass?.year,
        validators: [],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
      selectedSpacesControlName: FormControl<List<String>>(
        value: freezedClass?.selectedSpaces,
        validators: [],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
    },
    validators: [],
    asyncValidators: [],
    asyncValidatorsDebounceTime: 250,
    disabled: false,
  );
}

class ReactiveFreezedClassFormArrayBuilder<
  ReactiveFreezedClassFormArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveFreezedClassFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  }) : assert(
         control != null || formControl != null,
         "You have to specify `control` or `formControl`!",
       ),
       super(key: key);

  final FormArray<ReactiveFreezedClassFormArrayBuilderT>? formControl;

  final FormArray<ReactiveFreezedClassFormArrayBuilderT>? Function(
    FreezedClassForm formModel,
  )?
  control;

  final Widget Function(
    BuildContext context,
    List<Widget> itemList,
    FreezedClassForm formModel,
  )?
  builder;

  final Widget Function(
    BuildContext context,
    int i,
    FormControl<ReactiveFreezedClassFormArrayBuilderT> control,
    ReactiveFreezedClassFormArrayBuilderT? item,
    FreezedClassForm formModel,
  )
  itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
    FormControl<ReactiveFreezedClassFormArrayBuilderT> control,
  )?
  controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFreezedClassForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<ReactiveFreezedClassFormArrayBuilderT>(
      formControl: formControl ?? control?.call(formModel),
      builder: builder != null
          ? (context, itemList) => builder(context, itemList, formModel)
          : null,
      itemBuilder: (context, i, control, item) =>
          itemBuilder(context, i, control, item, formModel),
      emptyBuilder: emptyBuilder,
      controlFilter: controlFilter,
    );
  }
}

class ReactiveFreezedClassFormArrayBuilder2<
  ReactiveFreezedClassFormArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveFreezedClassFormArrayBuilder2({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  }) : assert(
         control != null || formControl != null,
         "You have to specify `control` or `formControl`!",
       ),
       super(key: key);

  final FormArray<ReactiveFreezedClassFormArrayBuilderT>? formControl;

  final FormArray<ReactiveFreezedClassFormArrayBuilderT>? Function(
    FreezedClassForm formModel,
  )?
  control;

  final Widget Function(
    ({BuildContext context, List<Widget> itemList, FreezedClassForm formModel})
    params,
  )?
  builder;

  final Widget Function(
    ({
      BuildContext context,
      int i,
      FormControl<ReactiveFreezedClassFormArrayBuilderT> control,
      ReactiveFreezedClassFormArrayBuilderT? item,
      FreezedClassForm formModel,
    })
    params,
  )
  itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
    FormControl<ReactiveFreezedClassFormArrayBuilderT> control,
  )?
  controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFreezedClassForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<ReactiveFreezedClassFormArrayBuilderT>(
      formControl: formControl ?? control?.call(formModel),
      builder: builder != null
          ? (context, itemList) => builder((
              context: context,
              itemList: itemList,
              formModel: formModel,
            ))
          : null,
      itemBuilder: (context, i, control, item) => itemBuilder((
        context: context,
        i: i,
        control: control,
        item: item,
        formModel: formModel,
      )),
      emptyBuilder: emptyBuilder,
      controlFilter: controlFilter,
    );
  }
}

class ReactiveFreezedClassFormFormGroupArrayBuilder<
  ReactiveFreezedClassFormFormGroupArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveFreezedClassFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  }) : assert(
         extended != null || getExtended != null,
         "You have to specify `control` or `formControl`!",
       ),
       super(key: key);

  final ExtendedControl<
    List<Map<String, Object?>?>,
    List<ReactiveFreezedClassFormFormGroupArrayBuilderT>
  >?
  extended;

  final ExtendedControl<
    List<Map<String, Object?>?>,
    List<ReactiveFreezedClassFormFormGroupArrayBuilderT>
  >
  Function(FreezedClassForm formModel)?
  getExtended;

  final Widget Function(
    BuildContext context,
    List<Widget> itemList,
    FreezedClassForm formModel,
  )?
  builder;

  final Widget Function(
    BuildContext context,
    int i,
    ReactiveFreezedClassFormFormGroupArrayBuilderT? item,
    FreezedClassForm formModel,
  )
  itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveFreezedClassForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ??
                    <ReactiveFreezedClassFormFormGroupArrayBuilderT>[])
                .asMap()
                .map(
                  (i, item) =>
                      MapEntry(i, itemBuilder(context, i, item, formModel)),
                )
                .values
                .toList();

        return builder?.call(context, itemList, formModel) ??
            Column(children: itemList);
      },
    );
  }
}
