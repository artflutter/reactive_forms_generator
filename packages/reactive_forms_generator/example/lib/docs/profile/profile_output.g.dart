// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileO _$ProfileOFromJson(Map<String, dynamic> json) => _ProfileO(
      json['id'] as String,
      anotherId: json['anotherId'] as String,
      name: json['name'] as String,
      chartingOrder: ChartingOrderValue.fromJson(
          json['chartingOrder'] as Map<String, dynamic>),
      numberingStandard:
          $enumDecode(_$NumberingStandardEnumMap, json['numberingStandard']),
      incidenceFilter: IncidenceFilterO.fromJson(
          json['incidenceFilter'] as Map<String, dynamic>),
      measurementType:
          $enumDecode(_$MeasurementTypeEnumMap, json['measurementType']),
      threshold:
          ThresholdSettingO.fromJson(json['threshold'] as Map<String, dynamic>),
      timer: TimerSettingO.fromJson(json['timer'] as Map<String, dynamic>),
      audioGuidance: json['audioGuidance'] as bool,
    );

Map<String, dynamic> _$ProfileOToJson(_ProfileO instance) => <String, dynamic>{
      'id': instance.id,
      'anotherId': instance.anotherId,
      'name': instance.name,
      'chartingOrder': instance.chartingOrder,
      'numberingStandard':
          _$NumberingStandardEnumMap[instance.numberingStandard]!,
      'incidenceFilter': instance.incidenceFilter,
      'measurementType': _$MeasurementTypeEnumMap[instance.measurementType]!,
      'threshold': instance.threshold,
      'timer': instance.timer,
      'audioGuidance': instance.audioGuidance,
    };

const _$NumberingStandardEnumMap = {
  NumberingStandard.ada: 'ada',
  NumberingStandard.fdi: 'fdi',
};

const _$MeasurementTypeEnumMap = {
  MeasurementType.cal: 'cal',
  MeasurementType.pdGm: 'pdGm',
};

