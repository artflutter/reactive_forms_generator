// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'profile.freezed.dart';
part 'profile.g.dart';
part 'profile.gform.dart';

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
@ReactiveFormAnnotation()
class Profile with _$Profile {
  const Profile._();

  factory Profile(
    String id, {
    required String anotherId,
    @FormControlAnnotation<String>() required String name,
    @FormControlAnnotation<ChartingOrderValue>()
        required ChartingOrderValue chartingOrder,
    @FormControlAnnotation<NumberingStandard>()
        required NumberingStandard numberingStandard,
    required IncidenceFilter incidenceFilter,
    @FormControlAnnotation<MeasurementType>()
        required MeasurementType measurementType,
    required ThresholdSetting threshold,
    required TimerSetting timer,
    @FormControlAnnotation<bool>() required bool audioGuidance,
  }) = _Profile;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
}

@freezed
@FormGroupAnnotation()
class ThresholdSetting with _$ThresholdSetting {
  static const values = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  const factory ThresholdSetting({
    @FormControlAnnotation<bool>() @Default(true) bool isEnabled,
    @FormControlAnnotation<int>() @Default(2) int value,
  }) = _ThresholdSetting;

  factory ThresholdSetting.fromJson(Map<String, dynamic> json) =>
      _$ThresholdSettingFromJson(json);
}

@freezed
@FormGroupAnnotation()
class TimerSetting with _$TimerSetting {
  static const values = [1, 2, 3, 4, 5, 6];

  const factory TimerSetting({
    @FormControlAnnotation<bool>() @Default(false) bool isEnabled,
    @FormControlAnnotation<int>() @Default(5) int value,
  }) = _TimerSetting;

  factory TimerSetting.fromJson(Map<String, dynamic> json) =>
      _$TimerSettingFromJson(json);
}

@FormGroupAnnotation()
@freezed
class IncidenceFilter with _$IncidenceFilter {
  const factory IncidenceFilter({
    @FormControlAnnotation<bool>() @Default(true) bool isMobilityEnabled,
    @FormControlAnnotation<bool>() @Default(true) bool isFurcationEnabled,
    @FormControlAnnotation<bool>() @Default(true) bool isBleedingEnabled,
    @FormControlAnnotation<bool>() @Default(true) bool isSuppurationEnabled,
    @FormControlAnnotation<bool>() @Default(true) bool isCalculusEnabled,
    @FormControlAnnotation<bool>() @Default(true) bool isPlaqueEnabled,
  }) = _IncidenceFilter;

  factory IncidenceFilter.fromJson(Map<String, dynamic> json) =>
      _$IncidenceFilterFromJson(json);
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
class ScanOrder with _$ScanOrder {
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
      _$ScanOrderFromJson(json);
}

@freezed
class ChartingOrderValue with _$ChartingOrderValue {
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
      _$ChartingOrderValueFromJson(json);
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
