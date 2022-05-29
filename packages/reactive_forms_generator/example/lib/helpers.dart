import 'package:reactive_forms/reactive_forms.dart';

Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
  // return Validators.required(control);
}

final emailRegex = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

Map<String, dynamic> emailValidator(FormControl<String> control) {
  final email = control.value;

  return email != null && emailRegex.hasMatch(email)
      ? <String, dynamic>{}
      : <String, dynamic>{ValidationMessage.email: true};
}

// // validates that at least one email is selected
// Map<String, dynamic>? mailingComplexListValidator(AbstractControl control) {
//   final formArray = control as FormArray<String>;
//   final emails = formArray.value ?? [];
//   final test = <String>{};
//
//   for (var e in formArray.controls) {
//     e.setErrors(emailValidator(e));
//   }
//
//   final result = emails.fold<bool>(true,
//       (previousValue, element) => previousValue && test.add(element ?? ''));
//
//   return result ? null : <String, dynamic>{'emailDuplicates': true};
// }

// validates that at least one email is selected
Map<String, dynamic>? mailingListValidator(FormArray<String> control) {
  final emails = control.value ?? [];
  final test = <String>{};

  final result = emails.fold<bool>(true,
      (previousValue, element) => previousValue && test.add(element ?? ''));

  return result ? null : <String, dynamic>{'emailDuplicates': true};
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
