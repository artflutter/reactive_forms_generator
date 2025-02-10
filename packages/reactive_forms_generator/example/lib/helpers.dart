import 'package:reactive_forms/reactive_forms.dart';

class AllFieldsRequired extends Validator<dynamic> {
  const AllFieldsRequired() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final email = control.value['email'] as String?;
    final password = control.value['password'] as String?;

    if (email == null ||
        password == null ||
        email.isEmpty ||
        password.isEmpty) {
      return <String, dynamic>{'allFieldsRequired': true};
    }

    return null;
  }
}

// final emailRegex = RegExp(
//     r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$');

// Map<String, dynamic> emailValidator(AbstractControl<dynamic> control) {
//   final email = control.value as String?;
//
//   return email != null && emailRegex.hasMatch(email)
//       ? <String, dynamic>{}
//       : <String, dynamic>{ValidationMessage.email: true};
// }

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
class MailingListValidator extends Validator<dynamic> {
  const MailingListValidator() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    final formArray = control as FormArray<String>;
    final emails = formArray.value ?? [];
    final test = <String>{};

    final result = emails.fold<bool>(true,
        (previousValue, element) => previousValue && test.add(element ?? ''));

    return result ? null : <String, dynamic>{'emailDuplicates': true};
  }
}

/// Validator that validates the user's email is unique, sending a request to
/// the Server.
class UniqueEmailAsyncValidator extends AsyncValidator<dynamic> {
  const UniqueEmailAsyncValidator() : super();

  @override
  Future<Map<String, dynamic>?> validate(
      AbstractControl<dynamic> control) async {
    final error = {'unique': false};

    final isUniqueEmail = await _getIsUniqueEmail(control.value.toString());
    if (!isUniqueEmail) {
      control.markAsTouched();
      return error;
    }

    return null;
  }

  /// Simulates a time consuming operation (i.e. a Server request)
  Future<bool> _getIsUniqueEmail(String email) {
    // simple array that simulates emails stored in the Server DB.
    final storedEmails = ['johndoe@email.com', 'john@email.com'];

    return Future.delayed(
      const Duration(milliseconds: 300),
      () => !storedEmails.contains(email),
    );
  }
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

class RequiredValidator2 extends RequiredValidator {
  const RequiredValidator2() : super();
}

class MustMatchValidator extends Validator<dynamic> {
  const MustMatchValidator() : super();

  @override
  Map<String, dynamic>? validate(AbstractControl<dynamic> control) {
    const email = 'email';
    const password = 'password';

    final form = control as FormGroup;

    final formControl = form.control(email);
    final matchingFormControl = form.control(password);

    if (formControl.value != matchingFormControl.value) {
      matchingFormControl.setErrors(<String, dynamic>{
        ...matchingFormControl.errors,
        ...<String, dynamic>{'mustMatch': true},
      });

      // force messages to show up as soon as possible
      matchingFormControl.markAsTouched();
    } else {
      matchingFormControl.removeError('mustMatch');
    }

    return null;
  }
}
