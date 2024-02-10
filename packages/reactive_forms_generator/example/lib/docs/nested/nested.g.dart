// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubGroupImpl _$$SubGroupImplFromJson(Map<String, dynamic> json) =>
    _$SubGroupImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$SubGroupImplToJson(_$SubGroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
      id: json['id'] as String,
      subGroupList: (json['subGroupList'] as List<dynamic>)
          .map((e) => SubGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'subGroupList': instance.subGroupList,
    };

_$NestedImpl _$$NestedImplFromJson(Map<String, dynamic> json) => _$NestedImpl(
      groupList: (json['groupList'] as List<dynamic>)
          .map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$NestedImplToJson(_$NestedImpl instance) =>
    <String, dynamic>{
      'groupList': instance.groupList,
    };
