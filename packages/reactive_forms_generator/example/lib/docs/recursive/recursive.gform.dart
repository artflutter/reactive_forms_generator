// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recursive.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveSecuredAreaFormConsumer extends StatelessWidget {
  const ReactiveSecuredAreaFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
    BuildContext context,
    SecuredAreaForm formModel,
    Widget? child,
  )
  builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecuredAreaForm.of(context);

    if (formModel is! SecuredAreaForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SecuredAreaFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const SecuredAreaFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(stream, child, key: key);

  final SecuredAreaForm form;
}

class ReactiveSecuredAreaForm extends StatelessWidget {
  const ReactiveSecuredAreaForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvokedWithResult,
  }) : super(key: key);

  final Widget child;

  final SecuredAreaForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
      onPopInvokedWithResult;

  static SecuredAreaForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
            SecuredAreaFormInheritedStreamer
          >()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<
          SecuredAreaFormInheritedStreamer
        >();
    return element == null
        ? null
        : (element.widget as SecuredAreaFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SecuredAreaFormInheritedStreamer(
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

extension ReactiveReactiveSecuredAreaFormExt on BuildContext {
  SecuredAreaForm? securedAreaFormWatch() => ReactiveSecuredAreaForm.of(this);

  SecuredAreaForm? securedAreaFormRead() =>
      ReactiveSecuredAreaForm.of(this, listen: false);
}

class SecuredAreaFormBuilder extends StatefulWidget {
  const SecuredAreaFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvokedWithResult,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SecuredArea? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final ReactiveFormPopInvokedWithResultCallback<dynamic>?
      onPopInvokedWithResult;

  final Widget Function(
    BuildContext context,
    SecuredAreaForm formModel,
    Widget? child,
  )
  builder;

  final void Function(BuildContext context, SecuredAreaForm formModel)?
  initState;

  @override
  _SecuredAreaFormBuilderState createState() => _SecuredAreaFormBuilderState();
}

class _SecuredAreaFormBuilderState extends State<SecuredAreaFormBuilder> {
  late SecuredAreaForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = SecuredAreaForm(
      SecuredAreaForm.formElements(widget.model),
      null,
      null,
    );

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logSecuredAreaForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant SecuredAreaFormBuilder oldWidget) {
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
    return ReactiveSecuredAreaForm(
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

final _logSecuredAreaForm = Logger.detached('SecuredAreaForm');

class SecuredAreaForm implements FormModel<SecuredArea, SecuredArea> {
  SecuredAreaForm(this.form, this.path, this._formModel)
    : initial = form.rawValue;

  static const String idControlName = "id";

  static const String securedAreaControlName = "securedArea";

  static const String parcelSystemControlName = "parcelSystem";

  static const String subSecuredAreasControlName = "subSecuredAreas";

  final FormGroup form;

  final String? path;

  // ignore: unused_field
  final FormModel<dynamic, dynamic>? _formModel;

  final Map<String, bool> _disabled = {};

  @override
  final Map<String, Object?> initial;

  String idControlPath() => pathBuilder(idControlName);

  String securedAreaControlPath() => pathBuilder(securedAreaControlName);

  String parcelSystemControlPath() => pathBuilder(parcelSystemControlName);

  String subSecuredAreasControlPath() =>
      pathBuilder(subSecuredAreasControlName);

  String? get _idValue => containsId ? idControl.value : null;

  SecuredArea? get _securedAreaValue =>
      containsSecuredArea ? securedAreaForm.model : null;

  ParcelSystem? get _parcelSystemValue =>
      containsParcelSystem ? parcelSystemForm.model : null;

  List<SecuredArea> get _subSecuredAreasValue =>
      subSecuredAreasSecuredAreaForm.map((e) => e.model).toList();

  String? get _idRawValue => containsId ? idControl.value : null;

  SecuredArea? get _securedAreaRawValue =>
      containsSecuredArea ? securedAreaForm.rawModel : null;

  ParcelSystem? get _parcelSystemRawValue =>
      containsParcelSystem ? parcelSystemForm.rawModel : null;

  List<SecuredArea> get _subSecuredAreasRawValue =>
      subSecuredAreasSecuredAreaForm.map((e) => e.rawModel).toList();

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSecuredArea {
    try {
      form.control(securedAreaControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsParcelSystem {
    try {
      form.control(parcelSystemControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSubSecuredAreas {
    try {
      form.control(subSecuredAreasControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get idErrors => idControl.errors;

  Map<String, Object>? get securedAreaErrors => securedAreaControl.errors;

  Map<String, Object>? get parcelSystemErrors => parcelSystemControl.errors;

  Map<String, Object> get subSecuredAreasErrors =>
      subSecuredAreasControl.errors;

  void get idFocus => form.focus(idControlPath());

  void get securedAreaFocus => form.focus(securedAreaControlPath());

  void get parcelSystemFocus => form.focus(parcelSystemControlPath());

  void get subSecuredAreasFocus => form.focus(subSecuredAreasControlPath());

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

  void securedAreaRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsSecuredArea) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          securedAreaControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            securedAreaControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void parcelSystemRemove({bool updateParent = true, bool emitEvent = true}) {
    if (containsParcelSystem) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          parcelSystemControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            parcelSystemControlName,
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
    idControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void securedAreaValueUpdate(
    SecuredArea? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    securedAreaControl.updateValue(
      SecuredAreaForm.formElements(value).rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void parcelSystemValueUpdate(
    ParcelSystem? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    parcelSystemControl.updateValue(
      ParcelSystemForm.formElements(value).rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void subSecuredAreasValueUpdate(
    List<SecuredArea> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      subSecuredAreasClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <SecuredArea>[];
    final toAdd = <SecuredArea>[];

    localValue.asMap().forEach((k, v) {
      final values = subSecuredAreasControl.controls
          .map((e) => e.value)
          .toList();

      if (subSecuredAreasSecuredAreaForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      subSecuredAreasControl.updateValue(
        toUpdate.map((e) => SecuredAreaForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        subSecuredAreasControl.add(
          SecuredAreaForm.formElements(e),
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      });
    }
  }

  void subSecuredAreasInsert(
    int i,
    SecuredArea value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = subSecuredAreasControl.controls.map((e) => e.value).toList();
    if (values.length < i) {
      addSubSecuredAreasItem(value);
      return;
    }

    subSecuredAreasControl.insert(
      i,
      SecuredAreaForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void subSecuredAreasClear({bool updateParent = true, bool emitEvent = true}) {
    subSecuredAreasSecuredAreaForm.clear();
    subSecuredAreasControl.clear(
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

  void securedAreaValuePatch(
    SecuredArea? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    securedAreaControl.updateValue(
      SecuredAreaForm.formElements(value).rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void parcelSystemValuePatch(
    ParcelSystem? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    parcelSystemControl.updateValue(
      ParcelSystemForm.formElements(value).rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void subSecuredAreasValuePatch(
    List<SecuredArea> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = subSecuredAreasSecuredAreaForm.asMap().keys;

    final toPatch = <SecuredArea>[];
    (value).asMap().forEach((k, v) {
      if (keys.contains(k)) {
        toPatch.add(v);
      }
    });

    subSecuredAreasControl.patchValue(
      toPatch.map((e) => SecuredAreaForm.formElements(e).rawValue).toList(),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

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

  void securedAreaValueReset(
    SecuredArea? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => securedAreaControl.reset(
    value: SecuredAreaForm.formElements(value).rawValue,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  void parcelSystemValueReset(
    ParcelSystem? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => parcelSystemControl.reset(
    value: ParcelSystemForm.formElements(value).rawValue,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  void subSecuredAreasValueReset(
    List<SecuredArea> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => subSecuredAreasControl.reset(
    value: value.map((e) => SecuredAreaForm.formElements(e).rawValue).toList(),
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormGroup get securedAreaControl =>
      form.control(securedAreaControlPath()) as FormGroup;

  FormGroup get parcelSystemControl =>
      form.control(parcelSystemControlPath()) as FormGroup;

  FormArray<Map<String, Object?>> get subSecuredAreasControl =>
      form.control(subSecuredAreasControlPath())
          as FormArray<Map<String, Object?>>;

  SecuredAreaForm get securedAreaForm =>
      SecuredAreaForm(form, pathBuilder('securedArea'), _formModel ?? this);

  ParcelSystemForm get parcelSystemForm =>
      ParcelSystemForm(form, pathBuilder('parcelSystem'), _formModel ?? this);

  List<SecuredAreaForm> get subSecuredAreasSecuredAreaForm {
    final values = subSecuredAreasControl.controls.map((e) => e.value).toList();

    return values
        .asMap()
        .map(
          (k, v) => MapEntry(
            k,
            SecuredAreaForm(
              form,
              pathBuilder("subSecuredAreas.$k"),
              _formModel ?? this,
            ),
          ),
        )
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
      idControl.markAsEnabled(updateParent: updateParent, emitEvent: emitEvent);
    }
  }

  void securedAreaSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      securedAreaControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      securedAreaControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void parcelSystemSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      parcelSystemControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      parcelSystemControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void subSecuredAreasSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      subSecuredAreasControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      subSecuredAreasControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<SecuredAreaForm>>
  get subSecuredAreasExtendedControl =>
      ExtendedControl<List<Map<String, Object?>?>, List<SecuredAreaForm>>(
        form.control(subSecuredAreasControlPath())
            as FormArray<Map<String, Object?>>,
        () => subSecuredAreasSecuredAreaForm,
      );

  void addSubSecuredAreasItem(SecuredArea value) {
    subSecuredAreasControl.add(SecuredAreaForm.formElements(value));
  }

  void removeSubSecuredAreasItemAtIndex(int i) {
    if ((subSecuredAreasControl.value ?? []).length > i) {
      subSecuredAreasControl.removeAt(i);
    }
  }

  void addSubSecuredAreasItemList(List<SecuredArea> value) {
    value.forEach((e) => addSubSecuredAreasItem(e));
  }

  @override
  SecuredArea get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logSecuredAreaForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return SecuredArea(
      id: _idValue,
      securedArea: _securedAreaValue,
      parcelSystem: _parcelSystemValue,
      subSecuredAreas: _subSecuredAreasValue,
    );
  }

  @override
  SecuredArea get rawModel {
    return SecuredArea(
      id: _idRawValue,
      securedArea: _securedAreaRawValue,
      parcelSystem: _parcelSystemRawValue,
      subSecuredAreas: _subSecuredAreasRawValue,
    );
  }

  @override
  void toggleDisabled({bool updateParent = true, bool emitEvent = true}) {
    if (_disabled.isEmpty) {
      currentForm.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      subSecuredAreasSecuredAreaForm.forEach((e) => e.toggleDisabled());
      securedAreaForm.toggleDisabled();
      parcelSystemForm.toggleDisabled();
      currentForm.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      subSecuredAreasSecuredAreaForm.forEach((e) => e.toggleDisabled());
      securedAreaForm.toggleDisabled();
      parcelSystemForm.toggleDisabled();
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
  bool equalsTo(SecuredArea? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm.rawValue,
      SecuredAreaForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(SecuredArea model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logSecuredAreaForm.info('Errors');
      _logSecuredAreaForm.info('┗━━ ${form.errors}');
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
    SecuredArea? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) => currentForm.updateValue(
    SecuredAreaForm.formElements(value).rawValue,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  @override
  void upsertValue(
    SecuredArea? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final formElements = SecuredAreaForm.formElements(value);

    currentForm.addAll(formElements.controls);
  }

  @override
  void reset({
    SecuredArea? value,
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

  static FormGroup formElements(SecuredArea? securedArea) => FormGroup(
    {
      idControlName: FormControl<String>(
        value: securedArea?.id,
        validators: [],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
      subSecuredAreasControlName: FormArray(
        (securedArea?.subSecuredAreas ?? [])
            .map((e) => SecuredAreaForm.formElements(e))
            .toList(),
        validators: [],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
      ),
      securedAreaControlName: SecuredAreaForm.formElements(
        securedArea?.securedArea,
      ),
      parcelSystemControlName: ParcelSystemForm.formElements(
        securedArea?.parcelSystem,
      ),
    },
    validators: [],
    asyncValidators: [],
    asyncValidatorsDebounceTime: 250,
    disabled: false,
  );
}

final _logParcelSystemForm = Logger.detached('ParcelSystemForm');

class ParcelSystemForm implements FormModel<ParcelSystem, ParcelSystem> {
  ParcelSystemForm(this.form, this.path, this._formModel)
    : initial = form.rawValue;

  static const String hasParcelSystemControlName = "hasParcelSystem";

  static const String dataControlName = "data";

  final FormGroup form;

  final String? path;

  // ignore: unused_field
  final FormModel<dynamic, dynamic>? _formModel;

  final Map<String, bool> _disabled = {};

  @override
  final Map<String, Object?> initial;

  String hasParcelSystemControlPath() =>
      pathBuilder(hasParcelSystemControlName);

  String dataControlPath() => pathBuilder(dataControlName);

  bool get _hasParcelSystemValue => hasParcelSystemControl.value ?? false;

  ParcelSystemData get _dataValue => dataForm.model;

  bool get _hasParcelSystemRawValue => hasParcelSystemControl.value ?? false;

  ParcelSystemData get _dataRawValue => dataForm.rawModel;

  bool get containsHasParcelSystem {
    try {
      form.control(hasParcelSystemControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsData {
    try {
      form.control(dataControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get hasParcelSystemErrors =>
      hasParcelSystemControl.errors;

  Map<String, Object> get dataErrors => dataControl.errors;

  void get hasParcelSystemFocus => form.focus(hasParcelSystemControlPath());

  void get dataFocus => form.focus(dataControlPath());

  void hasParcelSystemValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasParcelSystemControl.updateValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void dataValueUpdate(
    ParcelSystemData value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dataControl.updateValue(
      ParcelSystemDataForm.formElements(value).rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void hasParcelSystemValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    hasParcelSystemControl.patchValue(
      value,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void dataValuePatch(
    ParcelSystemData value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    dataControl.updateValue(
      ParcelSystemDataForm.formElements(value).rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void hasParcelSystemValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => hasParcelSystemControl.reset(
    value: value,
    updateParent: updateParent,
    emitEvent: emitEvent,
    removeFocus: removeFocus,
    disabled: disabled,
  );

  void dataValueReset(
    ParcelSystemData value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) => dataControl.reset(
    value: ParcelSystemDataForm.formElements(value).rawValue,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  FormControl<bool> get hasParcelSystemControl =>
      form.control(hasParcelSystemControlPath()) as FormControl<bool>;

  FormGroup get dataControl => form.control(dataControlPath()) as FormGroup;

  ParcelSystemDataForm get dataForm =>
      ParcelSystemDataForm(form, pathBuilder('data'), _formModel ?? this);

  void hasParcelSystemSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      hasParcelSystemControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      hasParcelSystemControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void dataSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      dataControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dataControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ParcelSystem get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logParcelSystemForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ParcelSystem(
      hasParcelSystem: _hasParcelSystemValue,
      data: _dataValue,
    );
  }

  @override
  ParcelSystem get rawModel {
    return ParcelSystem(
      hasParcelSystem: _hasParcelSystemRawValue,
      data: _dataRawValue,
    );
  }

  @override
  void toggleDisabled({bool updateParent = true, bool emitEvent = true}) {
    if (_disabled.isEmpty) {
      currentForm.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      dataForm.toggleDisabled();
      currentForm.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      dataForm.toggleDisabled();
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
  bool equalsTo(ParcelSystem? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm.rawValue,
      ParcelSystemForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ParcelSystem model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logParcelSystemForm.info('Errors');
      _logParcelSystemForm.info('┗━━ ${form.errors}');
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
    ParcelSystem? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) => currentForm.updateValue(
    ParcelSystemForm.formElements(value).rawValue,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  @override
  void upsertValue(
    ParcelSystem? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final formElements = ParcelSystemForm.formElements(value);

    currentForm.addAll(formElements.controls);
  }

  @override
  void reset({
    ParcelSystem? value,
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

  static FormGroup formElements(ParcelSystem? parcelSystem) => FormGroup(
    {
      hasParcelSystemControlName: FormControl<bool>(
        value: parcelSystem?.hasParcelSystem,
        validators: [],
        asyncValidators: [],
        asyncValidatorsDebounceTime: 250,
        disabled: false,
        touched: false,
      ),
      dataControlName: ParcelSystemDataForm.formElements(parcelSystem?.data),
    },
    validators: [],
    asyncValidators: [],
    asyncValidatorsDebounceTime: 250,
    disabled: false,
  );
}

final _logParcelSystemDataForm = Logger.detached('ParcelSystemDataForm');

class ParcelSystemDataForm
    implements FormModel<ParcelSystemData, ParcelSystemData> {
  ParcelSystemDataForm(this.form, this.path, this._formModel)
    : initial = form.rawValue;

  static const String idControlName = "id";

  final FormGroup form;

  final String? path;

  // ignore: unused_field
  final FormModel<dynamic, dynamic>? _formModel;

  final Map<String, bool> _disabled = {};

  @override
  final Map<String, Object?> initial;

  String idControlPath() => pathBuilder(idControlName);

  String? get _idValue => containsId ? idControl.value : null;

  String? get _idRawValue => containsId ? idControl.value : null;

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get idErrors => idControl.errors;

  void get idFocus => form.focus(idControlPath());

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

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

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

  @override
  ParcelSystemData get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logParcelSystemDataForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ParcelSystemData(id: _idValue);
  }

  @override
  ParcelSystemData get rawModel {
    return ParcelSystemData(id: _idRawValue);
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
  bool equalsTo(ParcelSystemData? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm.rawValue,
      ParcelSystemDataForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ParcelSystemData model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logParcelSystemDataForm.info('Errors');
      _logParcelSystemDataForm.info('┗━━ ${form.errors}');
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
    ParcelSystemData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) => currentForm.updateValue(
    ParcelSystemDataForm.formElements(value).rawValue,
    updateParent: updateParent,
    emitEvent: emitEvent,
  );

  @override
  void upsertValue(
    ParcelSystemData? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final formElements = ParcelSystemDataForm.formElements(value);

    currentForm.addAll(formElements.controls);
  }

  @override
  void reset({
    ParcelSystemData? value,
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

  static FormGroup formElements(ParcelSystemData? parcelSystemData) =>
      FormGroup(
        {
          idControlName: FormControl<String>(
            value: parcelSystemData?.id,
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

class ReactiveSecuredAreaFormArrayBuilder<ReactiveSecuredAreaFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveSecuredAreaFormArrayBuilder({
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

  final FormArray<ReactiveSecuredAreaFormArrayBuilderT>? formControl;

  final FormArray<ReactiveSecuredAreaFormArrayBuilderT>? Function(
    SecuredAreaForm formModel,
  )?
  control;

  final Widget Function(
    BuildContext context,
    List<Widget> itemList,
    SecuredAreaForm formModel,
  )?
  builder;

  final Widget Function(
    BuildContext context,
    int i,
    FormControl<ReactiveSecuredAreaFormArrayBuilderT> control,
    ReactiveSecuredAreaFormArrayBuilderT? item,
    SecuredAreaForm formModel,
  )
  itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
    FormControl<ReactiveSecuredAreaFormArrayBuilderT> control,
  )?
  controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecuredAreaForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<ReactiveSecuredAreaFormArrayBuilderT>(
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

class ReactiveSecuredAreaFormArrayBuilder2<ReactiveSecuredAreaFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveSecuredAreaFormArrayBuilder2({
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

  final FormArray<ReactiveSecuredAreaFormArrayBuilderT>? formControl;

  final FormArray<ReactiveSecuredAreaFormArrayBuilderT>? Function(
    SecuredAreaForm formModel,
  )?
  control;

  final Widget Function(
    ({BuildContext context, List<Widget> itemList, SecuredAreaForm formModel})
    params,
  )?
  builder;

  final Widget Function(
    ({
      BuildContext context,
      int i,
      FormControl<ReactiveSecuredAreaFormArrayBuilderT> control,
      ReactiveSecuredAreaFormArrayBuilderT? item,
      SecuredAreaForm formModel,
    })
    params,
  )
  itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
    FormControl<ReactiveSecuredAreaFormArrayBuilderT> control,
  )?
  controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecuredAreaForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final builder = this.builder;
    final itemBuilder = this.itemBuilder;

    return ReactiveFormArrayItemBuilder<ReactiveSecuredAreaFormArrayBuilderT>(
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

class ReactiveSecuredAreaFormFormGroupArrayBuilder<
  ReactiveSecuredAreaFormFormGroupArrayBuilderT
>
    extends StatelessWidget {
  const ReactiveSecuredAreaFormFormGroupArrayBuilder({
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
    List<ReactiveSecuredAreaFormFormGroupArrayBuilderT>
  >?
  extended;

  final ExtendedControl<
    List<Map<String, Object?>?>,
    List<ReactiveSecuredAreaFormFormGroupArrayBuilderT>
  >
  Function(SecuredAreaForm formModel)?
  getExtended;

  final Widget Function(
    BuildContext context,
    List<Widget> itemList,
    SecuredAreaForm formModel,
  )?
  builder;

  final Widget Function(
    BuildContext context,
    int i,
    ReactiveSecuredAreaFormFormGroupArrayBuilderT? item,
    SecuredAreaForm formModel,
  )
  itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSecuredAreaForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveSecuredAreaFormFormGroupArrayBuilderT>[])
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
