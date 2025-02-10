// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_class_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FreezedClassOImpl _$$FreezedClassOImplFromJson(Map<String, dynamic> json) =>
    _$FreezedClassOImpl(
      json['gender'] as String?,
      json['genderR'] as String?,
      id: json['id'] as String?,
      idR: json['idR'] as String?,
      idR2: json['idR2'] as String? ?? '',
      name: json['name'] as String?,
      logoImage: json['logo_image'] as String?,
      year: (json['year'] as num?)?.toDouble(),
      selectedSpaces: (json['selectedSpaces'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FreezedClassOImplToJson(_$FreezedClassOImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'genderR': instance.genderR,
      'id': instance.id,
      'idR': instance.idR,
      'idR2': instance.idR2,
      'name': instance.name,
      'logo_image': instance.logoImage,
      'year': instance.year,
      'selectedSpaces': instance.selectedSpaces,
    };

_$FreezedClassOOutputImpl _$$FreezedClassOOutputImplFromJson(
        Map<String, dynamic> json) =>
    _$FreezedClassOOutputImpl(
      json['gender'] as String?,
      json['genderR'] as String,
      id: json['id'] as String?,
      idR: json['idR'] as String,
      idR2: json['idR2'] as String,
      name: json['name'] as String?,
      logoImage: json['logo_image'] as String?,
      year: (json['year'] as num?)?.toDouble(),
      selectedSpaces: (json['selectedSpaces'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FreezedClassOOutputImplToJson(
        _$FreezedClassOOutputImpl instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'genderR': instance.genderR,
      'id': instance.id,
      'idR': instance.idR,
      'idR2': instance.idR2,
      'name': instance.name,
      'logo_image': instance.logoImage,
      'year': instance.year,
      'selectedSpaces': instance.selectedSpaces,
    };
