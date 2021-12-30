import 'package:reactive_forms/reactive_forms.dart';

abstract class FormModel<TModel> {
  FormModel({required this.form});
  final FormGroup form;
  TModel get model;
}
