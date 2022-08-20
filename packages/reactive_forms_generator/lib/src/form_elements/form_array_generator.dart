import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/form_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:reactive_forms_generator/src/extensions.dart';

class FormArrayGenerator extends FormElementGenerator {
  FormArrayGenerator(ClassElement root, ParameterElement field, DartType? type)
      : super(root, field, type);

  DartType get typeParameter =>
      (field.type as ParameterizedType).typeArguments.first;

  String get displayType {
    String getDisplayString =
        typeParameter.getDisplayString(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (typeParameter.nullabilitySuffix == NullabilitySuffix.question) {
      getDisplayString =
          getDisplayString.substring(0, getDisplayString.length - 1);
    }

    return getDisplayString;
  }

  List<String> get validators {
    List<String> formArrayValidators = syncValidatorList(formArrayChecker);

    if (annotationTyped(formArrayChecker)) {
      formArrayValidators = formArrayValidators
          .map(
            (e) => '(control) => $e(control as FormArray<$displayType>)',
          )
          .toList();
    }

    return formArrayValidators;
  }

  List<String> get asyncValidators {
    List<String> formArrayAsyncValidators =
        asyncValidatorList(formArrayChecker);

    if (annotationTyped(formArrayChecker)) {
      formArrayAsyncValidators = formArrayAsyncValidators
          .map(
            (e) => '(control) => $e(control as FormArray<$displayType>)',
          )
          .toList();
    }

    return formArrayAsyncValidators;
  }

  List<String> get itemValidators {
    List<String> formArrayItemValidators =
        itemSyncValidatorList(formArrayChecker);

    if (annotationTyped(formArrayChecker)) {
      formArrayItemValidators = formArrayItemValidators
          .map(
            (e) => '(control) => $e(control as FormControl<$displayType>)',
          )
          .toList();
    }

    return formArrayItemValidators;
  }

  List<String> get itemAsyncValidators {
    List<String> formArrayItemAsyncValidators =
        itemAsyncValidatorList(formArrayChecker);

    if (annotationTyped(formArrayChecker)) {
      formArrayItemAsyncValidators = formArrayItemAsyncValidators
          .map(
            (e) => '(control) => $e(control as FormControl<$displayType>)',
          )
          .toList();
    }

    return formArrayItemAsyncValidators;
  }

  // String get annotationType =>
  //     (annotation(formArrayChecker)?.type as ParameterizedType)
  //         .typeArguments
  //         .first
  //         .toString();

  @override
  String element() {
    final optionalChaining =
        field.type.nullabilitySuffix == NullabilitySuffix.question ? '?' : '';

    final defaultValue =
        type?.nullabilitySuffix == NullabilitySuffix.question ? '?? []' : '';

    final typeParameterType = typeParameter.getDisplayString(
      withNullability: false,
    );

    final formArrayAnnotationType = annotationType(formArrayChecker);
    final formArrayAnnotationTyped = annotationTyped(formArrayChecker);

    if (formArrayAnnotationTyped &&
        formArrayAnnotationType != typeParameterType) {
      throw Exception(
        'Annotation and field type mismatch. Annotation is typed as `$formArrayAnnotationType` and field(`${field.name}`) as `$typeParameterType`.',
      );
    }

    final partialProps = [
      'validators: [${validators.join(',')}]',
      'asyncValidators: [${asyncValidators.join(',')}]',
      'asyncValidatorsDebounceTime: ${asyncValidatorsDebounceTime(formArrayChecker)}',
      'disabled: ${disabled(formArrayChecker)}',
    ];

    if (field.isFormGroupArray) {
      final formGenerator = FormGenerator(
        root,
        typeParameter.element2! as ClassElement,
        field.type,
      );

      final props = [
        '${field.name}${formGenerator.className}.map((e) => e.formElements()).toList()',
        ...partialProps
      ].join(', ');

      return 'FormArray($props)';
    } else {
      final props = [
        '''$value$optionalChaining.map((e) => FormControl<$displayType>(
              value: e,
              validators: $itemValidators,
              asyncValidators: $itemAsyncValidators,
              asyncValidatorsDebounceTime: ${itemAsyncValidatorsDebounceTime(formArrayChecker)},
              disabled: ${itemDisabled(formArrayChecker)},
            )).toList() $defaultValue''',
        ...partialProps
      ].join(', ');

      return 'FormArray<$displayType>($props)';
    }
  }
}
