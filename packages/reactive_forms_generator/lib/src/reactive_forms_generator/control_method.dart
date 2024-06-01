import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_form_generator_method.dart';

class ControlMethod extends ReactiveFormGeneratorMethod {
  ControlMethod(super.field, super.output);

  @override
  Method? formGroupMethod() {
    final reference = 'FormGroup${field.nullabilitySuffix}';

    String body = 'form.control(${field.fieldControlPath}()) as $reference';

    if (field.isNullable) {
      body =
          '${field.containsMethodName} ? form.control(${field.fieldControlPath}()) as $reference : null';
    }

    return Method(
      (b) => b
        ..name = field.fieldControlName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference(reference)
        ..body = Code(body),
    );
  }

  @override
  Method? formGroupArrayMethod() {
    final type = (field.type as ParameterizedType).typeArguments.first;

    String displayType = type.getDisplayString(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (type.nullabilitySuffix == NullabilitySuffix.question) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    String typeReference = 'FormArray<$displayType>${field.nullabilitySuffix}';

    if (field.isFormGroupArray) {
      typeReference =
          'FormArray<Map<String, Object?>>${field.nullabilitySuffix}';
    }

    String body = 'form.control(${field.fieldControlPath}()) as $typeReference';

    if (field.isNullable) {
      body =
          '${field.containsMethodName} ? form.control(${field.fieldControlPath}()) as $typeReference : null';
    }

    return Method(
      (b) => b
        ..name = field.fieldControlName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference(typeReference)
        ..body = Code(body),
    );
  }

  @override
  Method? formArrayMethod() {
    final type = (field.type as ParameterizedType).typeArguments.first;

    String displayType = type.getDisplayString(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (type.nullabilitySuffix == NullabilitySuffix.question) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    String typeReference = 'FormArray<$displayType>${field.nullabilitySuffix}';

    String body = 'form.control(${field.fieldControlPath}()) as $typeReference';

    if (field.isNullable) {
      body =
          '${field.containsMethodName} ? form.control(${field.fieldControlPath}()) as $typeReference : null';
    }

    return Method(
      (b) => b
        ..name = field.fieldControlName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference(typeReference)
        ..body = Code(body),
    );
  }

  @override
  Method? formControlMethod() {
    String displayType =
        field.type.getDisplayString(withNullability: !toOutput);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (field.type.nullabilitySuffix == NullabilitySuffix.question &&
        !toOutput) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    final reference =
        'FormControl<$displayType>${toOutput ? '' : field.nullabilitySuffix}';

    String body = 'form.control(${field.fieldControlPath}()) as $reference';

    if (field.isNullable && !toOutput) {
      body =
          '${field.containsMethodName} ? form.control(${field.fieldControlPath}()) as $reference : null';
    }

    return Method(
      (b) => b
        ..name = field.fieldControlName
        ..lambda = true
        ..type = MethodType.getter
        ..returns = Reference(reference)
        ..body = Code(body),
    );
  }
}
