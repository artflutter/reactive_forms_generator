// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_class_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FreezedClassO _$FreezedClassOFromJson(Map<String, dynamic> json) =>
    _FreezedClassO(
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

Map<String, dynamic> _$FreezedClassOToJson(_FreezedClassO instance) =>
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

_FreezedClassOOutput _$FreezedClassOOutputFromJson(Map<String, dynamic> json) =>
    _FreezedClassOOutput(
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

Map<String, dynamic> _$FreezedClassOOutputToJson(
        _FreezedClassOOutput instance) =>
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
