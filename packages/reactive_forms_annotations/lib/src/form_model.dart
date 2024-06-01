import 'package:reactive_forms/reactive_forms.dart';

abstract class FormModel<TModel, TModelOutput> {
  FormModel({
    required this.form,
  });

  final FormGroup form;

  TModelOutput get model;

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
