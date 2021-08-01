import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/types.dart';

extension FieldElementExt on FieldElement {
  bool get isFormGroupArray {
    if (!isFormArray) {
      return false;
    }

    final type = this.type;
    final typeArguments =
        type is ParameterizedType ? type.typeArguments : const [];

    final typeParameter = typeArguments.first;

    return typeParameter is DartType &&
        typeParameter.element is ClassElement &&
        formGroupChecker.hasAnnotationOf(typeParameter.element!);
  }

  bool get isFormArray => formArrayChecker.hasAnnotationOfExact(this);

  bool get isFormControl => formControlChecker.hasAnnotationOfExact(this);

  bool get isFormGroup => formGroupChecker.hasAnnotationOfExact(this);

  bool get isForm => formChecker.hasAnnotationOfExact(this);
}
