@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'profile';

void main() {
  group('doc', () {
    test(
      'Profile',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/widgets.dart';
            import 'package:freezed_annotation/freezed_annotation.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.freezed.dart';
            part '$fileName.g.dart';
            part '$fileName.gform.dart';
            
            enum NumberingStandard { ada, fdi }
            
            enum MeasurementType { cal, pdGm }
            
            extension MeasurementTypeExt on MeasurementType {
              String get fullText {
                switch (this) {
                  case MeasurementType.cal:
                    return 'Clinical Attachment Level (CAL)';
                  case MeasurementType.pdGm:
                    return 'Pocket Depth (PD) / Gingival Margin (GM)';
                }
              }
            
              String get shortText {
                switch (this) {
                  case MeasurementType.cal:
                    return 'CAL';
                  case MeasurementType.pdGm:
                    return 'PD/GM';
                }
              }
            }
            
            extension NumberingStandardExt on NumberingStandard {
              String get text {
                switch (this) {
                  case NumberingStandard.ada:
                    return 'American Dental Association (ADA)';
                  case NumberingStandard.fdi:
                    return 'Fédération Dentaire Internationale (FDI)';
                }
              }
            }
            
            @freezed
            @Rf()
            class Profile with _\$Profile {
              const Profile._();
            
              factory Profile(String id, {
                required String anotherId,
                @RfControl<String>() required String name,
                @RfControl<ChartingOrderValue>() required ChartingOrderValue chartingOrder,
                @RfControl<NumberingStandard>() required NumberingStandard numberingStandard,
                required IncidenceFilter incidenceFilter,
                @RfControl<MeasurementType>() required MeasurementType measurementType,
                required ThresholdSetting threshold,
                required TimerSetting timer,
                @RfControl<bool>() required bool audioGuidance,
              }) = _Profile;
            
              factory Profile.fromJson(Map<String, dynamic> json) =>
                  _\$ProfileFromJson(json);
            }
            
            @freezed
            @RfGroup()
            class ThresholdSetting with _\$ThresholdSetting {
              static const values = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
            
              const factory ThresholdSetting({
                @RfControl<bool>() @Default(true) bool isEnabled,
                @RfControl<int>() @Default(2) int value,
              }) = _ThresholdSetting;
            
              factory ThresholdSetting.fromJson(Map<String, dynamic> json) =>
                  _\$ThresholdSettingFromJson(json);
            }
            
            @freezed
            @RfGroup()
            class TimerSetting with _\$TimerSetting {
              static const values = [1, 2, 3, 4, 5, 6];
            
              const factory TimerSetting({
                @RfControl<bool>() @Default(false) bool isEnabled,
                @RfControl<int>() @Default(5) int value,
              }) = _TimerSetting;
            
              factory TimerSetting.fromJson(Map<String, dynamic> json) =>
                  _\$TimerSettingFromJson(json);
            }
            
            @RfGroup()
            @freezed
            class IncidenceFilter with _\$IncidenceFilter {
              const factory IncidenceFilter({
                @RfControl<bool>() @Default(true) bool isMobilityEnabled,
                @RfControl<bool>() @Default(true) bool isFurcationEnabled,
                @RfControl<bool>() @Default(true) bool isBleedingEnabled,
                @RfControl<bool>() @Default(true) bool isSuppurationEnabled,
                @RfControl<bool>() @Default(true) bool isCalculusEnabled,
                @RfControl<bool>() @Default(true) bool isPlaqueEnabled,
              }) = _IncidenceFilter;
            
              factory IncidenceFilter.fromJson(Map<String, dynamic> json) =>
                  _\$IncidenceFilterFromJson(json);
            }
            
            enum ChartingOrderType { arch, quadrant }
            enum Direction {
              /// ==>
              rightward,
            
              /// <===
              leftward
            }
            enum ToothSide { facial, lingual }
            
            @freezed
            class ScanOrder with _\$ScanOrder {
              const factory ScanOrder.arch(
                Jaw jaw, {
                required Direction direction,
                required ToothSide toothSide,
              }) = ArchScanOrder;
            
              const factory ScanOrder.quadrant(
                Quadrant quadrant, {
                required Direction direction,
                required ToothSide toothSide,
              }) = QuadrantScanOrder;
            
              factory ScanOrder.fromJson(Map<String, dynamic> json) =>
                  _\$ScanOrderFromJson(json);
            }
            
            @freezed
            class ChartingOrderValue with _\$ChartingOrderValue {
              const factory ChartingOrderValue({
                @Default(ChartingOrderType.arch) ChartingOrderType chartingOrder,
                @Default(0) int selectedOption,
                required List<List<ScanOrder>> order,
              }) = _ChartingOrderValue;
            
              factory ChartingOrderValue.arch() => _create(ChartingOrderType.arch);
            
              factory ChartingOrderValue.quadrant() => _create(ChartingOrderType.quadrant);
            
              static ChartingOrderValue _create(ChartingOrderType chartingOrder) =>
                  ChartingOrderValue(
                    chartingOrder: chartingOrder,
                    selectedOption: 0,
                    order: ChartingOrders.options[chartingOrder]!,
                  );
            
              factory ChartingOrderValue.fromJson(Map<String, dynamic> json) =>
                  _\$ChartingOrderValueFromJson(json);
            }
            
            enum Jaw {
              /// Upper jaw
              maxilla,
            
              /// Lower jaw
              mandible
            }
            
            enum Quadrant { upperLeft, upperRight, lowerRight, lowerLeft }
            
            class ChartingOrders {
              ChartingOrders._();
            
              static const Map<ChartingOrderType, List<List<ScanOrder>>> options = {
                ChartingOrderType.arch: [_arch01, _arch02, _arch03, _arch04],
                ChartingOrderType.quadrant: [_quadrant01, _quadrant02],
              };
            
              static const _arch01 = [
                /*1*/ ArchScanOrder(Jaw.maxilla,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*2*/ ArchScanOrder(Jaw.maxilla,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
                /*3*/ ArchScanOrder(Jaw.mandible,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*4*/ ArchScanOrder(Jaw.mandible,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
              ];
            
              static const _arch02 = [
                /*1*/ ArchScanOrder(Jaw.mandible,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*2*/ ArchScanOrder(Jaw.mandible,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
                /*3*/ ArchScanOrder(Jaw.maxilla,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*4*/ ArchScanOrder(Jaw.maxilla,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
              ];
            
              static const _arch03 = [
                /*1*/ ArchScanOrder(Jaw.maxilla,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*2*/ ArchScanOrder(Jaw.mandible,
                    direction: Direction.leftward, toothSide: ToothSide.facial),
                /*3*/ ArchScanOrder(Jaw.maxilla,
                    direction: Direction.rightward, toothSide: ToothSide.lingual),
                /*4*/ ArchScanOrder(Jaw.mandible,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
              ];
            
              static const _arch04 = [
                /*1*/ ArchScanOrder(Jaw.maxilla,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*2*/ ArchScanOrder(Jaw.maxilla,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
                /*3*/ ArchScanOrder(Jaw.mandible,
                    direction: Direction.rightward, toothSide: ToothSide.lingual),
                /*4*/ ArchScanOrder(Jaw.mandible,
                    direction: Direction.leftward, toothSide: ToothSide.facial),
              ];
            
              static const _quadrant01 = [
                /*1*/ QuadrantScanOrder(Quadrant.upperLeft,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*2*/ QuadrantScanOrder(Quadrant.upperLeft,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
                /*3*/ QuadrantScanOrder(Quadrant.upperRight,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*4*/ QuadrantScanOrder(Quadrant.upperRight,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
                /*5*/ QuadrantScanOrder(Quadrant.lowerLeft,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*6*/ QuadrantScanOrder(Quadrant.lowerLeft,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
                /*7*/ QuadrantScanOrder(Quadrant.lowerRight,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*8*/ QuadrantScanOrder(Quadrant.lowerRight,
                    direction: Direction.leftward, toothSide: ToothSide.lingual),
              ];
            
              static const _quadrant02 = [
                /*1*/ QuadrantScanOrder(Quadrant.upperLeft,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*2*/ QuadrantScanOrder(Quadrant.upperLeft,
                    direction: Direction.rightward, toothSide: ToothSide.lingual),
                /*3*/ QuadrantScanOrder(Quadrant.upperRight,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*4*/ QuadrantScanOrder(Quadrant.upperRight,
                    direction: Direction.rightward, toothSide: ToothSide.lingual),
                /*5*/ QuadrantScanOrder(Quadrant.lowerLeft,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*6*/ QuadrantScanOrder(Quadrant.lowerRight,
                    direction: Direction.rightward, toothSide: ToothSide.lingual),
                /*7*/ QuadrantScanOrder(Quadrant.lowerRight,
                    direction: Direction.rightward, toothSide: ToothSide.facial),
                /*8*/ QuadrantScanOrder(Quadrant.lowerLeft,
                    direction: Direction.rightward, toothSide: ToothSide.lingual),
              ];
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
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final ProfileForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

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
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveProfileFormExt on BuildContext {
  ProfileForm? profileFormWatch() => ReactiveProfileForm.of(this);

  ProfileForm? profileFormRead() => ReactiveProfileForm.of(this, listen: false);
}

class ProfileFormBuilder extends StatefulWidget {
  const ProfileFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Profile? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

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
    _formModel = ProfileForm(ProfileForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProfileFormBuilder oldWidget) {
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
    return ReactiveProfileForm(
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

/// Similar to the ProfileFormBuilder but opts out of automatic form lifecycle
/// management.
///
/// See `ProfileFormBuilder.initState` and `ProfileFormBuilder.dispose` for examples
/// of initializing/disposing the formModel.
class ProfileFormModelBuilder extends StatefulWidget {
  const ProfileFormModelBuilder({
    Key? key,
    required this.formModel,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ProfileForm formModel;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, ProfileForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ProfileForm formModel)? initState;

  @override
  _ProfileFormModelBuilderState createState() =>
      _ProfileFormModelBuilderState();
}

class _ProfileFormModelBuilderState extends State<ProfileFormModelBuilder> {
  late ProfileForm _formModel;

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
  void didUpdateWidget(covariant ProfileFormModelBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.formModel != oldWidget.formModel) {
      _formModel = widget.formModel;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveProfileForm(
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

class ProfileForm implements FormModel<Profile> {
  ProfileForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String anotherIdControlName = "anotherId";

  static const String nameControlName = "name";

  static const String chartingOrderControlName = "chartingOrder";

  static const String numberingStandardControlName = "numberingStandard";

  static const String incidenceFilterControlName = "incidenceFilter";

  static const String measurementTypeControlName = "measurementType";

  static const String thresholdControlName = "threshold";

  static const String timerControlName = "timer";

  static const String audioGuidanceControlName = "audioGuidance";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String anotherIdControlPath() => pathBuilder(anotherIdControlName);

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

  String get _idValue => idControl.value as String;

  String get _anotherIdValue => anotherIdControl.value as String;

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

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsAnotherId {
    try {
      form.control(anotherIdControlPath());
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

  Map<String, Object> get idErrors => idControl.errors;

  Map<String, Object> get anotherIdErrors => anotherIdControl.errors;

  Map<String, Object> get nameErrors => nameControl.errors;

  Map<String, Object> get chartingOrderErrors => chartingOrderControl.errors;

  Map<String, Object> get numberingStandardErrors =>
      numberingStandardControl.errors;

  Map<String, Object> get measurementTypeErrors =>
      measurementTypeControl.errors;

  Map<String, Object> get audioGuidanceErrors => audioGuidanceControl.errors;

  Map<String, Object> get incidenceFilterErrors =>
      incidenceFilterControl.errors;

  Map<String, Object> get thresholdErrors => thresholdControl.errors;

  Map<String, Object> get timerErrors => timerControl.errors;

  void get idFocus => form.focus(idControlPath());

  void get anotherIdFocus => form.focus(anotherIdControlPath());

  void get nameFocus => form.focus(nameControlPath());

  void get chartingOrderFocus => form.focus(chartingOrderControlPath());

  void get numberingStandardFocus => form.focus(numberingStandardControlPath());

  void get measurementTypeFocus => form.focus(measurementTypeControlPath());

  void get audioGuidanceFocus => form.focus(audioGuidanceControlPath());

  void get incidenceFilterFocus => form.focus(incidenceFilterControlPath());

  void get thresholdFocus => form.focus(thresholdControlPath());

  void get timerFocus => form.focus(timerControlPath());

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void anotherIdValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    anotherIdControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

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

  void idValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void anotherIdValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    anotherIdControl.patchValue(value,
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

  void idValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void anotherIdValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      anotherIdControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

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

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormControl<String> get anotherIdControl =>
      form.control(anotherIdControlPath()) as FormControl<String>;

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

  IncidenceFilterForm get incidenceFilterForm =>
      IncidenceFilterForm(form, pathBuilder('incidenceFilter'));

  ThresholdSettingForm get thresholdForm =>
      ThresholdSettingForm(form, pathBuilder('threshold'));

  TimerSettingForm get timerForm =>
      TimerSettingForm(form, pathBuilder('timer'));

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

  void anotherIdSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      anotherIdControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      anotherIdControl.markAsEnabled(
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
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'ProfileForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Profile(_idValue,
        anotherId: _anotherIdValue,
        name: _nameValue,
        chartingOrder: _chartingOrderValue,
        numberingStandard: _numberingStandardValue,
        incidenceFilter: _incidenceFilterValue,
        measurementType: _measurementTypeValue,
        threshold: _thresholdValue,
        timer: _timerValue,
        audioGuidance: _audioGuidanceValue);
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

      incidenceFilterForm.toggleDisabled();
      thresholdForm.toggleDisabled();
      timerForm.toggleDisabled();
      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      incidenceFilterForm.toggleDisabled();
      thresholdForm.toggleDisabled();
      timerForm.toggleDisabled();
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
    required void Function(Profile model) onValid,
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
    Profile? value, {
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

  static FormGroup formElements(Profile? profile) => FormGroup({
        idControlName: FormControl<String>(
            value: profile?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        anotherIdControlName: FormControl<String>(
            value: profile?.anotherId,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: profile?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        chartingOrderControlName: FormControl<ChartingOrderValue>(
            value: profile?.chartingOrder,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        numberingStandardControlName: FormControl<NumberingStandard>(
            value: profile?.numberingStandard,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        measurementTypeControlName: FormControl<MeasurementType>(
            value: profile?.measurementType,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        audioGuidanceControlName: FormControl<bool>(
            value: profile?.audioGuidance,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        incidenceFilterControlName:
            IncidenceFilterForm.formElements(profile?.incidenceFilter),
        thresholdControlName:
            ThresholdSettingForm.formElements(profile?.threshold),
        timerControlName: TimerSettingForm.formElements(profile?.timer)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class IncidenceFilterForm implements FormModel<IncidenceFilter> {
  IncidenceFilterForm(
    this.form,
    this.path,
  );

  static const String isMobilityEnabledControlName = "isMobilityEnabled";

  static const String isFurcationEnabledControlName = "isFurcationEnabled";

  static const String isBleedingEnabledControlName = "isBleedingEnabled";

  static const String isSuppurationEnabledControlName = "isSuppurationEnabled";

  static const String isCalculusEnabledControlName = "isCalculusEnabled";

  static const String isPlaqueEnabledControlName = "isPlaqueEnabled";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

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

  Map<String, Object> get isMobilityEnabledErrors =>
      isMobilityEnabledControl.errors;

  Map<String, Object> get isFurcationEnabledErrors =>
      isFurcationEnabledControl.errors;

  Map<String, Object> get isBleedingEnabledErrors =>
      isBleedingEnabledControl.errors;

  Map<String, Object> get isSuppurationEnabledErrors =>
      isSuppurationEnabledControl.errors;

  Map<String, Object> get isCalculusEnabledErrors =>
      isCalculusEnabledControl.errors;

  Map<String, Object> get isPlaqueEnabledErrors =>
      isPlaqueEnabledControl.errors;

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
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'IncidenceFilterForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return IncidenceFilter(
        isMobilityEnabled: _isMobilityEnabledValue,
        isFurcationEnabled: _isFurcationEnabledValue,
        isBleedingEnabled: _isBleedingEnabledValue,
        isSuppurationEnabled: _isSuppurationEnabledValue,
        isCalculusEnabled: _isCalculusEnabledValue,
        isPlaqueEnabled: _isPlaqueEnabledValue);
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
    required void Function(IncidenceFilter model) onValid,
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
    IncidenceFilter? value, {
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
    this.form,
    this.path,
  );

  static const String isEnabledControlName = "isEnabled";

  static const String valueControlName = "value";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

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

  Map<String, Object> get isEnabledErrors => isEnabledControl.errors;

  Map<String, Object> get valueErrors => valueControl.errors;

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
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'ThresholdSettingForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ThresholdSetting(isEnabled: _isEnabledValue, value: _valueValue);
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
    required void Function(ThresholdSetting model) onValid,
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
    ThresholdSetting? value, {
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
    this.form,
    this.path,
  );

  static const String isEnabledControlName = "isEnabled";

  static const String valueControlName = "value";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

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

  Map<String, Object> get isEnabledErrors => isEnabledControl.errors;

  Map<String, Object> get valueErrors => valueControl.errors;

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
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'TimerSettingForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return TimerSetting(isEnabled: _isEnabledValue, value: _valueValue);
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
    required void Function(TimerSetting model) onValid,
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
    TimerSetting? value, {
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

class ReactiveProfileFormArrayBuilder<ReactiveProfileFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveProfileFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveProfileFormArrayBuilderT>? formControl;

  final FormArray<ReactiveProfileFormArrayBuilderT>? Function(
      ProfileForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, ProfileForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveProfileFormArrayBuilderT? item,
      ProfileForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveProfileFormArrayBuilderT>(
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

class ReactiveProfileFormFormGroupArrayBuilder<
    ReactiveProfileFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveProfileFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveProfileFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveProfileFormFormGroupArrayBuilderT>>
      Function(ProfileForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, ProfileForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveProfileFormFormGroupArrayBuilderT? item,
      ProfileForm formModel) itemBuilder;

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
        final itemList =
            (value.value() ?? <ReactiveProfileFormFormGroupArrayBuilderT>[])
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
