// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedClassImpl _$$FreezedClassImplFromJson(Map<String, dynamic> json) =>
    _$FreezedClassImpl(
      json['gender'] as String?,
      id: json['id'] as String?,
      name: json['name'] as String?,
      logoImage: json['logo_image'] as String?,
      year: (json['year'] as num?)?.toDouble(),
      selectedSpaces: (json['selectedSpaces'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FreezedClassImplToJson(_$FreezedClassImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'id': instance.id,
      'name': instance.name,
      'logo_image': instance.logoImage,
      'year': instance.year,
      'selectedSpaces': instance.selectedSpaces,
    };
