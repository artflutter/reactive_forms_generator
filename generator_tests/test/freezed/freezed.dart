import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'dart:core';

part 'freezed.g.dart';
part 'freezed.freezed.dart';
part 'freezed.gform.dart';

@freezed
@ReactiveFormAnnotation()
class Test with _$Test {
  Test._();

  factory Test(
    @FormControlAnnotation() String? gender, {
    @FormControlAnnotation() String? id,
    @FormControlAnnotation() String? name,
    @FormControlAnnotation() double? year,
  }) = _Test;

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
}
