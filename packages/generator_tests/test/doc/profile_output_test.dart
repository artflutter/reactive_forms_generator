@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'profile_output';

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
            @Rf(output: true)
            abstract class ProfileO with _\$ProfileO {
              const ProfileO._();
            
              factory ProfileO(
                String id, {
                required String anotherId,
                @RfControl<String>() required String name,
                @RfControl<ChartingOrderValue>() required ChartingOrderValue chartingOrder,
                @RfControl<NumberingStandard>()
                required NumberingStandard numberingStandard,
                required IncidenceFilterO incidenceFilter,
                @RfControl<MeasurementType>() required MeasurementType measurementType,
                required ThresholdSettingO threshold,
                required TimerSettingO timer,
                @RfControl<bool>() required bool audioGuidance,
              }) = _ProfileO;
            
              factory ProfileO.fromJson(Map<String, dynamic> json) =>
                  _\$ProfileOFromJson(json);
            }
            
            @freezed
            @RfGroup()
            abstract class ThresholdSettingO with _\$ThresholdSettingO {
              static const values = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
            
              const factory ThresholdSettingO({
                @RfControl<bool>() @Default(true) bool isEnabled,
                @RfControl<int>() @Default(2) int value,
              }) = _ThresholdSettingO;
            
              factory ThresholdSettingO.fromJson(Map<String, dynamic> json) =>
                  _\$ThresholdSettingOFromJson(json);
            }
            
            @freezed
            @RfGroup()
            abstract class TimerSettingO with _\$TimerSettingO {
              static const values = [1, 2, 3, 4, 5, 6];
            
              const factory TimerSettingO({
                @RfControl<bool>() @Default(false) bool isEnabled,
                @RfControl<int>() @Default(5) int value,
              }) = _TimerSettingO;
            
              factory TimerSettingO.fromJson(Map<String, dynamic> json) =>
                  _\$TimerSettingOFromJson(json);
            }
            
            @RfGroup()
            @freezed
            abstract class IncidenceFilterO with _\$IncidenceFilterO {
              const factory IncidenceFilterO({
                @RfControl<bool>() @Default(true) bool isMobilityEnabled,
                @RfControl<bool>() @Default(true) bool isFurcationEnabled,
                @RfControl<bool>() @Default(true) bool isBleedingEnabled,
                @RfControl<bool>() @Default(true) bool isSuppurationEnabled,
                @RfControl<bool>() @Default(true) bool isCalculusEnabled,
                @RfControl<bool>() @Default(true) bool isPlaqueEnabled,
              }) = _IncidenceFilterO;
            
              factory IncidenceFilterO.fromJson(Map<String, dynamic> json) =>
                  _\$IncidenceFilterOFromJson(json);
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
            abstract class ScanOrder with _\$ScanOrder {
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
            abstract class ChartingOrderValue with _\$ChartingOrderValue {
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
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveProfileOFormConsumer extends StatelessWidget {
  const ReactiveProfileOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ProfileOForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileOForm.of(context);

    if (formModel is! ProfileOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ProfileOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ProfileOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ProfileOForm form;
}

class ReactiveProfileOForm extends StatelessWidget {
  const ReactiveProfileOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final ProfileOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static ProfileOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<ProfileOFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ProfileOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ProfileOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ProfileOFormInheritedStreamer(
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

extension ReactiveReactiveProfileOFormExt on BuildContext {
  ProfileOForm? profileOFormWatch() => ReactiveProfileOForm.of(this);

  ProfileOForm? profileOFormRead() =>
      ReactiveProfileOForm.of(this, listen: false);
}

class ProfileOFormBuilder extends StatefulWidget {
  const ProfileOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ProfileO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, ProfileOForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ProfileOForm formModel)? initState;

  @override
  _ProfileOFormBuilderState createState() => _ProfileOFormBuilderState();
}

class _ProfileOFormBuilderState extends State<ProfileOFormBuilder> {
  late ProfileOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = ProfileOForm(ProfileOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logProfileOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant ProfileOFormBuilder oldWidget) {
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
    return ReactiveProfileOForm(
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

final _logProfileOForm = Logger.detached('ProfileOForm');

class ProfileOForm implements FormModel<ProfileO, ProfileOOutput> {
  ProfileOForm(
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

  IncidenceFilterOOutput get _incidenceFilterValue => incidenceFilterForm.model;

  ThresholdSettingOOutput get _thresholdValue => thresholdForm.model;

  TimerSettingOOutput get _timerValue => timerForm.model;

  String get _idRawValue => idControl.value as String;

  String get _anotherIdRawValue => anotherIdControl.value as String;

  String get _nameRawValue => nameControl.value as String;

  ChartingOrderValue get _chartingOrderRawValue =>
      chartingOrderControl.value as ChartingOrderValue;

  NumberingStandard get _numberingStandardRawValue =>
      numberingStandardControl.value as NumberingStandard;

  MeasurementType get _measurementTypeRawValue =>
      measurementTypeControl.value as MeasurementType;

  bool get _audioGuidanceRawValue => audioGuidanceControl.value as bool;

  IncidenceFilterO get _incidenceFilterRawValue => incidenceFilterForm.rawModel;

  ThresholdSettingO get _thresholdRawValue => thresholdForm.rawModel;

  TimerSettingO get _timerRawValue => timerForm.rawModel;

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
  bool get containsAnotherId {
    try {
      form.control(anotherIdControlPath());
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
  bool get containsChartingOrder {
    try {
      form.control(chartingOrderControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsNumberingStandard {
    try {
      form.control(numberingStandardControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsMeasurementType {
    try {
      form.control(measurementTypeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsAudioGuidance {
    try {
      form.control(audioGuidanceControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsIncidenceFilter {
    try {
      form.control(incidenceFilterControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsThreshold {
    try {
      form.control(thresholdControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
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
    IncidenceFilterO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    incidenceFilterControl.updateValue(
        IncidenceFilterOForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void thresholdValueUpdate(
    ThresholdSettingO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    thresholdControl.updateValue(
        ThresholdSettingOForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void timerValueUpdate(
    TimerSettingO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timerControl.updateValue(TimerSettingOForm.formElements(value).rawValue,
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
    IncidenceFilterO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    incidenceFilterControl.updateValue(
        IncidenceFilterOForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void thresholdValuePatch(
    ThresholdSettingO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    thresholdControl.updateValue(
        ThresholdSettingOForm.formElements(value).rawValue,
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void timerValuePatch(
    TimerSettingO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    timerControl.updateValue(TimerSettingOForm.formElements(value).rawValue,
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

  void anotherIdValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      anotherIdControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

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

  void chartingOrderValueReset(
    ChartingOrderValue value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      chartingOrderControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void numberingStandardValueReset(
    NumberingStandard value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      numberingStandardControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void measurementTypeValueReset(
    MeasurementType value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      measurementTypeControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void audioGuidanceValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      audioGuidanceControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void incidenceFilterValueReset(
    IncidenceFilterO value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      incidenceFilterControl.reset(
          value: IncidenceFilterOForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void thresholdValueReset(
    ThresholdSettingO value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      thresholdControl.reset(
          value: ThresholdSettingOForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  void timerValueReset(
    TimerSettingO value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      timerControl.reset(
          value: TimerSettingOForm.formElements(value).rawValue,
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

  IncidenceFilterOForm get incidenceFilterForm =>
      IncidenceFilterOForm(form, pathBuilder('incidenceFilter'));

  ThresholdSettingOForm get thresholdForm =>
      ThresholdSettingOForm(form, pathBuilder('threshold'));

  TimerSettingOForm get timerForm =>
      TimerSettingOForm(form, pathBuilder('timer'));

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
  @protected
  ProfileOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logProfileOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ProfileOOutput(_idValue,
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
  ProfileO get rawModel {
    return ProfileO(_idRawValue,
        anotherId: _anotherIdRawValue,
        name: _nameRawValue,
        chartingOrder: _chartingOrderRawValue,
        numberingStandard: _numberingStandardRawValue,
        incidenceFilter: _incidenceFilterRawValue,
        measurementType: _measurementTypeRawValue,
        threshold: _thresholdRawValue,
        timer: _timerRawValue,
        audioGuidance: _audioGuidanceRawValue);
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
  bool equalsTo(ProfileO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      ProfileOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ProfileOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logProfileOForm.info('Errors');
      _logProfileOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ProfileO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ProfileOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ProfileO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ProfileO? profileO) => FormGroup({
        idControlName: FormControl<String>(
            value: profileO?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        anotherIdControlName: FormControl<String>(
            value: profileO?.anotherId,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: profileO?.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        chartingOrderControlName: FormControl<ChartingOrderValue>(
            value: profileO?.chartingOrder,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        numberingStandardControlName: FormControl<NumberingStandard>(
            value: profileO?.numberingStandard,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        measurementTypeControlName: FormControl<MeasurementType>(
            value: profileO?.measurementType,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        audioGuidanceControlName: FormControl<bool>(
            value: profileO?.audioGuidance,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        incidenceFilterControlName:
            IncidenceFilterOForm.formElements(profileO?.incidenceFilter),
        thresholdControlName:
            ThresholdSettingOForm.formElements(profileO?.threshold),
        timerControlName: TimerSettingOForm.formElements(profileO?.timer)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

final _logIncidenceFilterOForm = Logger.detached('IncidenceFilterOForm');

class IncidenceFilterOForm
    implements FormModel<IncidenceFilterO, IncidenceFilterOOutput> {
  IncidenceFilterOForm(
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

  bool get _isMobilityEnabledValue => isMobilityEnabledControl.value ?? true;

  bool get _isFurcationEnabledValue => isFurcationEnabledControl.value ?? true;

  bool get _isBleedingEnabledValue => isBleedingEnabledControl.value ?? true;

  bool get _isSuppurationEnabledValue =>
      isSuppurationEnabledControl.value ?? true;

  bool get _isCalculusEnabledValue => isCalculusEnabledControl.value ?? true;

  bool get _isPlaqueEnabledValue => isPlaqueEnabledControl.value ?? true;

  bool get _isMobilityEnabledRawValue => isMobilityEnabledControl.value ?? true;

  bool get _isFurcationEnabledRawValue =>
      isFurcationEnabledControl.value ?? true;

  bool get _isBleedingEnabledRawValue => isBleedingEnabledControl.value ?? true;

  bool get _isSuppurationEnabledRawValue =>
      isSuppurationEnabledControl.value ?? true;

  bool get _isCalculusEnabledRawValue => isCalculusEnabledControl.value ?? true;

  bool get _isPlaqueEnabledRawValue => isPlaqueEnabledControl.value ?? true;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsIsMobilityEnabled {
    try {
      form.control(isMobilityEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsIsFurcationEnabled {
    try {
      form.control(isFurcationEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsIsBleedingEnabled {
    try {
      form.control(isBleedingEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsIsSuppurationEnabled {
    try {
      form.control(isSuppurationEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsIsCalculusEnabled {
    try {
      form.control(isCalculusEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
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
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void isFurcationEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isFurcationEnabledControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void isBleedingEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isBleedingEnabledControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void isSuppurationEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isSuppurationEnabledControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void isCalculusEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isCalculusEnabledControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void isPlaqueEnabledValueReset(
    bool value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      isPlaqueEnabledControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

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
  @protected
  IncidenceFilterOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logIncidenceFilterOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return IncidenceFilterOOutput(
        isMobilityEnabled: _isMobilityEnabledValue,
        isFurcationEnabled: _isFurcationEnabledValue,
        isBleedingEnabled: _isBleedingEnabledValue,
        isSuppurationEnabled: _isSuppurationEnabledValue,
        isCalculusEnabled: _isCalculusEnabledValue,
        isPlaqueEnabled: _isPlaqueEnabledValue);
  }

  @override
  IncidenceFilterO get rawModel {
    return IncidenceFilterO(
        isMobilityEnabled: _isMobilityEnabledRawValue,
        isFurcationEnabled: _isFurcationEnabledRawValue,
        isBleedingEnabled: _isBleedingEnabledRawValue,
        isSuppurationEnabled: _isSuppurationEnabledRawValue,
        isCalculusEnabled: _isCalculusEnabledRawValue,
        isPlaqueEnabled: _isPlaqueEnabledRawValue);
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
  bool equalsTo(IncidenceFilterO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      IncidenceFilterOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(IncidenceFilterOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logIncidenceFilterOForm.info('Errors');
      _logIncidenceFilterOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    IncidenceFilterO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(IncidenceFilterOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    IncidenceFilterO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(IncidenceFilterO? incidenceFilterO) =>
      FormGroup({
        isMobilityEnabledControlName: FormControl<bool>(
            value: incidenceFilterO?.isMobilityEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isFurcationEnabledControlName: FormControl<bool>(
            value: incidenceFilterO?.isFurcationEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isBleedingEnabledControlName: FormControl<bool>(
            value: incidenceFilterO?.isBleedingEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isSuppurationEnabledControlName: FormControl<bool>(
            value: incidenceFilterO?.isSuppurationEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isCalculusEnabledControlName: FormControl<bool>(
            value: incidenceFilterO?.isCalculusEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        isPlaqueEnabledControlName: FormControl<bool>(
            value: incidenceFilterO?.isPlaqueEnabled,
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

final _logThresholdSettingOForm = Logger.detached('ThresholdSettingOForm');

class ThresholdSettingOForm
    implements FormModel<ThresholdSettingO, ThresholdSettingOOutput> {
  ThresholdSettingOForm(
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

  bool get _isEnabledValue => isEnabledControl.value ?? true;

  int get _valueValue => valueControl.value ?? 2;

  bool get _isEnabledRawValue => isEnabledControl.value ?? true;

  int get _valueRawValue => valueControl.value ?? 2;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsIsEnabled {
    try {
      form.control(isEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
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
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void valueValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      valueControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

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
  @protected
  ThresholdSettingOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logThresholdSettingOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ThresholdSettingOOutput(
        isEnabled: _isEnabledValue, value: _valueValue);
  }

  @override
  ThresholdSettingO get rawModel {
    return ThresholdSettingO(
        isEnabled: _isEnabledRawValue, value: _valueRawValue);
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
  bool equalsTo(ThresholdSettingO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      ThresholdSettingOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ThresholdSettingOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logThresholdSettingOForm.info('Errors');
      _logThresholdSettingOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ThresholdSettingO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ThresholdSettingOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ThresholdSettingO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ThresholdSettingO? thresholdSettingO) =>
      FormGroup({
        isEnabledControlName: FormControl<bool>(
            value: thresholdSettingO?.isEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        valueControlName: FormControl<int>(
            value: thresholdSettingO?.value,
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

final _logTimerSettingOForm = Logger.detached('TimerSettingOForm');

class TimerSettingOForm
    implements FormModel<TimerSettingO, TimerSettingOOutput> {
  TimerSettingOForm(
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

  bool get _isEnabledValue => isEnabledControl.value ?? false;

  int get _valueValue => valueControl.value ?? 5;

  bool get _isEnabledRawValue => isEnabledControl.value ?? false;

  int get _valueRawValue => valueControl.value ?? 5;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsIsEnabled {
    try {
      form.control(isEnabledControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
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
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void valueValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      valueControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

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
  @protected
  TimerSettingOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logTimerSettingOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return TimerSettingOOutput(isEnabled: _isEnabledValue, value: _valueValue);
  }

  @override
  TimerSettingO get rawModel {
    return TimerSettingO(isEnabled: _isEnabledRawValue, value: _valueRawValue);
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
  bool equalsTo(TimerSettingO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      TimerSettingOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(TimerSettingOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logTimerSettingOForm.info('Errors');
      _logTimerSettingOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    TimerSettingO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(TimerSettingOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    TimerSettingO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(TimerSettingO? timerSettingO) => FormGroup({
        isEnabledControlName: FormControl<bool>(
            value: timerSettingO?.isEnabled,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        valueControlName: FormControl<int>(
            value: timerSettingO?.value,
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

@freezed
@Rf(output: true)
abstract class ProfileOOutput with _$ProfileOOutput {
  const ProfileOOutput._();
  factory ProfileOOutput(String id,
      {required String anotherId,
      @RfControl<String>() required String name,
      @RfControl<ChartingOrderValue>()
      required ChartingOrderValue chartingOrder,
      @RfControl<NumberingStandard>()
      required NumberingStandard numberingStandard,
      required IncidenceFilterOOutput incidenceFilter,
      @RfControl<MeasurementType>() required MeasurementType measurementType,
      required ThresholdSettingOOutput threshold,
      required TimerSettingOOutput timer,
      @RfControl<bool>() required bool audioGuidance}) = _ProfileOOutput;
  factory ProfileOOutput.fromJson(Map<String, dynamic> json) =>
      _$ProfileOOutputFromJson(json);
}

@freezed
@RfGroup()
abstract class ThresholdSettingOOutput with _$ThresholdSettingOOutput {
  static const values = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  const factory ThresholdSettingOOutput(
      {@RfControl<bool>() @Default(true) bool isEnabled,
      @RfControl<int>() @Default(2) int value}) = _ThresholdSettingOOutput;
  factory ThresholdSettingOOutput.fromJson(Map<String, dynamic> json) =>
      _$ThresholdSettingOOutputFromJson(json);
}

@freezed
@RfGroup()
abstract class TimerSettingOOutput with _$TimerSettingOOutput {
  static const values = [1, 2, 3, 4, 5, 6];
  const factory TimerSettingOOutput(
      {@RfControl<bool>() @Default(false) bool isEnabled,
      @RfControl<int>() @Default(5) int value}) = _TimerSettingOOutput;
  factory TimerSettingOOutput.fromJson(Map<String, dynamic> json) =>
      _$TimerSettingOOutputFromJson(json);
}

@RfGroup()
@freezed
abstract class IncidenceFilterOOutput with _$IncidenceFilterOOutput {
  const factory IncidenceFilterOOutput(
          {@RfControl<bool>() @Default(true) bool isMobilityEnabled,
          @RfControl<bool>() @Default(true) bool isFurcationEnabled,
          @RfControl<bool>() @Default(true) bool isBleedingEnabled,
          @RfControl<bool>() @Default(true) bool isSuppurationEnabled,
          @RfControl<bool>() @Default(true) bool isCalculusEnabled,
          @RfControl<bool>() @Default(true) bool isPlaqueEnabled}) =
      _IncidenceFilterOOutput;
  factory IncidenceFilterOOutput.fromJson(Map<String, dynamic> json) =>
      _$IncidenceFilterOOutputFromJson(json);
}

class ReactiveProfileOFormArrayBuilder<ReactiveProfileOFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveProfileOFormArrayBuilder({
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

  final FormArray<ReactiveProfileOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveProfileOFormArrayBuilderT>? Function(
      ProfileOForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, ProfileOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveProfileOFormArrayBuilderT> control,
      ReactiveProfileOFormArrayBuilderT? item,
      ProfileOForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveProfileOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveProfileOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveProfileOFormArrayBuilderT>,
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
                      as FormControl<ReactiveProfileOFormArrayBuilderT>,
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

class ReactiveProfileOFormArrayBuilder2<ReactiveProfileOFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveProfileOFormArrayBuilder2({
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

  final FormArray<ReactiveProfileOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveProfileOFormArrayBuilderT>? Function(
      ProfileOForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        ProfileOForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveProfileOFormArrayBuilderT> control,
        ReactiveProfileOFormArrayBuilderT? item,
        ProfileOForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveProfileOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveProfileOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveProfileOFormArrayBuilderT>,
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
                      as FormControl<ReactiveProfileOFormArrayBuilderT>,
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

class ReactiveProfileOFormFormGroupArrayBuilder<
    ReactiveProfileOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveProfileOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveProfileOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveProfileOFormFormGroupArrayBuilderT>>
      Function(ProfileOForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, ProfileOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveProfileOFormFormGroupArrayBuilderT? item,
      ProfileOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProfileOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveProfileOFormFormGroupArrayBuilderT>[])
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
