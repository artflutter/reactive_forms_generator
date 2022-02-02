import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/element/element.dart' as e;
// ignore: implementation_imports
import 'package:analyzer/src/generated/utilities_dart.dart' as u;
import 'package:analyzer/dart/element/nullability_suffix.dart';
// ignore: implementation_imports
import 'package:analyzer/src/dart/element/type.dart' as t;

import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/form_elements/form_array_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_group_generator.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_update_value_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_forms_clear_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_forms_insert_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_forms_patch_value_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/contains_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/control_path_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/errors_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/field_value_method.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:recase/recase.dart';

import 'library_builder.dart';

enum ValidatorsApplyMode {
  merge,
  override,
}

class FormGenerator {
  final ClassElement element;

  final DartType? type;

  final Map<String, FormGenerator> formGroupGenerators = {};

  final Map<String, FormGenerator> nestedFormGroupGenerators = {};

  String get baseName {
    if (formChecker.hasAnnotationOfExact(element)) {
      final annotation = formChecker.firstAnnotationOfExact(element);
      return annotation?.getField('name')?.toStringValue() ?? element.name;
    }
    return element.name;
  }

  FormGenerator(this.element, this.type) {
    for (var e in formGroups) {
      formGroupGenerators[e.name] = FormGenerator(
        e.type.element! as ClassElement,
        e.type,
      );
    }

    for (var e in formGroupArrays) {
      final type = e.type;
      final typeArguments =
          type is ParameterizedType ? type.typeArguments : const <DartType>[];

      final typeParameter = typeArguments.first;

      nestedFormGroupGenerators[e.name] = FormGenerator(
        typeParameter.element! as ClassElement,
        e.type,
      );
    }
  }

  List<ParameterElement> get all => [
        ...formControls,
        ...formArrays,
        ...formGroups,
        ...formGroupArrays,
      ];

  List<ParameterElement> get formControls => parameters
      .where(
        (e) => e.isFormControl,
      )
      .toList();

  List<ParameterElement> get formArrays => parameters
      .where(
        (e) => e.isFormArray,
      )
      .toList();

  List<ParameterElement> get formGroups => parameters
      .where(
        (e) => e.isFormGroup,
      )
      .toList();

  List<ParameterElement> get formGroupArrays => parameters
      .where(
        (e) => e.isFormGroupArray,
      )
      .toList();

  String get className => '${baseName}Form';

  List<ParameterElement> get parameters => element.annotatedParameters;

  List<ParameterElement> get annotatedParameters =>
      parameters.where((e) => e.isReactiveFormAnnotated).toList();

  Field staticFieldName(ParameterElement field) => Field(
        (b) => b
          ..static = true
          ..type = stringRef
          ..name = field.fieldControlNameName
          ..assignment = Code('"${field.fieldName}"'),
      );

  List<Field> get staticFieldNameList {
    return annotatedParameters.map(staticFieldName).toList();
  }

  Field field(ParameterElement field) => Field(
        (b) => b
          ..type = stringRef
          ..name = field.fieldName
          ..assignment = Code('"${field.fieldName}"'),
      );

  List<Field> get fieldNameList => annotatedParameters.map(field).toList();

  Method? fieldControlNameMethod(ParameterElement field) =>
      ControlPathMethod(field).method();

  List<Method> get fieldControlNameMethodList =>
      all.map(fieldControlNameMethod).whereType<Method>().toList();

  List<Field> get nestedFormGroupFields => formGroups
      .map(
        (e) => Field(
          (b) {
            final name = formGroupGenerators[e.name]!.className;
            b
              ..name = '${e.name}Form'
              ..late = true
              ..type = Reference(name);
          },
        ),
      )
      .toList();

  Method? fieldValueMethod(ParameterElement field) =>
      FieldValueMethod(field).method();

  List<Method> get fieldValueMethodList =>
      all.map(fieldValueMethod).whereType<Method>().toList();

