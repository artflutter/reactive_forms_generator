// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Profile _$$_ProfileFromJson(Map<String, dynamic> json) => _$_Profile(
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

Map<String, dynamic> _$$_ProfileToJson(_$_Profile instance) =>
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

_$_ThresholdSetting _$$_ThresholdSettingFromJson(Map<String, dynamic> json) =>
    _$_ThresholdSetting(
      isEnabled: json['isEnabled'] as bool? ?? true,
      value: json['value'] as int? ?? 2,
    );

Map<String, dynamic> _$$_ThresholdSettingToJson(_$_ThresholdSetting instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_$_TimerSetting _$$_TimerSettingFromJson(Map<String, dynamic> json) =>
    _$_TimerSetting(
      isEnabled: json['isEnabled'] as bool? ?? false,
      value: json['value'] as int? ?? 5,
    );

Map<String, dynamic> _$$_TimerSettingToJson(_$_TimerSetting instance) =>
    <String, dynamic>{
      'isEnabled': instance.isEnabled,
      'value': instance.value,
    };

_$_IncidenceFilter _$$_IncidenceFilterFromJson(Map<String, dynamic> json) =>
    _$_IncidenceFilter(
      isMobilityEnabled: json['isMobilityEnabled'] as bool? ?? true,
      isFurcationEnabled: json['isFurcationEnabled'] as bool? ?? true,
      isBleedingEnabled: json['isBleedingEnabled'] as bool? ?? true,
      isSuppurationEnabled: json['isSuppurationEnabled'] as bool? ?? true,
      isCalculusEnabled: json['isCalculusEnabled'] as bool? ?? true,
      isPlaqueEnabled: json['isPlaqueEnabled'] as bool? ?? true,
    );

Map<String, dynamic> _$$_IncidenceFilterToJson(_$_IncidenceFilter instance) =>
    <String, dynamic>{
      'isMobilityEnabled': instance.isMobilityEnabled,
      'isFurcationEnabled': instance.isFurcationEnabled,
      'isBleedingEnabled': instance.isBleedingEnabled,
      'isSuppurationEnabled': instance.isSuppurationEnabled,
      'isCalculusEnabled': instance.isCalculusEnabled,
      'isPlaqueEnabled': instance.isPlaqueEnabled,
    };

_$ArchScanOrder _$$ArchScanOrderFromJson(Map<String, dynamic> json) =>
    _$ArchScanOrder(
      $enumDecode(_$JawEnumMap, json['jaw']),
      direction: $enumDecode(_$DirectionEnumMap, json['direction']),
      toothSide: $enumDecode(_$ToothSideEnumMap, json['toothSide']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ArchScanOrderToJson(_$ArchScanOrder instance) =>
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

_$QuadrantScanOrder _$$QuadrantScanOrderFromJson(Map<String, dynamic> json) =>
    _$QuadrantScanOrder(
      $enumDecode(_$QuadrantEnumMap, json['quadrant']),
      direction: $enumDecode(_$DirectionEnumMap, json['direction']),
      toothSide: $enumDecode(_$ToothSideEnumMap, json['toothSide']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$QuadrantScanOrderToJson(_$QuadrantScanOrder instance) =>
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

_$_ChartingOrderValue _$$_ChartingOrderValueFromJson(
        Map<String, dynamic> json) =>
    _$_ChartingOrderValue(
      chartingOrder: $enumDecodeNullable(
              _$ChartingOrderTypeEnumMap, json['chartingOrder']) ??
          ChartingOrderType.arch,
      selectedOption: json['selectedOption'] as int? ?? 0,
      order: (json['order'] as List<dynamic>)
          .map((e) => (e as List<dynamic>)
              .map((e) => ScanOrder.fromJson(e as Map<String, dynamic>))
              .toList())
          .toList(),
    );

Map<String, dynamic> _$$_ChartingOrderValueToJson(
        _$_ChartingOrderValue instance) =>
    <String, dynamic>{
      'chartingOrder': _$ChartingOrderTypeEnumMap[instance.chartingOrder]!,
      'selectedOption': instance.selectedOption,
      'order': instance.order,
    };

const _$ChartingOrderTypeEnumMap = {
  ChartingOrderType.arch: 'arch',
  ChartingOrderType.quadrant: 'quadrant',
};
