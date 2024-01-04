// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nested.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SubGroup _$$_SubGroupFromJson(Map<String, dynamic> json) => _$_SubGroup(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$_SubGroupToJson(_$_SubGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
    };

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => _$_Group(
      id: json['id'] as String,
      subGroupList: (json['subGroupList'] as List<dynamic>)
          .map((e) => SubGroup.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'subGroupList': instance.subGroupList,
    };

_$_Nested _$$_NestedFromJson(Map<String, dynamic> json) => _$_Nested(
      groupList: (json['groupList'] as List<dynamic>)
          .map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_NestedToJson(_$_Nested instance) => <String, dynamic>{
      'groupList': instance.groupList,
    };
