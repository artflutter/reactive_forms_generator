class AbstractControl<T> {}

class Validator<T> {}

/// Validator that validates if control's value is a numeric value.
class NumberValidator extends Validator<dynamic> {
  /// The regex expression of a numeric string value.
  static final RegExp numberRegex = new RegExp(r'^-?[0-9]+$');

  static Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    return null;
  }
}

Future<Map<String, dynamic>?> uniqueEmail(
    AbstractControl<dynamic> control) async {
  final error = {'unique': false};

  final emailAlreadyUsed = await Future.delayed(
    Duration(seconds: 5),
    () => null,
  );

  if (emailAlreadyUsed) {
    // control.markAsTouched();
    return error;
  }

  return null;
}

typedef ValidatorFunction = Map<String, dynamic>? Function(
    AbstractControl<dynamic> control);

typedef AsyncValidatorFunction = Future<Map<String, dynamic>> Function(
    AbstractControl<dynamic> value);
