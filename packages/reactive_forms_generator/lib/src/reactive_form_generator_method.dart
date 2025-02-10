import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/types.dart';

abstract class ReactiveFormGeneratorMethod {
  final ParameterElement field;
  final bool output;
  final List<String> requiredValidators;

  ReactiveFormGeneratorMethod(
    this.field,
    this.output,
    this.requiredValidators,
  );

  Method? method() {
    if (field.isFormGroup) {
      return formGroupMethod();
    }

    if (field.isFormArray) {
      return formArrayMethod();
    }

    if (field.isFormGroupArray) {
      return formGroupArrayMethod();
    }

    return formControlMethod();
  }

  bool get toOutput {
    try {
      if (field.isFormGroup) {
        return false;
      }

      if (field.isFormArray) {
        return false;
      }

      if (field.isFormGroupArray) {
        return false;
      }

      return field
              .annotationParams(formControlChecker)
              .hasRequiredValidator(requiredValidators) &&
          output;
    } catch (e) {
      return false;
    }
  }

  Method? formControlMethod() => defaultMethod();

  Method? formGroupMethod() => defaultMethod();

  Method? formArrayMethod() => defaultMethod();

  Method? formGroupArrayMethod() => defaultMethod();

  Method? defaultMethod() => null;
}