  Method? fieldContainsMethod(ParameterElement field) =>
      ContainsMethod(field).method();

  List<Method> get fieldContainsMethodList =>
      all.map(fieldContainsMethod).whereType<Method>().toList();

  Method? errors(ParameterElement field) => ErrorsMethod(field).method();

  List<Method> get fieldErrorsMethodList =>
      all.map(errors).whereType<Method>().toList();

  Method focus(ParameterElement field) => Method(
        (b) => b
          ..name = '${field.name}Focus'
          ..lambda = true
          ..type = MethodType.getter
          ..returns = const Reference('void')
          ..body = Code(
            'form.focus(${field.fieldControlPath}())',
          ),
      );

  Method? remove(ParameterElement field) {
    if (field.type.nullabilitySuffix == NullabilitySuffix.none) {
      return null;
    }

    return Method(
      (b) => b
        ..name = '${field.name}Remove'
        ..optionalParameters.addAll([
          Parameter(
            (b) => b
              ..name = 'updateParent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
          Parameter(
            (b) => b
              ..name = 'emitEvent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
        ])
        ..returns = const Reference('void')
        ..body = Code(
          '''
            if (${field.containsMethodName}) {
              final controlPath = path;
              if (controlPath == null) {
                form.removeControl(
                  ${field.fieldControlNameName},
                  updateParent: updateParent,
                  emitEvent: emitEvent,
                );
              } else {
                final formGroup = form.control(controlPath);
        
                if (formGroup is FormGroup) {
                  formGroup.removeControl(
                    ${field.fieldControlNameName},
                    updateParent: updateParent,
                    emitEvent: emitEvent,
                  );
                }
              }
            }
          ''',
        ),
    );
  }

  Method? insert(ParameterElement field) =>
      ReactiveFormInsertMethod(field).method();

  Method? update(ParameterElement field) =>
      ReactiveFormUpdateValueMethod(field).method();

  Method? clear(ParameterElement field) =>
      ReactiveFormClearMethod(field).method();

  Method? patch(ParameterElement field) =>
      ReactiveFormPatchValueMethod(field).method();

  Method reset(ParameterElement field) {
    String value = 'value';

    if (field.isFormGroup) {
      value =
          '${formGroupGenerators[field.name]!.className}(value, FormGroup({}), null).formElements().rawValue';
    }

    if (field.isFormGroupArray) {
      value =
          'value${field.nullabilitySuffix}.map((e) => ${nestedFormGroupGenerators[field.name]!.className}(e, FormGroup({}), null).formElements().rawValue).toList()';
    }

    return Method(
      (b) => b
        ..name = '${field.name}ValueReset'
        ..lambda = true
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(field.type.toString()),
          ),
        )
        ..optionalParameters.addAll([
          Parameter(
            (b) => b
              ..name = 'updateParent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
          Parameter(
            (b) => b
              ..name = 'emitEvent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
          Parameter(
            (b) => b
              ..name = 'removeFocus'
              ..named = true
              ..defaultTo = const Code('false')
              ..type = const Reference('bool'),
          ),
          Parameter(
            (b) => b
              ..name = 'disabled'
              ..named = true
              ..type = const Reference('bool?'),
          ),
        ])
        ..returns = const Reference('void')
        ..body = Code(
          '${field.fieldControlName}${field.nullabilitySuffix}.reset(value: $value, updateParent: updateParent, emitEvent:emitEvent)',
        ),
    );
  }

  Method get updateValueMethod {
    String displayType =
        type?.getDisplayString(withNullability: true) ?? element.name;

    if (type != null &&
        type is ParameterizedType &&
        (type as ParameterizedType).typeArguments.isNotEmpty) {
      displayType = (type as ParameterizedType)
          .typeArguments
          .first
          .getDisplayString(withNullability: true);
    }

    return Method(
      (b) => b
        ..name = 'updateValue'
        ..lambda = true
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(displayType),
          ),
        )
        ..optionalParameters.addAll([
          Parameter(
            (b) => b
              ..name = 'updateParent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
          Parameter(
            (b) => b
              ..name = 'emitEvent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
        ])
        ..returns = const Reference('void')
        ..body = Code(
          'form.updateValue($className(value, FormGroup({}), null).formElements().rawValue, updateParent: updateParent, emitEvent:emitEvent)',
        ),
    );
  }

  Method get resetValueMethod {
    String displayType =
        type?.getDisplayString(withNullability: true) ?? element.name;

    if (type != null &&
        type is ParameterizedType &&
        (type as ParameterizedType).typeArguments.isNotEmpty) {
      displayType = (type as ParameterizedType)
          .typeArguments
          .first
          .getDisplayString(withNullability: true);
    }

    return Method(
      (b) => b
        ..name = 'resetValue'
        ..lambda = true
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(displayType),
          ),
        )
        ..optionalParameters.addAll([
          Parameter(
            (b) => b
              ..name = 'updateParent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
          Parameter(
            (b) => b
              ..name = 'emitEvent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
        ])
        ..returns = const Reference('void')
        ..body = Code(
          'form.reset(value: $className(value, FormGroup({}), null).formElements().rawValue, updateParent: updateParent, emitEvent:emitEvent)',
        ),
    );
  }

  Method get resetMethod {
    return Method(
      (b) => b
        ..name = 'reset'
        ..lambda = true
        ..optionalParameters.addAll([
          Parameter(
            (b) => b
              ..name = 'updateParent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
          Parameter(
            (b) => b
              ..name = 'emitEvent'
              ..named = true
              ..defaultTo = const Code('true')
              ..type = const Reference('bool'),
          ),
        ])
        ..returns = const Reference('void')
        ..body = const Code(
          'form.reset(value: this.formElements().rawValue, updateParent: updateParent, emitEvent:emitEvent)',
        ),
    );
  }

  List<Method> get fieldFocusMethodList => all.map(focus).toList();

  List<Method> get fieldRemoveMethodList =>
      all.map(remove).whereType<Method>().toList();

  List<Method> get fieldUpdateMethodList =>
      all.map(update).whereType<Method>().toList();

  List<Method> get fieldInsertMethodList =>
      all.map(insert).whereType<Method>().toList();

  List<Method> get fieldClearMethodList =>
      all.map(clear).whereType<Method>().toList();

  List<Method> get fieldPatchMethodList =>
      all.map(patch).whereType<Method>().toList();

  List<Method> get fieldResetMethodList => all.map(reset).toList();

  Method control(ParameterElement field) {
    String displayType = field.type.getDisplayString(withNullability: true);

    // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // generic T => T?
    if (field.type.nullabilitySuffix == NullabilitySuffix.question) {
      displayType = displayType.substring(0, displayType.length - 1);
    }

    final reference = 'FormControl<$displayType>${field.nullabilitySuffix}';

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

  Method formGroup(ParameterElement field) {
    // String displayType = field.type.getDisplayString(withNullability: true);
    //
    // // we need to trim last NullabilitySuffix.question cause FormControl modifies
    // // generic T => T?
    // if (field.type.nullabilitySuffix == NullabilitySuffix.question) {
    //   displayType = displayType.substring(0, displayType.length - 1);
    // }

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

  Method array(ParameterElement field) {
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

  Method addGroupControl(ParameterElement field) {
    final type = field.typeParameter.getDisplayString(withNullability: false);

    final formGroupGenerator = FormGenerator(
        field.typeParameter.element as ClassElement, field.typeParameter);

    return Method(
      (b) => b
        ..name = field.addListItemName
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(type),
          ),
        )
        ..returns = const Reference('void')
        ..body = Code(
          '''
              final formClass = ${formGroupGenerator.className}(value, form, pathBuilder('${field.fieldName}.\${${field.name}${formGroupGenerator.className}.length}'));

              ${field.name}${formGroupGenerator.className}.add(formClass);
              ${field.fieldControlName}${field.nullabilitySuffix}.add(formClass.formElements());''',
        ),
    );
  }

  Method removeGroupControl(ParameterElement field) {
    final formGroupGenerator = FormGenerator(
        field.typeParameter.element as ClassElement, field.typeParameter);

    final formField = '${field.name}${formGroupGenerator.className}';
    final controlField = '${field.fieldControlName}${field.nullabilitySuffix}';

    final typeParameter = (field.type as ParameterizedType).typeArguments.first;

    return Method(
      (b) => b
        ..name = field.removeListItemName
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'i'
              ..type = const Reference('int'),
          ),
        )
        ..returns = const Reference('void')
        ..body = Code(
          '''
              if ($formField.asMap().containsKey(i) &&
                  ($controlField.value ?? []).asMap().containsKey(i)) {
                $formField.removeAt(i);
                
                $formField.asMap().forEach((k, v) {
                  $formField[k] = ${typeParameter}Form(v.model, v.form, pathBuilder("${field.name}.\$k"));
                });
                
                $controlField.removeAt(i);
              }
            ''',
        ),
    );
  }

  Method addGroupControlList(ParameterElement field) {
    final type = field.typeParameter.getDisplayString(withNullability: false);

    return Method(
      (b) => b
        ..name = field.addListItemListName
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference('List<$type>'),
          ),
        )
        ..returns = const Reference('void')
        ..body = Code(
          '''value.map((e) => ${field.addListItemName}(e));''',
        ),
    );
  }

