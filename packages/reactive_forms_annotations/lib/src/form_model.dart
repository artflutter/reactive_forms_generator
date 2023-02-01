import 'package:reactive_forms/reactive_forms.dart';

abstract class FormModel<TModel> {
  FormModel({required this.form});

  final FormGroup form;

  TModel get model;

  void updateValue(
    TModel value, {
    bool updateParent = true,
    bool emitEvent = true,
  });

  reset({
    TModel? value,
    bool updateParent = true,
    bool emitEvent = true,
  });
}
