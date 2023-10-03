import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';

// ignore: implementation_imports
import 'package:analyzer/src/dart/element/element.dart' as e;

// ignore: implementation_imports
import 'package:analyzer/src/dart/element/type.dart' as t;

// ignore: implementation_imports
import 'package:analyzer/src/generated/utilities_dart.dart' as u;
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/form_elements/form_array_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_group_generator.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_update_value_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_forms_clear_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_forms_insert_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_forms_patch_value_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/contains_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/control_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/control_path_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/control_private_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/control_set_enabled_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/errors_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/extended_control_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/field_value_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/focus_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/remove_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/reset_method.dart';
import 'package:reactive_forms_generator/src/types.dart';
import 'package:recase/recase.dart';

import 'library_builder.dart';

enum ValidatorsApplyMode {
  merge,
  override,
}

class FormGenerator {
  final ClassElement root;

  final ClassElement element;

  final DartType? type;

  final Map<String, FormGenerator> formGroupGenerators = {};

  final Map<String, FormGenerator> nestedFormGroupGenerators = {};

  String get baseName {
    if (element.hasRfAnnotation && root == element) {
      final annotation = element.rfAnnotation;
      return annotation?.getField('name')?.toStringValue() ?? element.name;
    }
    return element.name;
  }

  FormGenerator(this.root, this.element, this.type) {
    for (var e in formGroups) {
      formGroupGenerators[e.name] = FormGenerator(
        root,
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
        root,
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

  Iterable<ParameterElement> get formControls => parameters.where(
        (e) => e.isFormControl,
      );

  Iterable<ParameterElement> get formArrays => parameters.where(
        (e) => e.isFormArray,
      );

  Iterable<ParameterElement> get formGroups => parameters.where(
        (e) => e.isFormGroup,
      );

  Iterable<ParameterElement> get formGroupArrays => parameters.where(
        (e) => e.isFormGroupArray,
      );

  String get className => '${baseName}Form';

  String get classNameFull {
    return '$className${element.generics}';
  }

  List<ParameterElement> get parameters => element.annotatedParameters;

  Iterable<ParameterElement> get annotatedParameters =>
      parameters.where((e) => true);

  Field staticFieldName(ParameterElement field) => Field(
        (b) => b
          ..static = true
          ..modifier = FieldModifier.constant
          ..type = stringRef
          ..name = field.fieldControlNameName
          ..assignment = Code('"${field.fieldName}"'),
      );

  Field field(ParameterElement field) => Field(
        (b) => b
          ..type = stringRef
          ..name = field.fieldName
          ..assignment = Code('"${field.fieldName}"'),
      );

  Method get updateValueMethod {
    String displayType =
        type?.getDisplayString(withNullability: true) ?? element.fullTypeName;

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
        ..annotations.add(const CodeExpression(Code('override')))
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
          'form.updateValue($className.formElements(value).rawValue, updateParent: updateParent, emitEvent:emitEvent)',
        ),
    );
  }

  Method get resetMethod {
    String displayType =
        type?.getDisplayString(withNullability: false) ?? element.fullTypeName;

    if (type != null &&
        type is ParameterizedType &&
        (type as ParameterizedType).typeArguments.isNotEmpty) {
      displayType = (type as ParameterizedType)
          .typeArguments
          .first
          .getDisplayString(withNullability: false);
    }

    return Method(
      (b) => b
        ..name = 'reset'
        ..lambda = true
        ..annotations.add(const CodeExpression(Code('override')))
        ..optionalParameters.addAll([
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference('$displayType?'),
          ),
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
          'form.reset(value: value != null ? formElements(value).rawValue : null, updateParent: updateParent, emitEvent:emitEvent)',
        ),
    );
  }

  Method addGroupControl(ParameterElement field) {
    final type = field.typeParameter.getDisplayString(withNullability: false);

    final formGroupGenerator = FormGenerator(
        root, field.typeParameter.element as ClassElement, field.typeParameter);

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
              ${field.fieldControlName}${field.nullabilitySuffix}.add(${formGroupGenerator.className}.formElements${formGroupGenerator.element.generics}(value));''',
        ),
    );
  }

  Method removeGroupControl(ParameterElement field) {
    final controlField = '${field.fieldControlName}${field.nullabilitySuffix}';

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
              if(($controlField.value ?? []).length > i) {
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
    final formControlType =
        field.typeParameter.getDisplayString(withNullability: false);
    final valueType =
        field.typeParameter.getDisplayString(withNullability: true);

    final formArrayGenerator =
        FormArrayGenerator(element, field, field.typeParameter);

    final validators = formArrayGenerator.itemValidators;
    final asyncValidators = formArrayGenerator.itemAsyncValidators;

    final asyncValidatorsDebounceTime =
        formArrayGenerator.itemAsyncValidatorsDebounceTime;
    final disabled = formArrayGenerator.itemDisabled;

    return Method(
      (b) => b
        ..name = field.addListItemName
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(valueType),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'asyncValidators'
              ..named = true
              ..type = const Reference('List<AsyncValidator<dynamic>>?'),
          ),
        )
        ..optionalParameters.add(
          Parameter(
            (b) => b
              ..name = 'validators'
              ..named = true
              ..type = const Reference('List<Validator<dynamic>>?'),
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
              List<Validator<dynamic>> resultingValidators = $validators; 
              List<AsyncValidator<dynamic>> resultingAsyncValidators = $asyncValidators;
              
              switch(validatorsApplyMode) { 
                case ValidatorsApplyMode.merge:
                  if(validators != null) {
                    resultingValidators.addAll(validators);
                  }
                  if(asyncValidators != null) {
                    resultingAsyncValidators.addAll(asyncValidators);
                  }
                  break;
                case ValidatorsApplyMode.override:
                  if(validators != null) {
                    resultingValidators = validators;
                  }
                    
                  if(asyncValidators != null) {
                    resultingAsyncValidators = asyncValidators;
                  }
                  break;
              }
               
              ${field.fieldControlName}${field.nullabilitySuffix}.add(FormControl<$formControlType>(
                value: value, 
                validators: resultingValidators,
                asyncValidators: resultingAsyncValidators,
                asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? $asyncValidatorsDebounceTime,
                disabled: disabled ?? $disabled,
              ));''',
        ),
    );
  }

  Method get modelMethod => Method(
        (b) {
          final parameterValues = parameters.map<String?>((e) {
            if (e.isPositional ||
                e.isRequiredPositional ||
                (e.isOptional && e.isPositional)) {
              return e.fieldValueName;
            }

            return '${e.fieldName}:${e.fieldValueName}';
          }).whereType<String>();

          b
            ..name = 'model'
            ..returns = Reference(element.fullTypeName)
            ..annotations.add(const CodeExpression(Code('override')))
            ..type = MethodType.getter
            ..body = Code('''
              final currentForm = path == null ? form : form.control(path!);
            
              if (!currentForm.valid) {
                debugPrint('[\${path ?? '$classNameFull'}]\\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
              }
              return ${element.fullTypeName}(${parameterValues.join(', ')});
            ''');
        },
      );

  Method get submitMethod => Method(
        (b) {
          b
            ..name = 'submit'
            ..annotations.add(const CodeExpression(Code('override')))
            ..returns = const Reference('void')
            ..optionalParameters.addAll(
              [
                Parameter(
                  (b) => b
                    ..name = 'onValid'
                    ..named = true
                    ..required = true
                    ..type = Reference(
                        'void Function(${element.fullTypeName} model)'),
                ),
                Parameter(
                  (b) => b
                    ..name = 'onNotValid'
                    ..named = true
                    ..type = const Reference('void Function()?'),
                ),
              ],
            )
            ..body = const Code('''
              form.markAllAsTouched();
              if (form.valid) {
                onValid(model);
              } else {
                onNotValid?.call();
              }
            ''');
        },
      );

  Constructor get _constructor => Constructor(
        (b) => b
          ..requiredParameters.addAll(
            [
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
          ),
      );

  String get modelDisplayType {
    final nullabilitySuffix = root.isNullable || root != element ? '?' : '';
    String displayType =
        type?.getDisplayString(withNullability: false) ?? element.fullTypeName;

    displayType = '$displayType$nullabilitySuffix';

    if (type != null &&
        type is ParameterizedType &&
        (type as ParameterizedType).typeArguments.isNotEmpty) {
      final parameterizedType = (type as ParameterizedType).typeArguments.first;

      displayType = parameterizedType.getDisplayString(withNullability: false);

      if (parameterizedType.element is ClassElement &&
          (parameterizedType.element as ClassElement).isNullable) {
        displayType = '$displayType?';
      }
    }

    return displayType;
  }

  List<Spec> get generate {
    return [
      Class(
        (b) => b
          ..name = className
          ..types.addAll(element.genericTypes)
          ..implements.add(Reference('FormModel<${element.fullTypeName}>'))
          ..fields.addAll(
            [
              ...staticFieldNameList,
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
              ...controlMethodList,
              ...formGroupMethodList,
              ...formArrayMethodList,
              ...controlSetDisabledMethodList,
              ...extendedControlMethodList,
              ...addArrayControlMethodList,
              ...addGroupControlMethodList,
              ...removeGroupControlMethodList,
              ...addGroupControlListMethodList,
              modelMethod,
              submitMethod,
              updateValueMethod,
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
                    ..name = 'formElements${element.generics}'
                    ..static = true
                    ..lambda = true
                    ..requiredParameters.add(
                      Parameter(
                        (b) => b
                          ..name = element.name.camelCase
                          ..type = Reference(modelDisplayType),
                      ),
                    )
                    ..returns = const Reference('FormGroup')
                    ..body = Code(
                      FormGroupGenerator(
                        root,
                        e.ParameterElementImpl(
                          name: 'FakeParameterElement',
                          nameOffset: 20,
                          parameterKind: u.ParameterKind.REQUIRED,
                        )
                          ..enclosingElement =
                              (e.ConstructorElementImpl('aa', 1)
                                ..enclosingElement = element)
                          ..type = t.InterfaceTypeImpl(
                            element: element,
                            typeArguments: element.thisType.typeArguments,
                            nullabilitySuffix: NullabilitySuffix.none,
                          ),
                        type ??
                            t.InterfaceTypeImpl(
                              element: element,
                              typeArguments: element.thisType.typeArguments,
                              nullabilitySuffix: element.isNullable
                                  ? NullabilitySuffix.question
                                  : NullabilitySuffix.none,
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

  Iterable<Method> get formGroupMethodList =>
      formGroupGenerators.map<String, Method>((name, generator) {
        return MapEntry(
          name,
          Method(
            (b) => b
              ..lambda = true
              ..returns = Reference(generator.className)
              ..name = '${name}Form'
              ..type = MethodType.getter
              ..body = Code(
                '${generator.className}(form, pathBuilder(\'$name\'))',
              ),
          ),
        );
      }).values;

  Iterable<Method> get formArrayMethodList {
    return formGroupArrays.map(
      (e) {
        final typeParameter = (e.type as ParameterizedType).typeArguments.first;

        final generator = FormGenerator(
          root,
          typeParameter.element! as ClassElement,
          type,
        );

        return Method(
          (b) => b
            ..lambda = true
            ..returns = Reference('List<${generator.className}>')
            ..name = '${e.name}${generator.className}'
            ..type = MethodType.getter
            ..body = Code(
              '''
                (${e.fieldControlName}${e.nullabilitySuffix}.value ?? [])
                .asMap()
                .map((k, v) => MapEntry(k, ${generator.className}(form, pathBuilder("${e.name}.\$k"))))
                .values
                .toList()
              ''',
            ),
        );
      },
    );
  }

  Iterable<Method> get fieldContainsMethodList =>
      all.map((e) => ContainsMethod(e).method()).whereType<Method>();

  Iterable<Method> get fieldValueMethodList =>
      all.map((e) => FieldValueMethod(e).method()).whereType<Method>();

  Iterable<Method> get fieldControlNameMethodList =>
      all.map((e) => ControlPathMethod(e).method()).whereType<Method>();

  Iterable<Field> get staticFieldNameList =>
      annotatedParameters.map(staticFieldName);

  Iterable<Method> get fieldErrorsMethodList =>
      all.map((e) => ErrorsMethod(e).method()).whereType<Method>();

  Iterable<Field> get fieldNameList => annotatedParameters.map(field);

  Iterable<Method> get fieldFocusMethodList =>
      all.map((e) => FocusMethod(e).method()).whereType<Method>();

  Iterable<Method> get fieldRemoveMethodList =>
      all.map((e) => RemoveMethod(e).method()).whereType<Method>();

  Iterable<Method> get fieldUpdateMethodList => all
      .map((e) => ReactiveFormUpdateValueMethod(e).method())
      .whereType<Method>();

  Iterable<Method> get fieldInsertMethodList =>
      all.map((e) => ReactiveFormInsertMethod(e).method()).whereType<Method>();

  Iterable<Method> get fieldClearMethodList =>
      all.map((e) => ReactiveFormClearMethod(e).method()).whereType<Method>();

  Iterable<Method> get fieldPatchMethodList => all
      .map((e) => ReactiveFormPatchValueMethod(e).method())
      .whereType<Method>();

  Iterable<Method> get fieldResetMethodList =>
      all.map((e) => ResetMethod(e).method()).whereType<Method>();

  Iterable<Method> get controlMethodList =>
      all.map((e) => ControlMethod(e).method()).whereType<Method>();

  Iterable<Method> get controlPrivateMethodList =>
      all.map((e) => ControlPrivateMethod(e).method()).whereType<Method>();

  Iterable<Method> get controlSetDisabledMethodList =>
      all.map((e) => ControlSetDisableMethod(e).method()).whereType<Method>();

  Iterable<Method> get extendedControlMethodList =>
      all.map((e) => ExtendedControlMethod(e).method()).whereType<Method>();

  Iterable<Method> get addArrayControlMethodList =>
      formArrays.map(addArrayControl);

  Iterable<Method> get addGroupControlMethodList =>
      formGroupArrays.map(addGroupControl);

  Iterable<Method> get removeGroupControlMethodList =>
      formGroupArrays.map(removeGroupControl);

  Iterable<Method> get addGroupControlListMethodList =>
      formGroupArrays.map(addGroupControlList);
}
