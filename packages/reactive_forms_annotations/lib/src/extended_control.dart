import 'package:reactive_forms/reactive_forms.dart';

class ExtendedControl<T, V> {
  final AbstractControl<T> control;
  final V? Function() value;

  ExtendedControl(this.control, this.value);
}
