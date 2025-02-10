// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileOImpl _$$ProfileOImplFromJson(Map<String, dynamic> json) =>
    _$ProfileOImpl(
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

Map<String, dynamic> _$$ProfileOImplToJson(_$ProfileOImpl instance) =>
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

const _$NumberingStandardEnumMap = {
  NumberingStandard.ada: 'ada',
  NumberingStandard.fdi: 'fdi',
};

const _$MeasurementTypeEnumMap = {
  MeasurementType.cal: 'cal',
  MeasurementType.pdGm: 'pdGm',
};

_$ThresholdSettingOImpl _$$ThresholdSettingOImplFromJson(
        Map<String, dynamic> json) =>
    _$ThresholdSettingOImpl(
      isEnabled: json['isEnabled'] as bool? ?? true,
      value: (json['value'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$ThresholdSettingOImplToJson(
        _$ThresholdSettingOImpl instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_$TimerSettingOImpl _$$TimerSettingOImplFromJson(Map<String, dynamic> json) =>
    _$TimerSettingOImpl(
      isEnabled: json['isEnabled'] as bool? ?? false,
      value: (json['value'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$$TimerSettingOImplToJson(_$TimerSettingOImpl instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_$IncidenceFilterOImpl _$$IncidenceFilterOImplFromJson(
        Map<String, dynamic> json) =>
    _$IncidenceFilterOImpl(
      isMobilityEnabled: json['isMobilityEnabled'] as bool? ?? true,
      isFurcationEnabled: json['isFurcationEnabled'] as bool? ?? true,
      isBleedingEnabled: json['isBleedingEnabled'] as bool? ?? true,
      isSuppurationEnabled: json['isSuppurationEnabled'] as bool? ?? true,
      isCalculusEnabled: json['isCalculusEnabled'] as bool? ?? true,
      isPlaqueEnabled: json['isPlaqueEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$IncidenceFilterOImplToJson(
        _$IncidenceFilterOImpl instance) =>
    <String, dynamic>{
      'isMobilityEnabled': instance.isMobilityEnabled,
      'isFurcationEnabled': instance.isFurcationEnabled,
      'isBleedingEnabled': instance.isBleedingEnabled,
      'isSuppurationEnabled': instance.isSuppurationEnabled,
      'isCalculusEnabled': instance.isCalculusEnabled,
      'isPlaqueEnabled': instance.isPlaqueEnabled,
    };

_$ArchScanOrderImpl _$$ArchScanOrderImplFromJson(Map<String, dynamic> json) =>
    _$ArchScanOrderImpl(
      $enumDecode(_$JawEnumMap, json['jaw']),
      direction: $enumDecode(_$DirectionEnumMap, json['direction']),
      toothSide: $enumDecode(_$ToothSideEnumMap, json['toothSide']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ArchScanOrderImplToJson(_$ArchScanOrderImpl instance) =>
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

_$QuadrantScanOrderImpl _$$QuadrantScanOrderImplFromJson(
        Map<String, dynamic> json) =>
    _$QuadrantScanOrderImpl(
      $enumDecode(_$QuadrantEnumMap, json['quadrant']),
      direction: $enumDecode(_$DirectionEnumMap, json['direction']),
      toothSide: $enumDecode(_$ToothSideEnumMap, json['toothSide']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$QuadrantScanOrderImplToJson(
        _$QuadrantScanOrderImpl instance) =>
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

_$ChartingOrderValueImpl _$$ChartingOrderValueImplFromJson(
        Map<String, dynamic> json) =>
    _$ChartingOrderValueImpl(
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

Map<String, dynamic> _$$ChartingOrderValueImplToJson(
        _$ChartingOrderValueImpl instance) =>
    <String, dynamic>{
      'chartingOrder': _$ChartingOrderTypeEnumMap[instance.chartingOrder]!,
      'selectedOption': instance.selectedOption,
      'order': instance.order,
    };

const _$ChartingOrderTypeEnumMap = {
  ChartingOrderType.arch: 'arch',
  ChartingOrderType.quadrant: 'quadrant',
};

_$ProfileOOutputImpl _$$ProfileOOutputImplFromJson(Map<String, dynamic> json) =>
    _$ProfileOOutputImpl(
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

Map<String, dynamic> _$$ProfileOOutputImplToJson(
        _$ProfileOOutputImpl instance) =>
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

_$ThresholdSettingOOutputImpl _$$ThresholdSettingOOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$ThresholdSettingOOutputImpl(
      isEnabled: json['isEnabled'] as bool? ?? true,
      value: (json['value'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$ThresholdSettingOOutputImplToJson(
        _$ThresholdSettingOOutputImpl instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_$TimerSettingOOutputImpl _$$TimerSettingOOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$TimerSettingOOutputImpl(
      isEnabled: json['isEnabled'] as bool? ?? false,
      value: (json['value'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$$TimerSettingOOutputImplToJson(
        _$TimerSettingOOutputImpl instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_$IncidenceFilterOOutputImpl _$$IncidenceFilterOOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$IncidenceFilterOOutputImpl(
      isMobilityEnabled: json['isMobilityEnabled'] as bool? ?? true,
      isFurcationEnabled: json['isFurcationEnabled'] as bool? ?? true,
      isBleedingEnabled: json['isBleedingEnabled'] as bool? ?? true,
      isSuppurationEnabled: json['isSuppurationEnabled'] as bool? ?? true,
      isCalculusEnabled: json['isCalculusEnabled'] as bool? ?? true,
      isPlaqueEnabled: json['isPlaqueEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$IncidenceFilterOOutputImplToJson(
        _$IncidenceFilterOOutputImpl instance) =>
    <String, dynamic>{
      'isMobilityEnabled': instance.isMobilityEnabled,
      'isFurcationEnabled': instance.isFurcationEnabled,
      'isBleedingEnabled': instance.isBleedingEnabled,
      'isSuppurationEnabled': instance.isSuppurationEnabled,
      'isCalculusEnabled': instance.isCalculusEnabled,
      'isPlaqueEnabled': instance.isPlaqueEnabled,
    };
