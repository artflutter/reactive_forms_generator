import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:source_gen/source_gen.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

const formControlChecker = const TypeChecker.fromRuntime(FormControl);
const formArrayChecker = const TypeChecker.fromRuntime(FormArray);

abstract class FormElementGenerator {
  final FieldElement field;

  FormElementGenerator(this.field);

  String? validatorName(ExecutableElement? e) {
    var name = e?.name;

    if (e is MethodElement) {
      name = '${e.enclosingElement.name}.$name';
    }

    return name;
  }

  List<String> syncValidatorList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
      return annotation
              ?.getField('validators')
              ?.toListValue()
              ?.map((e) {
                return validatorName(e.toFunctionValue());
              })
              .whereType<String>()
              .toList() ??
          [];
    }
    return [];
  }

  List<String> asyncValidatorList(TypeChecker typeChecker) {
    if (typeChecker.hasAnnotationOfExact(field)) {
      final annotation = typeChecker.firstAnnotationOfExact(field);
      return annotation
              ?.getField('asyncValidators')
              ?.toListValue()
              ?.map((e) {
                return validatorName(e.toFunctionValue());
              })
              .whereType<String>()
              .toList() ??
          [];
    }
    return [];
  }

  String element(String? defaultValue);
}

class FormControlGenerator extends FormElementGenerator {
  FormControlGenerator(FieldElement field) : super(field);

  @override
  String element(defaultValue) {
    final props = [
      'value: ${defaultValue}',
      'validators: [${syncValidatorList(formControlChecker).join(',')}]',
      'asyncValidators: [${asyncValidatorList(formControlChecker).join(',')}]',
    ].join(',');

    return 'FormControl<${field.type}>(${props})';
  }
}

class FormArrayGenerator extends FormElementGenerator {
  FormArrayGenerator(FieldElement field) : super(field);

  @override
  String element(defaultValue) {
    final type = field.type;
    final typeArguments =
        type is ParameterizedType ? type.typeArguments : const [];

    final props = [
      '${defaultValue ?? []}',
      'validators: [${syncValidatorList(formArrayChecker).join(',')}]',
      'asyncValidators: [${asyncValidatorList(formArrayChecker).join(',')}]',
    ].join(',');

    return 'FormArray<${typeArguments.first}>(${props})';
  }
}
