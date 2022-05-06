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
    String _displayType = typeParameter.getDisplayString(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (typeParameter.nullabilitySuffix == NullabilitySuffix.question) {
      _displayType = _displayType.substring(0, _displayType.length - 1);
    }

    return _displayType;
  }

  List<String> get validators {
    List<String> _validators = syncValidatorList(formArrayChecker);

    if (annotationType != 'dynamic') {
      _validators = _validators
          .map(
            (e) => '(control) => $e(control as FormArray<$displayType>)',
          )
          .toList();
    }

    return _validators;
  }

  List<String> get asyncValidators {
    List<String> _asyncValidators = asyncValidatorList(formArrayChecker);

    if (annotationType != 'dynamic') {
      _asyncValidators = _asyncValidators
          .map(
            (e) => '(control) => $e(control as FormArray<$displayType>)',
          )
          .toList();
    }

    return _asyncValidators;
  }

  List<String> get itemValidators {
    List<String> _itemValidators = itemSyncValidatorList(formArrayChecker);

    if (annotationType != 'dynamic') {
      _itemValidators = _itemValidators
          .map(
            (e) => '(control) => $e(control as FormControl<$displayType>)',
          )
          .toList();
    }

    return _itemValidators;
  }

  List<String> get itemAsyncValidators {
    List<String> _itemAsyncValidators =
        itemAsyncValidatorList(formArrayChecker);

    if (annotationType != 'dynamic') {
      _itemAsyncValidators = _itemAsyncValidators
          .map(
            (e) => '(control) => $e(control as FormControl<$displayType>)',
          )
          .toList();
    }

    return _itemAsyncValidators;
  }

  String get annotationType =>
      (annotation(formArrayChecker)?.type as ParameterizedType)
          .typeArguments
          .first
          .toString();

  @override
  String element() {
    final optionalChaining =
        field.type.nullabilitySuffix == NullabilitySuffix.question ? '?' : '';

    final defaultValue =
        type?.nullabilitySuffix == NullabilitySuffix.question ? '?? []' : '';

    final typeParameterType = typeParameter.getDisplayString(
      withNullability: false,
    );

    if (annotationType != 'dynamic' && annotationType != typeParameterType) {
      throw Exception(
        'Annotation and field type mismatch. Annotation is typed as `$annotationType` and field(`${field.name}`) as `$typeParameterType`.',
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
        typeParameter.element! as ClassElement,
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
