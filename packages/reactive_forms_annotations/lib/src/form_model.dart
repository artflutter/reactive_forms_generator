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

  final Map<String, Object?>? initial = null;

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

  void updateInitial(Map<String, Object?>? value, String? path);

  void toggleDisabled({bool updateParent = true, bool emitEvent = true});
}
