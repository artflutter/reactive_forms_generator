import 'package:reactive_forms/reactive_forms.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  return Validators.required(control);
}

enum UserMode { user, admin }

class NumValueAccessor extends ControlValueAccessor<int, num> {
  final int fractionDigits;

  NumValueAccessor({
    this.fractionDigits = 2,
  });

  @override
  num? modelToViewValue(int? modelValue) {
    return modelValue;
  }

  @override
  int? viewToModelValue(num? viewValue) {
    return viewValue?.toInt();
  }
}
