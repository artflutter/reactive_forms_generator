import 'package:reactive_forms/reactive_forms.dart';

abstract class FormModel<TModel> {
  FormModel({required this.form});

  final FormGroup form;

  TModel get model;

  void submit({
    required void Function(TModel model) onValid,
    void Function()? onNotValid,
  });

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
}
