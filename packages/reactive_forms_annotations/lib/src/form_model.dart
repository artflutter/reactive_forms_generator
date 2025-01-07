import 'package:flutter/cupertino.dart';
import 'package:reactive_forms/reactive_forms.dart';

abstract class FormModel<TModel, TModelOutput> {
  FormModel({
    required this.form,
  });

  final FormGroup form;

  @protected
  TModelOutput get model;

  TModel get rawModel;

  void submit({
    required void Function(TModelOutput model) onValid,
    void Function()? onNotValid,
  });

  bool equalsTo(TModel other);

  void updateValue(
    TModel? value, {
    bool updateParent = true,
    bool emitEvent = true,
  });

  reset({
    TModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  });

  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  });
}
