// ignore_for_file: implementation_imports
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element2.dart';
import 'package:analyzer/dart/element/nullability_suffix.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/src/dart/element/type.dart' as t;
import 'package:analyzer/src/dart/ast/ast.dart' as u;
import 'package:code_builder/code_builder.dart';
import 'package:reactive_forms_generator/src/extensions.dart';
import 'package:reactive_forms_generator/src/form_elements/form_array_generator.dart';
import 'package:reactive_forms_generator/src/form_elements/form_group_generator.dart';
import 'package:reactive_forms_generator/src/output/helpers.dart';
import 'package:reactive_forms_generator/src/output/rf_annotation_arguments_visitor.dart';
import 'package:reactive_forms_generator/src/output/rf_paramater_visitor.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_form_update_value_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_forms_clear_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_forms_insert_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms/reactive_forms_patch_value_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/contains_method.dart';
import 'package:reactive_forms_generator/src/reactive_forms_generator/control_controls_method.dart';
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

enum ValidatorsApplyMode { merge, override }

class FormGenerator {
  final ClassElement2 root;
  final Set<String> classes;

  final ClassElement2 element;

  final DartType? type;

  final u.AstNode ast;

  final Map<String, FormGenerator> formGroupGenerators = {};

  final Map<String, FormGenerator> nestedFormGroupGenerators = {};

  String get baseName {
    if (element.hasRfAnnotation && root == element) {
      final annotation = element.rfAnnotation;
      return annotation?.getField('name')?.toStringValue() ??
          element.name3 ??
          '<null>';
    }
    return element.name3 ?? '<null>';
  }

  // bool get hasOutput {
  //   if (element.hasRfAnnotation && root == element) {
  //     final annotation = element.rfAnnotation;
  //     return annotation?.getField('output')?.toBoolValue() ?? false;
  //   }
  //
  //   return false;
  // }

  FormGenerator(this.root, this.element, this.type, this.ast, this.classes) {
    for (var e in formGroups) {
      if (!classes.contains(e.className)) {
        classes.add(e.className);

        formGroupGenerators[e.name3 ?? ''] = FormGenerator(
          root,
          e.type.element3! as ClassElement2,
          e.type,
          ast,
          classes,
        );
      }
    }

    for (var e in formGroupArrays) {
      final type = e.type;
      final typeArguments = type is ParameterizedType
          ? type.typeArguments
          : const <DartType>[];

      final typeParameter = typeArguments.first;

      if (!classes.contains(e.className)) {
        classes.add(e.className);
        nestedFormGroupGenerators[e.name3 ?? '<null>'] = FormGenerator(
          root,
          typeParameter.element3! as ClassElement2,
          e.type,
          ast,
          classes,
        );
      }
    }
  }

  List<FormalParameterElement> get all => [
    ...formControls,
    ...formArrays,
    ...formGroups,
    ...formGroupArrays,
  ];

  Iterable<FormalParameterElement> get formControls =>
      parameters.where((e) => e.isFormControl);

  Iterable<FormalParameterElement> get formArrays =>
      parameters.where((e) => e.isFormArray);

  Iterable<FormalParameterElement> get formGroups =>
      parameters.where((e) => e.isFormGroup);

  Iterable<FormalParameterElement> get formGroupArrays =>
      parameters.where((e) => e.isFormGroupArray);

  String get className => '${baseName}Form';

  String get log => '_log$className';

  String get classNameFull {
    return '$className${element.generics}';
  }

  List<FormalParameterElement> get parameters => element.annotatedParameters;

  Iterable<FormalParameterElement> get annotatedParameters =>
      parameters.where((e) => true);

  Field staticFieldName(FormalParameterElement field) => Field(
    (b) => b
      ..static = true
      ..modifier = FieldModifier.constant
      ..type = stringRef
      ..name = field.fieldControlNameName
      ..assignment = Code('"${field.fieldName}"'),
  );

  Field field(FormalParameterElement field) => Field(
    (b) => b
      ..type = stringRef
      ..name = field.fieldName
      ..assignment = Code('"${field.fieldName}"'),
  );

