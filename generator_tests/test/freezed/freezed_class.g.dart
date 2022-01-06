// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FreezedClass _$$_FreezedClassFromJson(Map<String, dynamic> json) =>
    _$_FreezedClass(
      json['gender'] as String,
      id: json['id'] as String?,
      name: json['name'] as String?,
      year: (json['year'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_FreezedClassToJson(_$_FreezedClass instance) =>
    <String, dynamic>{
      'gender': instance.gender,
      'id': instance.id,
      'name': instance.name,
      'year': instance.year,
    };
