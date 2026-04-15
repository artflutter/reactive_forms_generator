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

  Map<String, Object?> get initialRawValue;

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

  static Object? sliceByPath(Object? root, String? path) {
    if (path == null || path.isEmpty) return root;
    Object? current = root;
    for (final key in path.split('.')) {
      if (current is Map) {
        current = current[key];
      } else if (current is List) {
        final idx = int.tryParse(key);
        if (idx == null || idx < 0 || idx >= current.length) return null;
        current = current[idx];
      } else {
        return null;
      }
    }
    return current;
  }
}
