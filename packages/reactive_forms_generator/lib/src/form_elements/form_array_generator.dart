// ignore_for_file: implementation_imports
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:recase/recase.dart';
import 'package:source_gen/src/type_checker.dart';

import 'package:analyzer/src/dart/element/element.dart' as e;

class FormArrayGenerator extends FormElementGenerator {
  final FormalParameterElement formArrayField;

  FormArrayGenerator({
    required super.root,
    required this.formArrayField,
    super.type,
  }) : super(field: formArrayField);

  DartType get typeParameter =>
      (formArrayField.type as ParameterizedType).typeArguments.first;

  @override
  String get value {
    final enclosingElement =
        (fieldElement.enclosingElement2 as e.ConstructorElementImpl2)
            .enclosingElement2;

    final optionalChaining =
        (enclosingElement.name3 == root.name3 &&
                type?.nullabilitySuffix != NullabilitySuffix.question) ||
            (enclosingElement.name3 == root.name3 && !root.isNullable)
        ? ''
        : '?';

    return '(${enclosingElement.firstFragment.name.camelCase}$optionalChaining.${fieldElement.name3}${optionalChaining != '' ? '?? []' : ''})';
  }

  String get displayType {
    String getDisplayString = typeParameter.getName(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (typeParameter.nullabilitySuffix == NullabilitySuffix.question) {
      getDisplayString = getDisplayString.substring(
        0,
        getDisplayString.length - 1,
      );
    }

    return getDisplayString;
  }

  @override
  String element() {
    final typeParameterType = typeParameter.getName(withNullability: false);

    final formArrayAnnotationType = annotationType;
    final formArrayAnnotationTyped = annotationTyped;

    if (formArrayAnnotationTyped &&
        formArrayAnnotationType != typeParameterType) {
      throw Exception(
        'Annotation and field type mismatch. Annotation is typed as `$formArrayAnnotationType` and field(`${field.name3}`) as `$typeParameterType`.',
      );
    }

    final partialProps = [
      'validators: $validators',
      'asyncValidators: $asyncValidators',
      'asyncValidatorsDebounceTime: $asyncValidatorsDebounceTime',
      'disabled: $disabled',
    ];

    if (formArrayField.isFormGroupArray) {
      final props = [
        '$value.map((e) => ${formArrayField.className}.formElements(e)).toList()',
        ...partialProps,
      ].join(', ');

      return 'FormArray($props)';
    } else {
      final props = [
        '''$value.map((e) => FormControl<$displayType>(
              value: e,
              validators: $itemValidators,
              asyncValidators: $itemAsyncValidators,
              asyncValidatorsDebounceTime: $itemAsyncValidatorsDebounceTime,
              disabled: $itemDisabled,
            )).toList()''',
        ...partialProps,
      ].join(', ');

      return 'FormArray<$displayType>($props)';
    }
  }

  @override
  TypeChecker get typeChecker => formArrayChecker;
}
