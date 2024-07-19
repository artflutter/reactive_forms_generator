// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileImpl _$$ProfileImplFromJson(Map<String, dynamic> json) =>
    _$ProfileImpl(
      json['id'] as String,
      anotherId: json['anotherId'] as String,
      name: json['name'] as String,
      chartingOrder: ChartingOrderValue.fromJson(
          json['chartingOrder'] as Map<String, dynamic>),
      numberingStandard:
          $enumDecode(_$NumberingStandardEnumMap, json['numberingStandard']),
      incidenceFilter: IncidenceFilter.fromJson(
          json['incidenceFilter'] as Map<String, dynamic>),
      measurementType:
          $enumDecode(_$MeasurementTypeEnumMap, json['measurementType']),
      threshold:
          ThresholdSetting.fromJson(json['threshold'] as Map<String, dynamic>),
      timer: TimerSetting.fromJson(json['timer'] as Map<String, dynamic>),
      audioGuidance: json['audioGuidance'] as bool,
    );

Map<String, dynamic> _$$ProfileImplToJson(_$ProfileImpl instance) =>
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

_$ThresholdSettingImpl _$$ThresholdSettingImplFromJson(
        Map<String, dynamic> json) =>
    _$ThresholdSettingImpl(
      isEnabled: json['isEnabled'] as bool? ?? true,
      value: (json['value'] as num?)?.toInt() ?? 2,
    );

Map<String, dynamic> _$$ThresholdSettingImplToJson(
        _$ThresholdSettingImpl instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_$TimerSettingImpl _$$TimerSettingImplFromJson(Map<String, dynamic> json) =>
    _$TimerSettingImpl(
      isEnabled: json['isEnabled'] as bool? ?? false,
      value: (json['value'] as num?)?.toInt() ?? 5,
    );

Map<String, dynamic> _$$TimerSettingImplToJson(_$TimerSettingImpl instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_$IncidenceFilterImpl _$$IncidenceFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$IncidenceFilterImpl(
      isMobilityEnabled: json['isMobilityEnabled'] as bool? ?? true,
      isFurcationEnabled: json['isFurcationEnabled'] as bool? ?? true,
      isBleedingEnabled: json['isBleedingEnabled'] as bool? ?? true,
      isSuppurationEnabled: json['isSuppurationEnabled'] as bool? ?? true,
      isCalculusEnabled: json['isCalculusEnabled'] as bool? ?? true,
      isPlaqueEnabled: json['isPlaqueEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$IncidenceFilterImplToJson(
        _$IncidenceFilterImpl instance) =>
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