  Method get updateValueMethod {
    return Method(
      (b) => b
        ..name = 'updateValue'
        ..lambda = true
        ..annotations.add(const CodeExpression(Code('override')))
        ..requiredParameters.add(
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(_modelDisplayTypeMaybeNullable),
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
    return Method(
      (b) => b
        ..name = 'reset'
        ..lambda = true
        ..annotations.add(const CodeExpression(Code('override')))
        ..optionalParameters.addAll([
          Parameter(
            (b) => b
              ..name = 'value'
              ..type = Reference(_modelDisplayTypeNullable),
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

  Method addGroupControl(FormalParameterElement field) {
    final type = field.typeParameter.getName(withNullability: false);

    final formGroupGenerator = FormGenerator(
      root,
      field.typeParameter.element3 as ClassElement2,
      field.typeParameter,
      ast,
      classes,
    );

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
              ${field.fieldControlName}.add(${formGroupGenerator.className}.formElements${formGroupGenerator.element.generics}(value));''',
        ),
    );
  }

  Method removeGroupControl(FormalParameterElement field) {
    final controlField = field.fieldControlName;

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
        ..body = Code('''
              if(($controlField.value ?? []).length > i) {
                $controlField.removeAt(i);
              }
            '''),
    );
  }

  Method addGroupControlList(FormalParameterElement field) {
    final type = field.typeParameter.getName(withNullability: false);

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
        ..body = Code('''value.forEach((e) => ${field.addListItemName}(e));'''),
    );
  }

  Method addArrayControl(FormalParameterElement field) {
    // until https://github.com/joanpablo/reactive_forms/issues/204 is somehow resolved
    final formControlType = field.typeParameter.getName(withNullability: false);
    final valueType = field.typeParameter.getName(withNullability: true);

    final formArrayGenerator = FormArrayGenerator(
      root: element,
      formArrayField: field,
      type: field.typeParameter,
    );

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
        ..body = Code('''
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
               
              ${field.fieldControlName}.add(FormControl<$formControlType>(
                value: value, 
                validators: resultingValidators,
                asyncValidators: resultingAsyncValidators,
                asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? $asyncValidatorsDebounceTime,
                disabled: disabled ?? $disabled,
              ));'''),
    );
  }

  Method get modelMethod => Method((b) {
    final parameterValues = parameters.map<String?>((e) {
      if (e.isPositional ||
          e.isRequiredPositional ||
          (e.isOptional && e.isPositional)) {
        return e.fieldValueName;
      }

      return '${e.fieldName}:${e.fieldValueName}';
    }).whereType<String>();

    final referenceType = root.output
        ? element.toReferenceType
        : element.fullTypeName;

    b
      ..name = 'model'
      ..returns = Reference(referenceType)
      ..annotations.addAll([
        const CodeExpression(Code('override')),
        if (root.output) const CodeExpression(Code('protected')),
      ])
      ..type = MethodType.getter
      ..body = Code('''
              final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

              if (!isValid) {
                $log.warning(
                  'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
                  null,
                  StackTrace.current,
                );
              }
              return $referenceType(${parameterValues.join(', ')});
            ''');
  });

  Method get rawModelMethod => Method((b) {
    final parameterValues = parameters.map<String?>((e) {
      if (e.isPositional ||
          e.isRequiredPositional ||
          (e.isOptional && e.isPositional)) {
        return e.fieldRawValueName;
      }

      return '${e.fieldName}:${e.fieldRawValueName}';
    }).whereType<String>();

    final referenceType = element.fullTypeName;

    b
      ..name = 'rawModel'
      ..returns = Reference(referenceType)
      ..annotations.add(const CodeExpression(Code('override')))
      ..type = MethodType.getter
      ..body = Code('''
              return $referenceType(${parameterValues.join(', ')});
            ''');
  });

  Method get toggleDisabledMethod => Method((b) {
    final formGroupsToggleDisabled = formGroups
        .map((e) {
          return '${e.fieldControlForm}.toggleDisabled();';
        })
        .toList()
        .join('');

    final formGroupArraysToggleDisabled = formGroupArrays
        .map((e) {
          final type = e.type;
          final typeArguments = type is ParameterizedType
              ? type.typeArguments
              : const <DartType>[];

          final generator = FormGenerator(
            root,
            typeArguments.first.element3! as ClassElement2,
            e.type,
            ast,
            classes,
          );

          return '${e.name3}${generator.className}.forEach((e) => e.toggleDisabled());';
        })
        .toList()
        .join('');

    b
      ..name = 'toggleDisabled'
      ..returns = Reference(element.fullTypeName)
      ..annotations.add(const CodeExpression(Code('override')))
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
      ..body = Code('''
                final currentFormInstance = currentForm;

                if (currentFormInstance is! FormGroup) {
                  return;
                }
                
              if (_disabled.isEmpty) {
                currentFormInstance.controls.forEach((key, control) {
                  _disabled[key] = control.disabled;
                });
              
                $formGroupArraysToggleDisabled
                $formGroupsToggleDisabled
                currentForm.markAsDisabled(
                    updateParent: updateParent, emitEvent: emitEvent);                
              } else {
                $formGroupArraysToggleDisabled
                $formGroupsToggleDisabled
                currentFormInstance.controls.forEach((key, control) {
                  if (_disabled[key] == false) {
                    currentFormInstance.controls[key]?.markAsEnabled(
                      updateParent: updateParent,
                      emitEvent: emitEvent,
                    );
                  }
                  
                  _disabled.remove(key);
                });
              }
            ''');
  });

  Method get currentFormMethod => Method((b) {
    b
      ..name = 'currentForm'
      ..type = MethodType.getter
      ..returns = const Reference('AbstractControl<dynamic>')
      ..body = const Code('''
              return path == null ? form : form.control(path!);
            ''');
  });

  Method get equalsToMethod => Method((b) {
    b
      ..name = 'equalsTo'
      ..annotations.add(const CodeExpression(Code('override')))
      ..returns = const Reference('bool')
      ..requiredParameters.add(
        Parameter(
          (b) => b
            ..name = 'other'
            ..type = Reference(_modelDisplayTypeMaybeNullable),
        ),
      )
      ..body = Code('''
              final currentForm = this.currentForm;
              
              return const DeepCollectionEquality().equals(
                currentForm is FormControlCollection<dynamic> ? currentForm.rawValue : currentForm.value,
                $className.formElements(other).rawValue,
              );
            ''');
  });

  Method get submitMethod => Method((b) {
    b
      ..name = 'submit'
      ..annotations.add(const CodeExpression(Code('override')))
      ..returns = const Reference('void')
      ..optionalParameters.addAll([
        Parameter(
          (b) => b
            ..name = 'onValid'
            ..named = true
            ..required = true
            ..type = Reference(
              'void Function(${root.output ? element.toReferenceType : element.fullTypeName} model)',
            ),
        ),
        Parameter(
          (b) => b
            ..name = 'onNotValid'
            ..named = true
            ..type = const Reference('void Function()?'),
        ),
      ])
      ..body = Code('''
              currentForm.markAllAsTouched();
              if (currentForm.valid) {
                onValid(model);
              } else {
                $log.info('Errors');
                $log.info('┗━━ \${form.errors}');
                onNotValid?.call();
              }
            ''');
  });

  Code get logging => Code("final $log = Logger.detached('$classNameFull');");

  Constructor get _constructor => Constructor(
    (b) => b
      ..requiredParameters.addAll([
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
      ]),
  );

  String get _modelDisplayTypeNonNullable {
    String displayType =
        type?.getName(withNullability: false) ?? element.fullTypeName;

    if (type is ParameterizedType &&
        (type as ParameterizedType).isDartCoreList) {
      displayType = (type as ParameterizedType).typeArguments.first.getName(
        withNullability: false,
      );
    }

    return displayType;
  }

  String get _modelDisplayTypeMaybeNullable {
    String displayType = _modelDisplayTypeNonNullable;

    final isNullable =
        type?.nullabilitySuffix == NullabilitySuffix.question ||
        element.isNullable;

    if (isNullable) {
      displayType += '?';
    }

    return displayType;
  }

  String get _modelDisplayTypeNullable {
    return '$_modelDisplayTypeNonNullable?';
  }

  List<Code> test() {
    final ast = this.ast;

    // final classDeclarationVisitor = ClassDeclarationVisitor(root);
    // ast.visitChildren(classDeclarationVisitor);
    //
    // final classNode = classDeclarationVisitor.classDeclaration;

    if (ast is! CompilationUnit) {
      return [];
    }

    // var rfParameterVisitor = RfParameterVisitor();

    // var rfAnnotationCollectorVisitor = RfAnnotationCollectorVisitor();
    // ast.visitChildren(rfParameterVisitor);
    // replaceR(
    //   rfParameterVisitor.fieldDeclaration,
    //   rfParameterVisitor.fieldFormalParameter,
    // );

    // final astDeclaration = classNode as u.ClassDeclarationImpl;
    final renamedClass = ClassRenameVisitor();
    ast.accept(renamedClass);

    final x = ast.declarations;

    return x
        .where(
          (e) =>
              e is u.ClassDeclarationImpl &&
              (e.hasRfAnnotation || e.hasRfGroupAnnotation),
        )
        .map((e) {
          final rfParameterVisitor2 = RfParameterVisitor2();
          e.accept(rfParameterVisitor2);

          final rfParameterVisitor = RfParameterVisitor(
            requiredValidators: root.requiredValidators,
          );
          e.accept(rfParameterVisitor);
          replaceR(
            rfParameterVisitor.fieldDeclaration,
            rfParameterVisitor.fieldFormalParameter,
          );

          return Code(e.toSource());
        })
        .toList();
  }

  List<Spec> get generate2 {
    if (root.output) {
      return test();
    }

    return [];
  }

  List<Spec> get generate {
    // if (classes.contains(className)) {
    //   return [];
    // }

    // classes.add(className);
    return [
      logging,
      Class(
        (b) => b
          ..name = className
          ..types.addAll(element.fullGenericTypes)
          ..implements.add(
            Reference(
              'FormModel<${element.fullTypeName}, ${root.output ? element.toReferenceType : element.fullTypeName}>',
            ),
          )
          ..fields.addAll([
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
            Field(
              (b) => b
                ..name = '_disabled'
                ..modifier = FieldModifier.final$
                ..assignment = const Code('{}')
                ..type = const Reference('Map<String, bool>'),
            ),
          ])
          ..constructors.add(_constructor)
          ..methods.addAll([
            ...fieldControlNameMethodList,
            ...fieldValueMethodList,
            ...fieldRawValueMethodList,
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
            ...controlMethod2List,
            ...controlControlsMethodList,
            ...formGroupMethodList,
            ...formArrayMethodList,
            ...controlSetDisabledMethodList,
            ...extendedControlMethodList,
            ...addArrayControlMethodList,
            ...addGroupControlMethodList,
            ...removeGroupControlMethodList,
            ...addGroupControlListMethodList,
            modelMethod,
            rawModelMethod,
            toggleDisabledMethod,
            equalsToMethod,
            submitMethod,
            currentFormMethod,
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
            Method((b) {
              b
                ..name = 'formElements${element.fullGenerics}'
                ..static = true
                ..lambda = true
                ..requiredParameters.add(
                  Parameter(
                    (b) => b
                      ..name = element.name3?.camelCase ?? '<null>'
                      ..type = Reference(_modelDisplayTypeMaybeNullable),
                  ),
                )
                ..returns = const Reference('FormGroup')
                ..body = Code(
                  FormGroupGenerator(
                    root: root,
                    formGroupField: element,
                    // e.FormalParameterElementImpl(
                    //   e.ParameterElementImpl(
                    //     name2: 'FakeParameterElement',
                    //     name: 'FakeParameterElement',
                    //     nameOffset: 20,
                    //     parameterKind: u.ParameterKind.REQUIRED,
                    //     nameOffset2: 20,
                    //   )
                    //     ..enclosingElement3 =
                    //         (e.ConstructorElement2Impl('aa', element)
                    //           ..enclosingElement3 =
                    //               element as e.ClassElementImpl2)
                    //     ..type = t.InterfaceTypeImpl(
                    //       element: (element.thisType as t.InterfaceTypeImpl)
                    //           .element3,
                    //       typeArguments: element.thisType.typeArguments
                    //           as List<t.TypeImpl>,
                    //       nullabilitySuffix: NullabilitySuffix.none,
                    //     ),
                    // ),
                    type:
                        type ??
                        t.InterfaceTypeImpl(
                          element: (element.thisType as t.InterfaceTypeImpl)
                              .element3,
                          typeArguments:
                              element.thisType.typeArguments
                                  as List<t.TypeImpl>,
                          nullabilitySuffix: element.isNullable
                              ? NullabilitySuffix.question
                              : NullabilitySuffix.none,
                        ),
                  ).element(),
                );
            }),
          ]),
      ),
      ...formGroupGenerators.values.map((e) => e.generate).expand((e) => e),
      ...nestedFormGroupGenerators.values
          .map((e) => e.generate)
          .expand((e) => e),
    ];
  }

  Iterable<Method> get formGroupMethodList {
    return formGroups.map<Method>((e) {
      return Method(
        (b) => b
          ..lambda = true
          ..returns = Reference('${e.className}${element.generics}')
          ..name = '${e.name3}Form'
          ..type = MethodType.getter
          ..body = Code('${e.className}(form, pathBuilder(\'${e.name3}\'))'),
      );
    });
  }

  Iterable<Method> get formArrayMethodList {
    return formGroupArrays.map((e) {
      final typeParameter = (e.type as ParameterizedType).typeArguments.first;

      final generator = FormGenerator(
        root,
        typeParameter.element3! as ClassElement2,
        type,
        ast,
        classes,
      );

      return Method(
        (b) => b
          ..returns = Reference('List<${generator.className}>')
          ..name = '${e.name3}${generator.className}'
          ..type = MethodType.getter
          ..body = Code('''
                final values = ${e.fieldControlName}.controls.map((e) => e.value).toList();
                
                return values
                .asMap()
                .map((k, v) => MapEntry(k, ${generator.className}(form, pathBuilder("${e.name3}.\$k"))))
                .values
                .toList();
              '''),
      );
    });
  }

  Iterable<Method> get fieldContainsMethodList => all
      .map(
        (e) => ContainsMethod(e, root.output, root.requiredValidators).method(),
      )
      .whereType<Method>();

  Iterable<Method> get fieldValueMethodList => all
      .map(
        (e) =>
            FieldValueMethod(e, root.output, root.requiredValidators).method(),
      )
      .whereType<Method>();

  Iterable<Method> get fieldRawValueMethodList => all
      .map((e) => FieldRawValueMethod(e, false, []).method())
      .whereType<Method>();

  Iterable<Method> get fieldControlNameMethodList => all
      .map(
        (e) =>
            ControlPathMethod(e, root.output, root.requiredValidators).method(),
      )
      .whereType<Method>();

  Iterable<Field> get staticFieldNameList =>
      annotatedParameters.map(staticFieldName);

  Iterable<Method> get fieldErrorsMethodList => all
      .map(
        (e) => ErrorsMethod(e, root.output, root.requiredValidators).method(),
      )
      .whereType<Method>();

  Iterable<Field> get fieldNameList => annotatedParameters.map(field);

  Iterable<Method> get fieldFocusMethodList => all
      .map((e) => FocusMethod(e, root.output, root.requiredValidators).method())
      .whereType<Method>();

  Iterable<Method> get fieldRemoveMethodList => all
      .map(
        (e) => RemoveMethod(e, root.output, root.requiredValidators).method(),
      )
      .whereType<Method>();

  Iterable<Method> get fieldUpdateMethodList => all
      .map(
        (e) => ReactiveFormUpdateValueMethod(
          e,
          root.output,
          root.requiredValidators,
        ).method(),
      )
      .whereType<Method>();

  Iterable<Method> get fieldInsertMethodList => all
      .map(
        (e) => ReactiveFormInsertMethod(
          e,
          root.output,
          root.requiredValidators,
        ).method(),
      )
      .whereType<Method>();

  Iterable<Method> get fieldClearMethodList => all
      .map(
        (e) => ReactiveFormClearMethod(
          e,
          root.output,
          root.requiredValidators,
        ).method(),
      )
      .whereType<Method>();

  Iterable<Method> get fieldPatchMethodList => all
      .map(
        (e) => ReactiveFormPatchValueMethod(
          e,
          root.output,
          root.requiredValidators,
        ).method(),
      )
      .whereType<Method>();

  Iterable<Method> get fieldResetMethodList => all
      .map((e) => ResetMethod(e, root.output, root.requiredValidators).method())
      .whereType<Method>();

  Iterable<Method> get controlMethodList => all
      .map(
        (e) => ControlMethod(e, root.output, root.requiredValidators).method(),
      )
      .whereType<Method>();

  Iterable<Method> get controlMethod2List => all
      .map(
        (e) => ControlMethod2(e, root.output, root.requiredValidators).method(),
      )
      .whereType<Method>();

  Iterable<Method> get controlPrivateMethodList => all
      .map(
        (e) => ControlPrivateMethod(
          e,
          root.output,
          root.requiredValidators,
        ).method(),
      )
      .whereType<Method>();

  Iterable<Method> get controlControlsMethodList => all
      .map(
        (e) => ControlControlsMethod(
          e,
          root.output,
          root.requiredValidators,
        ).method(),
      )
      .whereType<Method>();

  Iterable<Method> get controlSetDisabledMethodList => all
      .map(
        (e) => ControlSetDisableMethod(
          e,
          root.output,
          root.requiredValidators,
        ).method(),
      )
      .whereType<Method>();

  Iterable<Method> get extendedControlMethodList => all
      .map(
        (e) => ExtendedControlMethod(
          e,
          root.output,
          root.requiredValidators,
        ).method(),
      )
      .whereType<Method>();

  Iterable<Method> get addArrayControlMethodList =>
      formArrays.map(addArrayControl);

  Iterable<Method> get addGroupControlMethodList =>
      formGroupArrays.map(addGroupControl);

  Iterable<Method> get removeGroupControlMethodList =>
      formGroupArrays.map(removeGroupControl);

  Iterable<Method> get addGroupControlListMethodList =>
      formGroupArrays.map(addGroupControlList);
}
