// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'profile.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveProfileFormConsumer extends StatelessWidget {
  const ReactiveProfileFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ProfileForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileForm.of(context);

    if (formModel is! ProfileForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ProfileFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ProfileFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ProfileForm form;
}

class ReactiveProfileForm extends StatelessWidget {
  const ReactiveProfileForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ProfileForm form;

  final WillPopCallback? onWillPop;

  static ProfileForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<ProfileFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ProfileFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ProfileFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ProfileFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ProfileFormBuilder extends StatefulWidget {
  const ProfileFormBuilder({
    Key? key,
    required this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Profile model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ProfileForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ProfileForm formModel)? initState;

  @override
  _ProfileFormBuilderState createState() => _ProfileFormBuilderState();
}

class _ProfileFormBuilderState extends State<ProfileFormBuilder> {
  late ProfileForm _formModel;

  @override
  void initState() {
    _formModel =
        ProfileForm(widget.model, ProfileForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProfileFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ProfileForm(
          widget.model, ProfileForm.formElements(widget.model), null);

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
    return ReactiveProfileForm(
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

class ProfileForm implements FormModel<Profile> {
  ProfileForm(
    this.profile,
    this.form,
    this.path,
  ) {
    incidenceFilterForm = IncidenceFilterForm(
        profile.incidenceFilter, form, pathBuilder('incidenceFilter'));
    thresholdForm =
        ThresholdSettingForm(profile.threshold, form, pathBuilder('threshold'));
    timerForm = TimerSettingForm(profile.timer, form, pathBuilder('timer'));
  }

  static String nameControlName = "name";

  static String chartingOrderControlName = "chartingOrder";

  static String numberingStandardControlName = "numberingStandard";

  static String incidenceFilterControlName = "incidenceFilter";

  static String measurementTypeControlName = "measurementType";

  static String thresholdControlName = "threshold";

  static String timerControlName = "timer";

  static String audioGuidanceControlName = "audioGuidance";

  late IncidenceFilterForm incidenceFilterForm;

  late ThresholdSettingForm thresholdForm;

  late TimerSettingForm timerForm;

  final Profile profile;

  final FormGroup form;

  final String? path;

  String nameControlPath() => pathBuilder(nameControlName);
  String chartingOrderControlPath() => pathBuilder(chartingOrderControlName);
  String numberingStandardControlPath() =>
      pathBuilder(numberingStandardControlName);
  String measurementTypeControlPath() =>
      pathBuilder(measurementTypeControlName);
  String audioGuidanceControlPath() => pathBuilder(audioGuidanceControlName);
  String incidenceFilterControlPath() =>
      pathBuilder(incidenceFilterControlName);
  String thresholdControlPath() => pathBuilder(thresholdControlName);
  String timerControlPath() => pathBuilder(timerControlName);
  String get _nameValue => nameControl.value as String;
  ChartingOrderValue get _chartingOrderValue =>
      chartingOrderControl.value as ChartingOrderValue;
  NumberingStandard get _numberingStandardValue =>
      numberingStandardControl.value as NumberingStandard;
  MeasurementType get _measurementTypeValue =>
      measurementTypeControl.value as MeasurementType;
  bool get _audioGuidanceValue => audioGuidanceControl.value as bool;
  IncidenceFilter get _incidenceFilterValue => incidenceFilterForm.model;
  ThresholdSetting get _thresholdValue => thresholdForm.model;
  TimerSetting get _timerValue => timerForm.model;
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsChartingOrder {
    try {
      form.control(chartingOrderControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsNumberingStandard {
    try {
      form.control(numberingStandardControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMeasurementType {
    try {
      form.control(measurementTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAudioGuidance {
    try {
      form.control(audioGuidanceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIncidenceFilter {
    try {
      form.control(incidenceFilterControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsThreshold {
    try {
      form.control(thresholdControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTimer {
    try {
      form.control(timerControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get nameErrors => nameControl.errors;
  Object? get chartingOrderErrors => chartingOrderControl.errors;
  Object? get numberingStandardErrors => numberingStandardControl.errors;
  Object? get measurementTypeErrors => measurementTypeControl.errors;
  Object? get audioGuidanceErrors => audioGuidanceControl.errors;
  Object? get incidenceFilterErrors => incidenceFilterControl.errors;
  Object? get thresholdErrors => thresholdControl.errors;
  Object? get timerErrors => timerControl.errors;
  void get nameFocus => form.focus(nameControlPath());
  void get chartingOrderFocus => form.focus(chartingOrderControlPath());
  void get numberingStandardFocus => form.focus(numberingStandardControlPath());
  void get measurementTypeFocus => form.focus(measurementTypeControlPath());
  void get audioGuidanceFocus => form.focus(audioGuidanceControlPath());
  void get incidenceFilterFocus => form.focus(incidenceFilterControlPath());
  void get thresholdFocus => form.focus(thresholdControlPath());
  void get timerFocus => form.focus(timerControlPath());
  void nameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void chartingOrderValueUpdate(
    ChartingOrderValue value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    chartingOrderControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void numberingStandardValueUpdate(
    NumberingStandard value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    numberingStandardControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void measurementTypeValueUpdate(
    MeasurementType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    measurementTypeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void audioGuidanceValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    audioGuidanceControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void incidenceFilterValueUpdate(
    IncidenceFilter value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    incidenceFilterControl.updateValue(
        IncidenceFilterForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void thresholdValueUpdate(
    ThresholdSetting value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    thresholdControl.updateValue(
        ThresholdSettingForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void timerValueUpdate(
    TimerSetting value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timerControl.updateValue(TimerSettingForm.formElements(value).rawValue,
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

  void chartingOrderValuePatch(
    ChartingOrderValue value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    chartingOrderControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void numberingStandardValuePatch(
    NumberingStandard value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    numberingStandardControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void measurementTypeValuePatch(
    MeasurementType value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    measurementTypeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void audioGuidanceValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    audioGuidanceControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void incidenceFilterValuePatch(
    IncidenceFilter value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    incidenceFilterControl.updateValue(
        IncidenceFilterForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void thresholdValuePatch(
    ThresholdSetting value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    thresholdControl.updateValue(
        ThresholdSettingForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void timerValuePatch(
    TimerSetting value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timerControl.updateValue(TimerSettingForm.formElements(value).rawValue,
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
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void chartingOrderValueReset(
    ChartingOrderValue value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      chartingOrderControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void numberingStandardValueReset(
    NumberingStandard value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      numberingStandardControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void measurementTypeValueReset(
    MeasurementType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      measurementTypeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void audioGuidanceValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      audioGuidanceControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void incidenceFilterValueReset(
    IncidenceFilter value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      incidenceFilterControl.reset(
          value: IncidenceFilterForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void thresholdValueReset(
    ThresholdSetting value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      thresholdControl.reset(
          value: ThresholdSettingForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void timerValueReset(
    TimerSetting value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      timerControl.reset(
          value: TimerSettingForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<ChartingOrderValue> get chartingOrderControl =>
      form.control(chartingOrderControlPath())
          as FormControl<ChartingOrderValue>;
  FormControl<NumberingStandard> get numberingStandardControl =>
      form.control(numberingStandardControlPath())
          as FormControl<NumberingStandard>;
  FormControl<MeasurementType> get measurementTypeControl =>
      form.control(measurementTypeControlPath())
          as FormControl<MeasurementType>;
  FormControl<bool> get audioGuidanceControl =>
      form.control(audioGuidanceControlPath()) as FormControl<bool>;
  FormGroup get incidenceFilterControl =>
      form.control(incidenceFilterControlPath()) as FormGroup;
  FormGroup get thresholdControl =>
      form.control(thresholdControlPath()) as FormGroup;
  FormGroup get timerControl => form.control(timerControlPath()) as FormGroup;
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

  void chartingOrderSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      chartingOrderControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      chartingOrderControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void numberingStandardSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      numberingStandardControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      numberingStandardControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void measurementTypeSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      measurementTypeControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      measurementTypeControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void audioGuidanceSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      audioGuidanceControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      audioGuidanceControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void incidenceFilterSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      incidenceFilterControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      incidenceFilterControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void thresholdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      thresholdControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      thresholdControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void timerSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      timerControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      timerControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Profile get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Profile(profile.id,
        anotherId: profile.anotherId,
        name: _nameValue,
        chartingOrder: _chartingOrderValue,
        numberingStandard: _numberingStandardValue,
        incidenceFilter: _incidenceFilterValue,
        measurementType: _measurementTypeValue,
        threshold: _thresholdValue,
        timer: _timerValue,
        audioGuidance: _audioGuidanceValue);
  }

  ProfileForm copyWithPath(String? path) {
    return ProfileForm(profile, form, path);
  }

  @override
  void updateValue(
    Profile value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ProfileForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Profile? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Profile profile) => FormGroup({
        nameControlName: FormControl<String>(
            value: profile.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        chartingOrderControlName: FormControl<ChartingOrderValue>(
            value: profile.chartingOrder,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        numberingStandardControlName: FormControl<NumberingStandard>(
            value: profile.numberingStandard,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        measurementTypeControlName: FormControl<MeasurementType>(
            value: profile.measurementType,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        audioGuidanceControlName: FormControl<bool>(
            value: profile.audioGuidance,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        incidenceFilterControlName:
            IncidenceFilterForm.formElements(profile.incidenceFilter),
        thresholdControlName:
            ThresholdSettingForm.formElements(profile.threshold),
        timerControlName: TimerSettingForm.formElements(profile.timer)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class IncidenceFilterForm implements FormModel<IncidenceFilter> {
  IncidenceFilterForm(
    this.incidenceFilter,
    this.form,
    this.path,
  ) {}

  static String isMobilityEnabledControlName = "isMobilityEnabled";

  static String isFurcationEnabledControlName = "isFurcationEnabled";

  static String isBleedingEnabledControlName = "isBleedingEnabled";

  static String isSuppurationEnabledControlName = "isSuppurationEnabled";

  static String isCalculusEnabledControlName = "isCalculusEnabled";

  static String isPlaqueEnabledControlName = "isPlaqueEnabled";

  final IncidenceFilter? incidenceFilter;

  final FormGroup form;

  final String? path;

  String isMobilityEnabledControlPath() =>
      pathBuilder(isMobilityEnabledControlName);
  String isFurcationEnabledControlPath() =>
      pathBuilder(isFurcationEnabledControlName);
  String isBleedingEnabledControlPath() =>
      pathBuilder(isBleedingEnabledControlName);
  String isSuppurationEnabledControlPath() =>
      pathBuilder(isSuppurationEnabledControlName);
  String isCalculusEnabledControlPath() =>
      pathBuilder(isCalculusEnabledControlName);
  String isPlaqueEnabledControlPath() =>
      pathBuilder(isPlaqueEnabledControlName);
  bool get _isMobilityEnabledValue => isMobilityEnabledControl.value as bool;
  bool get _isFurcationEnabledValue => isFurcationEnabledControl.value as bool;
  bool get _isBleedingEnabledValue => isBleedingEnabledControl.value as bool;
  bool get _isSuppurationEnabledValue =>
      isSuppurationEnabledControl.value as bool;
  bool get _isCalculusEnabledValue => isCalculusEnabledControl.value as bool;
  bool get _isPlaqueEnabledValue => isPlaqueEnabledControl.value as bool;
  bool get containsIsMobilityEnabled {
    try {
      form.control(isMobilityEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsFurcationEnabled {
    try {
      form.control(isFurcationEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsBleedingEnabled {
    try {
      form.control(isBleedingEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsSuppurationEnabled {
    try {
      form.control(isSuppurationEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsCalculusEnabled {
    try {
      form.control(isCalculusEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsIsPlaqueEnabled {
    try {
      form.control(isPlaqueEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get isMobilityEnabledErrors => isMobilityEnabledControl.errors;
  Object? get isFurcationEnabledErrors => isFurcationEnabledControl.errors;
  Object? get isBleedingEnabledErrors => isBleedingEnabledControl.errors;
  Object? get isSuppurationEnabledErrors => isSuppurationEnabledControl.errors;
  Object? get isCalculusEnabledErrors => isCalculusEnabledControl.errors;
  Object? get isPlaqueEnabledErrors => isPlaqueEnabledControl.errors;
  void get isMobilityEnabledFocus => form.focus(isMobilityEnabledControlPath());
  void get isFurcationEnabledFocus =>
      form.focus(isFurcationEnabledControlPath());
  void get isBleedingEnabledFocus => form.focus(isBleedingEnabledControlPath());
  void get isSuppurationEnabledFocus =>
      form.focus(isSuppurationEnabledControlPath());
  void get isCalculusEnabledFocus => form.focus(isCalculusEnabledControlPath());
  void get isPlaqueEnabledFocus => form.focus(isPlaqueEnabledControlPath());
  void isMobilityEnabledValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isMobilityEnabledControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isFurcationEnabledValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isFurcationEnabledControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isBleedingEnabledValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isBleedingEnabledControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isSuppurationEnabledValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isSuppurationEnabledControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isCalculusEnabledValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isCalculusEnabledControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isPlaqueEnabledValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isPlaqueEnabledControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isMobilityEnabledValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isMobilityEnabledControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isFurcationEnabledValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isFurcationEnabledControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isBleedingEnabledValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isBleedingEnabledControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isSuppurationEnabledValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isSuppurationEnabledControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isCalculusEnabledValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isCalculusEnabledControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isPlaqueEnabledValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isPlaqueEnabledControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isMobilityEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isMobilityEnabledControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isFurcationEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isFurcationEnabledControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isBleedingEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isBleedingEnabledControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isSuppurationEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isSuppurationEnabledControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isCalculusEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isCalculusEnabledControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void isPlaqueEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isPlaqueEnabledControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<bool> get isMobilityEnabledControl =>
      form.control(isMobilityEnabledControlPath()) as FormControl<bool>;
  FormControl<bool> get isFurcationEnabledControl =>
      form.control(isFurcationEnabledControlPath()) as FormControl<bool>;
  FormControl<bool> get isBleedingEnabledControl =>
      form.control(isBleedingEnabledControlPath()) as FormControl<bool>;
  FormControl<bool> get isSuppurationEnabledControl =>
      form.control(isSuppurationEnabledControlPath()) as FormControl<bool>;
  FormControl<bool> get isCalculusEnabledControl =>
      form.control(isCalculusEnabledControlPath()) as FormControl<bool>;
  FormControl<bool> get isPlaqueEnabledControl =>
      form.control(isPlaqueEnabledControlPath()) as FormControl<bool>;
  void isMobilityEnabledSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isMobilityEnabledControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isMobilityEnabledControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isFurcationEnabledSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isFurcationEnabledControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isFurcationEnabledControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isBleedingEnabledSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isBleedingEnabledControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isBleedingEnabledControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isSuppurationEnabledSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isSuppurationEnabledControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isSuppurationEnabledControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isCalculusEnabledSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isCalculusEnabledControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isCalculusEnabledControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void isPlaqueEnabledSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isPlaqueEnabledControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isPlaqueEnabledControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  IncidenceFilter get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return IncidenceFilter(
        isMobilityEnabled: _isMobilityEnabledValue,
        isFurcationEnabled: _isFurcationEnabledValue,
        isBleedingEnabled: _isBleedingEnabledValue,
        isSuppurationEnabled: _isSuppurationEnabledValue,
        isCalculusEnabled: _isCalculusEnabledValue,
        isPlaqueEnabled: _isPlaqueEnabledValue);
  }

  IncidenceFilterForm copyWithPath(String? path) {
    return IncidenceFilterForm(incidenceFilter, form, path);
  }

  @override
  void updateValue(
    IncidenceFilter value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(IncidenceFilterForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    IncidenceFilter? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(IncidenceFilter? incidenceFilter) => FormGroup({
        isMobilityEnabledControlName: FormControl<bool>(
            value: incidenceFilter?.isMobilityEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isFurcationEnabledControlName: FormControl<bool>(
            value: incidenceFilter?.isFurcationEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isBleedingEnabledControlName: FormControl<bool>(
            value: incidenceFilter?.isBleedingEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isSuppurationEnabledControlName: FormControl<bool>(
            value: incidenceFilter?.isSuppurationEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isCalculusEnabledControlName: FormControl<bool>(
            value: incidenceFilter?.isCalculusEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isPlaqueEnabledControlName: FormControl<bool>(
            value: incidenceFilter?.isPlaqueEnabled,
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

class ThresholdSettingForm implements FormModel<ThresholdSetting> {
  ThresholdSettingForm(
    this.thresholdSetting,
    this.form,
    this.path,
  ) {}

  static String isEnabledControlName = "isEnabled";

  static String valueControlName = "value";

  final ThresholdSetting? thresholdSetting;

  final FormGroup form;

  final String? path;

  String isEnabledControlPath() => pathBuilder(isEnabledControlName);
  String valueControlPath() => pathBuilder(valueControlName);
  bool get _isEnabledValue => isEnabledControl.value as bool;
  int get _valueValue => valueControl.value as int;
  bool get containsIsEnabled {
    try {
      form.control(isEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsValue {
    try {
      form.control(valueControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get isEnabledErrors => isEnabledControl.errors;
  Object? get valueErrors => valueControl.errors;
  void get isEnabledFocus => form.focus(isEnabledControlPath());
  void get valueFocus => form.focus(valueControlPath());
  void isEnabledValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isEnabledControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valueValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valueControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isEnabledValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isEnabledControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valueValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valueControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isEnabledControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void valueValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      valueControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<bool> get isEnabledControl =>
      form.control(isEnabledControlPath()) as FormControl<bool>;
  FormControl<int> get valueControl =>
      form.control(valueControlPath()) as FormControl<int>;
  void isEnabledSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isEnabledControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isEnabledControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void valueSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      valueControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      valueControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  ThresholdSetting get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ThresholdSetting(isEnabled: _isEnabledValue, value: _valueValue);
  }

  ThresholdSettingForm copyWithPath(String? path) {
    return ThresholdSettingForm(thresholdSetting, form, path);
  }

  @override
  void updateValue(
    ThresholdSetting value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ThresholdSettingForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    ThresholdSetting? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(ThresholdSetting? thresholdSetting) =>
      FormGroup({
        isEnabledControlName: FormControl<bool>(
            value: thresholdSetting?.isEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        valueControlName: FormControl<int>(
            value: thresholdSetting?.value,
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

class TimerSettingForm implements FormModel<TimerSetting> {
  TimerSettingForm(
    this.timerSetting,
    this.form,
    this.path,
  ) {}

  static String isEnabledControlName = "isEnabled";

  static String valueControlName = "value";

  final TimerSetting? timerSetting;

  final FormGroup form;

  final String? path;

  String isEnabledControlPath() => pathBuilder(isEnabledControlName);
  String valueControlPath() => pathBuilder(valueControlName);
  bool get _isEnabledValue => isEnabledControl.value as bool;
  int get _valueValue => valueControl.value as int;
  bool get containsIsEnabled {
    try {
      form.control(isEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsValue {
    try {
      form.control(valueControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get isEnabledErrors => isEnabledControl.errors;
  Object? get valueErrors => valueControl.errors;
  void get isEnabledFocus => form.focus(isEnabledControlPath());
  void get valueFocus => form.focus(valueControlPath());
  void isEnabledValueUpdate(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isEnabledControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valueValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valueControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isEnabledValuePatch(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    isEnabledControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void valueValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    valueControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void isEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isEnabledControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void valueValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      valueControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<bool> get isEnabledControl =>
      form.control(isEnabledControlPath()) as FormControl<bool>;
  FormControl<int> get valueControl =>
      form.control(valueControlPath()) as FormControl<int>;
  void isEnabledSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      isEnabledControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      isEnabledControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void valueSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      valueControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      valueControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  TimerSetting get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return TimerSetting(isEnabled: _isEnabledValue, value: _valueValue);
  }

  TimerSettingForm copyWithPath(String? path) {
    return TimerSettingForm(timerSetting, form, path);
  }

  @override
  void updateValue(
    TimerSetting value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(TimerSettingForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    TimerSetting? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(TimerSetting? timerSetting) => FormGroup({
        isEnabledControlName: FormControl<bool>(
            value: timerSetting?.isEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        valueControlName: FormControl<int>(
            value: timerSetting?.value,
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

class ReactiveProfileFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveProfileFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ProfileForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, ProfileForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, ProfileForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileForm.of(context);

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

class ReactiveProfileFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveProfileFormFormGroupArrayBuilder({
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
      ProfileForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, ProfileForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, V? item, ProfileForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileForm.of(context);

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
