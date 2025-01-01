// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubGroupOImpl _$$SubGroupOImplFromJson(Map<String, dynamic> json) =>
    _$SubGroupOImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$SubGroupOImplToJson(_$SubGroupOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$GroupOImpl _$$GroupOImplFromJson(Map<String, dynamic> json) => _$GroupOImpl(
      id: json['id'] as String,
      subGroupList: (json['subGroupList'] as List<dynamic>)
          .map((e) => SubGroupO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupOImplToJson(_$GroupOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subGroupList': instance.subGroupList,
    };

_$NestedOImpl _$$NestedOImplFromJson(Map<String, dynamic> json) =>
    _$NestedOImpl(
      groupList: (json['groupList'] as List<dynamic>)
          .map((e) => GroupO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NestedOImplToJson(_$NestedOImpl instance) =>
    <String, dynamic>{
      'groupList': instance.groupList,
    };

_$SubGroupOOutputImpl _$$SubGroupOOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$SubGroupOOutputImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$SubGroupOOutputImplToJson(
        _$SubGroupOOutputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$GroupOOutputImpl _$$GroupOOutputImplFromJson(Map<String, dynamic> json) =>
    _$GroupOOutputImpl(
      id: json['id'] as String,
      subGroupList: (json['subGroupList'] as List<dynamic>)
          .map((e) => SubGroupOOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupOOutputImplToJson(_$GroupOOutputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subGroupList': instance.subGroupList,
    };

_$NestedOOutputImpl _$$NestedOOutputImplFromJson(Map<String, dynamic> json) =>
    _$NestedOOutputImpl(
      groupList: (json['groupList'] as List<dynamic>)
          .map((e) => GroupOOutput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NestedOOutputImplToJson(_$NestedOOutputImpl instance) =>
    <String, dynamic>{
      'groupList': instance.groupList,
    };
