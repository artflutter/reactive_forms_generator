// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubGroupO _$SubGroupOFromJson(Map<String, dynamic> json) => _SubGroupO(
      id: json['id'] as String,
    );

Map<String, dynamic> _$SubGroupOToJson(_SubGroupO instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_GroupO _$GroupOFromJson(Map<String, dynamic> json) => _GroupO(
      id: json['id'] as String,
      subGroupList: (json['subGroupList'] as List<dynamic>)
          .map((e) => SubGroupO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GroupOToJson(_GroupO instance) => <String, dynamic>{
      'id': instance.id,
      'subGroupList': instance.subGroupList,
    };

_NestedO _$NestedOFromJson(Map<String, dynamic> json) => _NestedO(
      groupList: (json['groupList'] as List<dynamic>)
          .map((e) => GroupO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NestedOToJson(_NestedO instance) => <String, dynamic>{
      'groupList': instance.groupList,
    };

_SubGroupOOutput _$SubGroupOOutputFromJson(Map<String, dynamic> json) =>
    _SubGroupOOutput(
      id: json['id'] as String,
    );

Map<String, dynamic> _$SubGroupOOutputToJson(_SubGroupOOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_GroupOOutput _$GroupOOutputFromJson(Map<String, dynamic> json) =>
    _GroupOOutput(
      id: json['id'] as String,
      subGroupList: (json['subGroupList'] as List<dynamic>)
          .map((e) => SubGroupOOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GroupOOutputToJson(_GroupOOutput instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subGroupList': instance.subGroupList,
    };

_NestedOOutput _$NestedOOutputFromJson(Map<String, dynamic> json) =>
    _NestedOOutput(
      groupList: (json['groupList'] as List<dynamic>)
          .map((e) => GroupOOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NestedOOutputToJson(_NestedOOutput instance) =>
    <String, dynamic>{
      'groupList': instance.groupList,
    };
