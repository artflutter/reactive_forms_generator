import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/form_elements/form_array_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_control_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:recase/recase.dart';

class FormGroupGenerator extends FormElementGenerator {
  FormGroupGenerator(ClassElement root, ParameterElement field, DartType? type)
      : super(root, field, type);

  @override
  String get value {
    final enclosingElement =
        (fieldElement.enclosingElement as ConstructorElement).enclosingElement;

    final optionalChaining = (enclosingElement == root &&
                type?.nullabilitySuffix != NullabilitySuffix.question) ||
            (enclosingElement == root && !root.isNullable)
        ? ''
        : '?';

    return '${enclosingElement.name.camelCase}$optionalChaining';
  }

  // @override
  // Element get fieldElement => field.type.element!;

  // @override
  // String get value {
  //   // print('==========');
  //   // print(field.name);
  //   // print('==========');
  //
  //   // if (super.fieldElement.enclosingElement is ConstructorElement) {
  //   //   print('***********');
  //   //   print(fieldElement);
  //   //   print(super.fieldElement);
  //   //   print('***********');
  //   // }
  //   //
  //   // return '';
  //   final enclosingElement =
  //       (super.fieldElement.enclosingElement as ConstructorElement)
  //           .enclosingElement;
  //
  //   final optionalChaining = (enclosingElement == root &&
  //               type?.nullabilitySuffix != NullabilitySuffix.question) ||
  //           (enclosingElement == root && !root.isNullable)
  //       ? ''
  //       : '?';
  //
  //   print('***********');
  //   print(
  //       '${enclosingElement.name.camelCase}$optionalChaining.${fieldElement.name}');
  //   print('***********');
  //
  //   return '${enclosingElement.name.camelCase}$optionalChaining.${fieldElement.name}';
  // }

  List<ParameterElement> get formElements =>
      (field.type.element as ClassElement)
          .constructors
          .where((e) => e.hasReactiveFormAnnotatedParameters)
          .first
          .parameters
          .where(
            (e) =>
                formControlChecker.hasAnnotationOfExact(e) ||
                formArrayChecker.hasAnnotationOfExact(e),
          )
          .toList();

  List<ParameterElement> get nestedFormElements =>
      (field.type.element as ClassElement)
          .constructors
          .where((e) => e.hasReactiveFormAnnotatedParameters)
          .first
          .parameters
          .where(
            (e) => e.type.element is ClassElement,
          )
          .where(
            (e) => formGroupChecker.hasAnnotationOfExact(e.type.element!),
          )
          .toList();

  List<String> get validators {
    List<String> formGroupValidators = syncValidatorList(formGroupChecker);
    List<String> formGroupValidatorsTyped =
        syncValidatorTypedList(formGroupChecker);

    formGroupValidatorsTyped = formGroupValidatorsTyped
        .map(
          (e) =>
              '(control) => $e(${field.className}(${(field.type.element as ClassElement).name.camelCase}, path))',
        )
        .toList();

    return [...formGroupValidators, ...formGroupValidatorsTyped];
  }

  List<String> get asyncValidators {
    List<String> formGroupAsyncValidators =
        asyncValidatorList(formGroupChecker);
    List<String> formGroupAsyncValidatorsTyped =
        asyncValidatorTypedList(formGroupChecker);

    formGroupAsyncValidators = formGroupAsyncValidators
        .map(
          (e) => '(control) => $e(this)',
        )
        .toList();

    return [...formGroupAsyncValidators, ...formGroupAsyncValidatorsTyped];
  }

  @override
  String element() {
    final formElementsList = formElements
        .map(
          (f) {
            FormElementGenerator? formElementGenerator;

            if (formControlChecker.hasAnnotationOfExact(f)) {
              formElementGenerator = FormControlGenerator(root, f, type);
            }

            if (formArrayChecker.hasAnnotationOfExact(f)) {
              formElementGenerator = FormArrayGenerator(root, f, type);
            }

            if (formElementGenerator != null) {
              return '${f.fieldControlNameName}: ${formElementGenerator.element()}';
            }

            return null;
          },
        )
        .whereType<String>()
        .toList();

    formElementsList.addAll(
      nestedFormElements.map(
        (f) {
          return '${f.fieldControlNameName}: ${f.className}.formElements($value.${f.name})';
        },
      ),
    );

    final props = [
      '{${formElementsList.join(',')}}',
      'validators: [${validators.join(',')}]',
      'asyncValidators: [${asyncValidators.join(',')}]',
      'asyncValidatorsDebounceTime: ${asyncValidatorsDebounceTime(formGroupChecker)}',
      'disabled: ${disabled(formGroupChecker)}',
    ].join(',');

    return 'FormGroup($props)';
  }
}
