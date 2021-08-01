import 'package:analyzer/dart/element/element.dart';
import 'package:reactive_forms_generator/src/form_elements/form_element_generator.dart';
import 'package:reactive_forms_generator/src/types.dart';

class FormControlGenerator extends FormElementGenerator {
  FormControlGenerator(FieldElement field) : super(field);

  @override
  String element() {
    final props = [
      'value: $value',
      'validators: [${syncValidatorList(formControlChecker).join(',')}]',
      'asyncValidators: [${asyncValidatorList(formControlChecker).join(',')}]',
      'asyncValidatorsDebounceTime: ${asyncValidatorsDebounceTime(formControlChecker)}',
      'disabled: ${disabled(formControlChecker)}',
      'touched: ${touched(formControlChecker)}',
    ].join(',');

    return 'FormControl<${field.type.getDisplayString(withNullability: false)}>($props)';
  }
}
