// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SubGroup _$SubGroupFromJson(Map<String, dynamic> json) => _SubGroup(
      id: json['id'] as String,
    );

Map<String, dynamic> _$SubGroupToJson(_SubGroup instance) => <String, dynamic>{
      'id': instance.id,
    };

_Group _$GroupFromJson(Map<String, dynamic> json) => _Group(
      id: json['id'] as String,
      subGroupList: (json['subGroupList'] as List<dynamic>)
          .map((e) => SubGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GroupToJson(_Group instance) => <String, dynamic>{
      'id': instance.id,
      'subGroupList': instance.subGroupList,
    };

_Nested _$NestedFromJson(Map<String, dynamic> json) => _Nested(
      groupList: (json['groupList'] as List<dynamic>)
          .map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NestedToJson(_Nested instance) => <String, dynamic>{
      'groupList': instance.groupList,
    };