  Method addArrayControl(ParameterElement field) {
    // until https://github.com/joanpablo/reactive_forms/issues/204 is somehow resolved
    final type = field.typeParameter.getDisplayString(withNullability: false);

    final formArrayGenerator = FormArrayGenerator(field, field.typeParameter);

    final validators =
        formArrayGenerator.itemSyncValidatorList(formArrayChecker);
    final asyncValidators =
        formArrayGenerator.itemAsyncValidatorList(formArrayChecker);
    final asyncValidatorsDebounceTime =
        formArrayGenerator.itemAsyncValidatorsDebounceTime(formArrayChecker);
    final disabled = formArrayGenerator.itemDisabled(formArrayChecker);

    return Method(
      (b) => b
        ..name = field.addListItemName
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(type),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'asyncValidators'
              ..named = true
              ..type = const Reference('List<AsyncValidatorFunction>?'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'validators'
              ..named = true
              ..type = const Reference('List<ValidatorFunction>?'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'asyncValidatorsDebounceTime'
              ..named = true
              ..type = const Reference('int?'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'disabled'
              ..named = true
              ..type = const Reference('bool?'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'validatorsApplyMode'
              ..named = true
              ..defaultTo = const Code('ValidatorsApplyMode.merge')
              ..type = const Reference('ValidatorsApplyMode'),
          ),
        )
        ..returns = const Reference('void')
        ..body = Code(
          '''
              List<ValidatorFunction> resultingValidators = $validators; 
              List<AsyncValidatorFunction> resultingAsyncValidators = $asyncValidators;
              
              switch(validatorsApplyMode) { 
                case ValidatorsApplyMode.merge:
                  if(validators != null)
                    resultingValidators.addAll(validators);
                  if(asyncValidators != null)
                    resultingAsyncValidators.addAll(asyncValidators);
                  break;
                case ValidatorsApplyMode.override:
                  if(validators != null)
                    resultingValidators = validators;
                    
                  if(asyncValidators != null)
                    resultingAsyncValidators = asyncValidators;
                  break;
              }
               
              ${field.fieldControlName}${field.nullabilitySuffix}.add(FormControl<$type>(
                value: value, 
                validators: resultingValidators,
                asyncValidators: resultingAsyncValidators,
                asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? $asyncValidatorsDebounceTime,
                disabled: disabled ?? $disabled,
              ));''',
        ),
    );
  }

  List<Method> get fieldControlMethodList => formControls.map(control).toList();

  List<Method> get fieldArrayMethodList => [
        ...formArrays.map(array).toList(),
        ...formGroupArrays.map(array).toList()
      ];

  List<Method> get fieldGroupMethodList => formGroups.map(formGroup).toList();

  List<Method> get addArrayControlMethodList =>
      formArrays.map(addArrayControl).toList();

  List<Method> get addGroupControlMethodList =>
      formGroupArrays.map(addGroupControl).toList();

  List<Method> get removeGroupControlMethodList =>
      formGroupArrays.map(removeGroupControl).toList();

  List<Method> get addGroupControlListMethodList =>
      formGroupArrays.map(addGroupControlList).toList();

  Method get modelMethod => Method(
        (b) {
          final parameterValues = parameters.map((e) {
            if (!e.isReactiveFormAnnotated) {
              final nullabilitySuffix =
                  element.hasNonAnnotatedRequiredParameters ? '' : '?';
              return '${e.fieldName}:${element.name.camelCase}$nullabilitySuffix.${e.fieldName}';
            }

            if (e.isPositional ||
                e.isRequiredPositional ||
                (e.isOptional && e.isPositional)) {
              return e.fieldValueName;
            }

            return '${e.fieldName}:${e.fieldValueName}';
          });

          b
            ..name = 'model'
            ..returns = Reference(element.name)
            ..type = MethodType.getter
            ..lambda = true
            ..body = Code('''
              ${element.name}(${parameterValues.join(', ')})
            ''');
        },
      );

  Constructor get _constructor => Constructor(
        (b) {
          final nullabilitySuffix =
              element.hasNonAnnotatedRequiredParameters ? '' : '?';

          final formGroupInitializers = formGroupGenerators
              .map((name, generator) {
                final item =
                    '${name}Form = ${generator.className}(${element.name.camelCase}$nullabilitySuffix.$name, form, pathBuilder(\'$name\'));';

                return MapEntry(name, item);
              })
              .values
              .toList();

          formGroupInitializers.addAll(
            formGroupArrays.map(
              (e) {
                final typeParameter =
                    (e.type as ParameterizedType).typeArguments.first;

                final defaultValue =
                    element.hasNonAnnotatedRequiredParameters ? '' : '?? []';

                final formGenerator =
                    FormGenerator(typeParameter.element! as ClassElement, type);
                return '''${e.name}${formGenerator.className} = (${element.name.camelCase}$nullabilitySuffix.${e.name} $defaultValue)
                  .asMap()
                  .map((k, v) => MapEntry(k, ${formGenerator.className}(v, form, pathBuilder("${e.name}.\$k"))))
                  .values
                  .toList();
                ''';
              },
            ),
          );

          b
            ..requiredParameters.addAll(
              [
                Parameter(
                  (b) => b
                    ..name = element.name.camelCase
                    ..toThis = true,
                ),
                Parameter(
                  (b) => b
                    ..name = 'form'
                    ..toThis = true,
                ),
                Parameter(
                  (b) => b
                    ..name = 'path'
                    ..toThis = true,
                ),
              ],
            )
            ..body = Code('''
              ${formGroupInitializers.join('')}
            ''');
        },
      );

  List<Spec> get generate => [
        Class(
          (b) => b
            ..name = className
            ..implements.add(Reference('FormModel<${element.name}>'))
            ..fields.addAll(
              [
                ...staticFieldNameList,
                ...nestedFormGroupFields,
                Field(
                  (b) {
                    String displayType = type?.getDisplayString(
                            withNullability: true) ??
                        '${element.name}${element.hasNonAnnotatedRequiredParameters ? '' : '?'}';

                    if (type != null &&
                        type is ParameterizedType &&
                        (type as ParameterizedType).typeArguments.isNotEmpty) {
                      final parameterizedType =
                          (type as ParameterizedType).typeArguments.first;

                      displayType = parameterizedType.getDisplayString(
                          withNullability: false);

                      if (parameterizedType.element is ClassElement &&
                          !(parameterizedType.element as ClassElement)
                              .hasNonAnnotatedRequiredParameters) {
                        displayType = '$displayType?';
                      }
                    }

                    b
                      ..name = element.name.camelCase
                      ..modifier = FieldModifier.final$
                      ..type = Reference(displayType);
                  },
                ),
                Field(
                  (b) => b
                    ..name = 'form'
                    ..modifier = FieldModifier.final$
                    ..type = const Reference('FormGroup'),
                ),
                Field(
                  (b) => b
                    ..name = 'path'
                    ..modifier = FieldModifier.final$
                    ..type = const Reference('String?'),
                ),
                ...formGroupArrays.map(
                  (e) {
                    final typeParameter =
                        (e.type as ParameterizedType).typeArguments.first;

                    final formGenerator = FormGenerator(
                        typeParameter.element! as ClassElement, type);

                    return Field(
                      (b) => b
                        ..name = '${e.name}${formGenerator.className}'
                        ..type = Reference('List<${formGenerator.className}>')
                        ..late = true,
                    );
                  },
                ),
              ],
            )
            ..constructors.add(_constructor)
            ..methods.addAll(
              [
                ...fieldControlNameMethodList,
                ...fieldValueMethodList,
                ...fieldContainsMethodList,
                ...fieldErrorsMethodList,
                ...fieldFocusMethodList,
                ...fieldRemoveMethodList,
                ...fieldUpdateMethodList,
                ...fieldInsertMethodList,
                ...fieldClearMethodList,
                ...fieldPatchMethodList,
                ...fieldResetMethodList,
                ...fieldControlMethodList,
                ...fieldArrayMethodList,
                ...fieldGroupMethodList,
                ...addArrayControlMethodList,
                ...addGroupControlMethodList,
                ...removeGroupControlMethodList,
                ...addGroupControlListMethodList,
                modelMethod,
                updateValueMethod,
                resetValueMethod,
                resetMethod,
                Method(
                  (b) => b
                    ..name = 'pathBuilder'
                    ..lambda = true
                    ..requiredParameters.add(
                      Parameter(
                        (b) => b
                          ..name = 'pathItem'
                          ..type = const Reference('String?'),
                      ),
                    )
                    ..returns = const Reference('String')
                    ..body = const Code('''
                      [path, pathItem].whereType<String>().join(".")
                    '''),
                ),
                Method(
                  (b) {
                    b
                      ..name = 'formElements'
                      ..lambda = true
                      ..returns = const Reference('FormGroup')
                      ..body = Code(
                        FormGroupGenerator(
                          e.ParameterElementImpl(
                            name: 'FakeParameterElement',
                            nameOffset: 20,
                            parameterKind: u.ParameterKind.REQUIRED,
                          )..type = t.InterfaceTypeImpl(
                              element: element,
                              typeArguments: [],
                              nullabilitySuffix: NullabilitySuffix.none,
                            ),
                          type ??
                              t.InterfaceTypeImpl(
                                element: element,
                                typeArguments: element.thisType.typeArguments,
                                nullabilitySuffix:
                                    element.hasNonAnnotatedRequiredParameters
                                        ? NullabilitySuffix.none
                                        : NullabilitySuffix.question,
                              ),
                        ).element(),
                      );
                  },
                )
              ],
            ),
        ),
        ...formGroupGenerators.values.map((e) => e.generate).expand((e) => e),
        ...nestedFormGroupGenerators.values
            .map((e) => e.generate)
            .expand((e) => e),
      ];
}