_ThresholdSettingO _$ThresholdSettingOFromJson(Map<String, dynamic> json) =>
    _ThresholdSettingO(
      isEnabled: json['isEnabled'] as bool? ?? true,
      value: (json['value'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$ThresholdSettingOToJson(_ThresholdSettingO instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_TimerSettingO _$TimerSettingOFromJson(Map<String, dynamic> json) =>
    _TimerSettingO(
      isEnabled: json['isEnabled'] as bool? ?? false,
      value: (json['value'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$TimerSettingOToJson(_TimerSettingO instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_IncidenceFilterO _$IncidenceFilterOFromJson(Map<String, dynamic> json) =>
    _IncidenceFilterO(
      isMobilityEnabled: json['isMobilityEnabled'] as bool? ?? true,
      isFurcationEnabled: json['isFurcationEnabled'] as bool? ?? true,
      isBleedingEnabled: json['isBleedingEnabled'] as bool? ?? true,
      isSuppurationEnabled: json['isSuppurationEnabled'] as bool? ?? true,
      isCalculusEnabled: json['isCalculusEnabled'] as bool? ?? true,
      isPlaqueEnabled: json['isPlaqueEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$IncidenceFilterOToJson(_IncidenceFilterO instance) =>
    <String, dynamic>{
      'isMobilityEnabled': instance.isMobilityEnabled,
      'isFurcationEnabled': instance.isFurcationEnabled,
      'isBleedingEnabled': instance.isBleedingEnabled,
      'isSuppurationEnabled': instance.isSuppurationEnabled,
      'isCalculusEnabled': instance.isCalculusEnabled,
      'isPlaqueEnabled': instance.isPlaqueEnabled,
    };

ArchScanOrder _$ArchScanOrderFromJson(Map<String, dynamic> json) =>
    ArchScanOrder(
      $enumDecode(_$JawEnumMap, json['jaw']),
      direction: $enumDecode(_$DirectionEnumMap, json['direction']),
      toothSide: $enumDecode(_$ToothSideEnumMap, json['toothSide']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ArchScanOrderToJson(ArchScanOrder instance) =>
    <String, dynamic>{
      'jaw': _$JawEnumMap[instance.jaw]!,
      'direction': _$DirectionEnumMap[instance.direction]!,
      'toothSide': _$ToothSideEnumMap[instance.toothSide]!,
      'runtimeType': instance.$type,
    };

const _$JawEnumMap = {
  Jaw.maxilla: 'maxilla',
  Jaw.mandible: 'mandible',
};

const _$DirectionEnumMap = {
  Direction.rightward: 'rightward',
  Direction.leftward: 'leftward',
};

const _$ToothSideEnumMap = {
  ToothSide.facial: 'facial',
  ToothSide.lingual: 'lingual',
};

QuadrantScanOrder _$QuadrantScanOrderFromJson(Map<String, dynamic> json) =>
    QuadrantScanOrder(
      $enumDecode(_$QuadrantEnumMap, json['quadrant']),
      direction: $enumDecode(_$DirectionEnumMap, json['direction']),
      toothSide: $enumDecode(_$ToothSideEnumMap, json['toothSide']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$QuadrantScanOrderToJson(QuadrantScanOrder instance) =>
    <String, dynamic>{
      'quadrant': _$QuadrantEnumMap[instance.quadrant]!,
      'direction': _$DirectionEnumMap[instance.direction]!,
      'toothSide': _$ToothSideEnumMap[instance.toothSide]!,
      'runtimeType': instance.$type,
    };

const _$QuadrantEnumMap = {
  Quadrant.upperLeft: 'upperLeft',
  Quadrant.upperRight: 'upperRight',
  Quadrant.lowerRight: 'lowerRight',
  Quadrant.lowerLeft: 'lowerLeft',
};

_ChartingOrderValue _$ChartingOrderValueFromJson(Map<String, dynamic> json) =>
    _ChartingOrderValue(
      chartingOrder: $enumDecodeNullable(
              _$ChartingOrderTypeEnumMap, json['chartingOrder']) ??
          ChartingOrderType.arch,
      selectedOption: (json['selectedOption'] as num?)?.toInt() ?? 0,
      order: (json['order'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => ScanOrder.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$ChartingOrderValueToJson(_ChartingOrderValue instance) =>
    <String, dynamic>{
      'chartingOrder': _$ChartingOrderTypeEnumMap[instance.chartingOrder]!,
      'selectedOption': instance.selectedOption,
      'order': instance.order,
    };

const _$ChartingOrderTypeEnumMap = {
  ChartingOrderType.arch: 'arch',
  ChartingOrderType.quadrant: 'quadrant',
};

_ProfileOOutput _$ProfileOOutputFromJson(Map<String, dynamic> json) =>
    _ProfileOOutput(
      json['id'] as String,
      anotherId: json['anotherId'] as String,
      name: json['name'] as String,
      chartingOrder: ChartingOrderValue.fromJson(
          json['chartingOrder'] as Map<String, dynamic>),
      numberingStandard:
          $enumDecode(_$NumberingStandardEnumMap, json['numberingStandard']),
      incidenceFilter: IncidenceFilterOOutput.fromJson(
          json['incidenceFilter'] as Map<String, dynamic>),
      measurementType:
          $enumDecode(_$MeasurementTypeEnumMap, json['measurementType']),
      threshold: ThresholdSettingOOutput.fromJson(
          json['threshold'] as Map<String, dynamic>),
      timer:
          TimerSettingOOutput.fromJson(json['timer'] as Map<String, dynamic>),
      audioGuidance: json['audioGuidance'] as bool,
    );

Map<String, dynamic> _$ProfileOOutputToJson(_ProfileOOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'anotherId': instance.anotherId,
      'name': instance.name,
      'chartingOrder': instance.chartingOrder,
      'numberingStandard':
          _$NumberingStandardEnumMap[instance.numberingStandard]!,
      'incidenceFilter': instance.incidenceFilter,
      'measurementType': _$MeasurementTypeEnumMap[instance.measurementType]!,
      'threshold': instance.threshold,
      'timer': instance.timer,
      'audioGuidance': instance.audioGuidance,
    };

_ThresholdSettingOOutput _$ThresholdSettingOOutputFromJson(
        Map<String, dynamic> json) =>
    _ThresholdSettingOOutput(
      isEnabled: json['isEnabled'] as bool? ?? true,
      value: (json['value'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$ThresholdSettingOOutputToJson(
        _ThresholdSettingOOutput instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_TimerSettingOOutput _$TimerSettingOOutputFromJson(Map<String, dynamic> json) =>
    _TimerSettingOOutput(
      isEnabled: json['isEnabled'] as bool? ?? false,
      value: (json['value'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$TimerSettingOOutputToJson(
        _TimerSettingOOutput instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_IncidenceFilterOOutput _$IncidenceFilterOOutputFromJson(
        Map<String, dynamic> json) =>
    _IncidenceFilterOOutput(
      isMobilityEnabled: json['isMobilityEnabled'] as bool? ?? true,
      isFurcationEnabled: json['isFurcationEnabled'] as bool? ?? true,
      isBleedingEnabled: json['isBleedingEnabled'] as bool? ?? true,
      isSuppurationEnabled: json['isSuppurationEnabled'] as bool? ?? true,
      isCalculusEnabled: json['isCalculusEnabled'] as bool? ?? true,
      isPlaqueEnabled: json['isPlaqueEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$IncidenceFilterOOutputToJson(
        _IncidenceFilterOOutput instance) =>
    <String, dynamic>{
      'isMobilityEnabled': instance.isMobilityEnabled,
      'isFurcationEnabled': instance.isFurcationEnabled,
      'isBleedingEnabled': instance.isBleedingEnabled,
      'isSuppurationEnabled': instance.isSuppurationEnabled,
      'isCalculusEnabled': instance.isCalculusEnabled,
      'isPlaqueEnabled': instance.isPlaqueEnabled,
    };
