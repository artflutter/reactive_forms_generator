import 'package:flutter/cupertino.dart';
import 'package:reactive_forms/reactive_forms.dart';

abstract class FormModel<TModel, TModelOutput> {
  FormModel({
    required this.form,
    this.path,
    FormModel<dynamic, dynamic>? formModel,
  });

  final FormGroup form;

  final String? path;

  @protected
  TModelOutput get model;

  TModel get rawModel;

  void submit({
    required void Function(TModelOutput model) onValid,
    void Function()? onNotValid,
  });

  bool equalsTo(TModel other);

  bool get hasChanged;

  FormGroup get currentForm;

  void updateValue(
    TModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  });

  void upsertValue(
    TModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  });

  reset({TModel? value, bool updateParent = true, bool emitEvent = true});

  void toggleDisabled({bool updateParent = true, bool emitEvent = true});

  static Map<String, Object?> defaultRawValue(FormGroup group) {
    return group.controls.map<String, Object?>((key, control) {
      if (control is FormGroup) {
        return MapEntry(key, defaultRawValue(control));
      }
      if (control is FormArray) {
        return MapEntry(key, defaultRawValueArray(control));
      }
      if (control is FormControl) {
        return MapEntry(key, control.defaultValue);
      }
      return MapEntry(key, control.value);
    });
  }

  static List<Object?> defaultRawValueArray(FormArray array) {
    return array.controls.map<Object?>((control) {
      if (control is FormGroup) {
        return defaultRawValue(control);
      }
      if (control is FormArray) {
        return defaultRawValueArray(control);
      }
      if (control is FormControl) {
        return control.defaultValue;
      }
      return control.value;
    }).toList();
  }
}
