import 'package:analyzer/dart/element/element.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';

abstract class ReactiveFormMethod {
  final ParameterElement field;

  ReactiveFormMethod(this.field);

  Method method() {
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

  Method formControlMethod() => defaultMethod();

  Method formGroupMethod() => defaultMethod();

  Method formArrayMethod() => defaultMethod();

  Method formGroupArrayMethod() => defaultMethod();

  Method defaultMethod();
}
