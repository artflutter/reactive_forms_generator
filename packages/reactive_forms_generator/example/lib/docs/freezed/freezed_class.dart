import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

part 'freezed_class.g.dart';
part 'freezed_class.freezed.dart';
part 'freezed_class.gform.dart';

@freezed
@ReactiveFormAnnotation()
class FreezedClass with _$FreezedClass {
  FreezedClass._();

  factory FreezedClass(
    @FormControlAnnotation() String? gender, {
    @FormControlAnnotation() String? id,
    @FormControlAnnotation() String? name,
    @FormControlAnnotation() double? year,
  }) = _FreezedClass;

  factory FreezedClass.fromJson(Map<String, dynamic> json) =>
      _$FreezedClassFromJson(json);

  bool method() => false;
}
