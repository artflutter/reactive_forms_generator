@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'array_nullable';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with array nullable types',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
              return Validators.required(control);
            }

            @ReactiveFormAnnotation()
            class ArrayNullable {
              final List<String> emailList;
             
              final List<bool?> fruitList;
            
              final List<String?>? vegetablesList;
            
              final List<String?>? someList;
            
              ArrayNullable({
                @FormArrayAnnotation(
                  validators: const [
                    requiredValidator,
                  ],
                )
                    required this.emailList,
                @FormArrayAnnotation()
                    this.fruitList = const [],
                @FormArrayAnnotation()
                    this.vegetablesList,
                @FormControlAnnotation<List<String?>>()
                    this.someList,
              });
            }
          ''',
          generatedFile: generatedFile,
        );
      },
    );
  });
}

const generatedFile = r'''// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'array_nullable.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveArrayNullableFormConsumer extends StatelessWidget {
  const ReactiveArrayNullableFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ArrayNullableForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArrayNullableForm.of(context);

    if (formModel is! ArrayNullableForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ArrayNullableFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ArrayNullableFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ArrayNullableForm form;
}

class ReactiveArrayNullableForm extends StatelessWidget {
  const ReactiveArrayNullableForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ArrayNullableForm form;

  final WillPopCallback? onWillPop;

  static ArrayNullableForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ArrayNullableFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ArrayNullableFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ArrayNullableFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ArrayNullableFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ArrayNullableFormBuilder extends StatefulWidget {
  const ArrayNullableFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ArrayNullable? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ArrayNullableForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ArrayNullableForm formModel)?
      initState;

  @override
  _ArrayNullableFormBuilderState createState() =>
      _ArrayNullableFormBuilderState();
}

class _ArrayNullableFormBuilderState extends State<ArrayNullableFormBuilder> {
  late FormGroup _form;

  late ArrayNullableForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ArrayNullableForm(widget.model, _form, null);

    final elements = _formModel.formElements();
    _form.setValidators(elements.validators);
    _form.setAsyncValidators(elements.asyncValidators);

    if (elements.disabled) {
      _form.markAsDisabled();
    }

    _form.addAll(elements.controls);

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void dispose() {
    _form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveArrayNullableForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _form,
        onWillPop: widget.onWillPop,
        builder: (BuildContext context, FormGroup formGroup, Widget? child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ArrayNullableForm implements FormModel<ArrayNullable> {
  ArrayNullableForm(
    this.arrayNullable,
    this.form,
    this.path,
  ) {}

  static String emailListControlName = "emailList";

  static String fruitListControlName = "fruitList";

  static String vegetablesListControlName = "vegetablesList";

  static String someListControlName = "someList";

  final ArrayNullable? arrayNullable;

  final FormGroup form;

  final String? path;

  String someListControlPath() => pathBuilder(someListControlName);
  String emailListControlPath() => pathBuilder(emailListControlName);
  String fruitListControlPath() => pathBuilder(fruitListControlName);
  String vegetablesListControlPath() => pathBuilder(vegetablesListControlName);
  List<String?>? get _someListValue => someListControl?.value;
  List<String> get _emailListValue =>
      emailListControl.value?.whereType<String>().toList() ?? [];
  List<bool?> get _fruitListValue =>
      fruitListControl.value?.whereType<bool?>().toList() ?? [];
  List<String?>? get _vegetablesListValue =>
      vegetablesListControl?.value?.whereType<String?>().toList() ?? [];
  bool get containsSomeList {
    try {
      form.control(someListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsEmailList {
    try {
      form.control(emailListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsFruitList {
    try {
      form.control(fruitListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsVegetablesList {
    try {
      form.control(vegetablesListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get someListErrors => someListControl?.errors;
  Object? get emailListErrors => emailListControl.errors;
  Object? get fruitListErrors => fruitListControl.errors;
  Object? get vegetablesListErrors => vegetablesListControl?.errors;
  void get someListFocus => form.focus(someListControlPath());
  void get emailListFocus => form.focus(emailListControlPath());
  void get fruitListFocus => form.focus(fruitListControlPath());
  void get vegetablesListFocus => form.focus(vegetablesListControlPath());
  void someListRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsSomeList) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          someListControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            someListControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void vegetablesListRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsVegetablesList) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          vegetablesListControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            vegetablesListControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void someListValueUpdate(
    List<String?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    someListControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailListValueUpdate(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailListControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fruitListValueUpdate(
    List<bool?> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fruitListControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void vegetablesListValueUpdate(
    List<String?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    vegetablesListControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void someListValuePatch(
    List<String?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    someListControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailListValuePatch(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailListControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void fruitListValuePatch(
    List<bool?> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    fruitListControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void vegetablesListValuePatch(
    List<String?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    vegetablesListControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void someListValueReset(
    List<String?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      someListControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void emailListValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailListControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void fruitListValueReset(
    List<bool?> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fruitListControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void vegetablesListValueReset(
    List<String?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      vegetablesListControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<List<String?>>? get someListControl => containsSomeList
      ? form.control(someListControlPath()) as FormControl<List<String?>>?
      : null;
  FormArray<String> get emailListControl =>
      form.control(emailListControlPath()) as FormArray<String>;
  FormArray<bool> get fruitListControl =>
      form.control(fruitListControlPath()) as FormArray<bool>;
  FormArray<String>? get vegetablesListControl => containsVegetablesList
      ? form.control(vegetablesListControlPath()) as FormArray<String>?
      : null;
  void someListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      someListControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      someListControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void emailListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void fruitListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      fruitListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      fruitListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void vegetablesListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      vegetablesListControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      vegetablesListControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addEmailListItem(
    String value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    emailListControl.add(FormControl<String>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addFruitListItem(
    bool value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    fruitListControl.add(FormControl<bool>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  void addVegetablesListItem(
    String value, {
    List<AsyncValidatorFunction>? asyncValidators,
    List<ValidatorFunction>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    vegetablesListControl?.add(FormControl<String>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  ArrayNullable get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return ArrayNullable(
        emailList: _emailListValue,
        fruitList: _fruitListValue,
        vegetablesList: _vegetablesListValue,
        someList: _someListValue);
  }

  ArrayNullableForm copyWithPath(String? path) {
    return ArrayNullableForm(arrayNullable, form, path);
  }

  void updateValue(
    ArrayNullable value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(
          ArrayNullableForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(
    ArrayNullable value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: ArrayNullableForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        emailListControlName: FormArray<String>(
            arrayNullable?.emailList
                    .map((e) => FormControl<String>(
                          value: e,
                          validators: [],
                          asyncValidators: [],
                          asyncValidatorsDebounceTime: 250,
                          disabled: false,
                        ))
                    .toList() ??
                [],
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        fruitListControlName: FormArray<bool>(
            arrayNullable?.fruitList
                    .map((e) => FormControl<bool>(
                          value: e,
                          validators: [],
                          asyncValidators: [],
                          asyncValidatorsDebounceTime: 250,
                          disabled: false,
                        ))
                    .toList() ??
                [],
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        vegetablesListControlName: FormArray<String>(
            arrayNullable?.vegetablesList
                    ?.map((e) => FormControl<String>(
                          value: e,
                          validators: [],
                          asyncValidators: [],
                          asyncValidatorsDebounceTime: 250,
                          disabled: false,
                        ))
                    .toList() ??
                [],
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        someListControlName: FormControl<List<String?>>(
            value: arrayNullable?.someList,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveArrayNullableFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveArrayNullableFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ArrayNullableForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArrayNullableForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ArrayNullableForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArrayNullableForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<T>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final itemList = (formArray.value ?? [])
            .asMap()
            .map((i, item) {
              return MapEntry(
                i,
                itemBuilder(
                  context,
                  i,
                  item,
                  formModel,
                ),
              );
            })
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveArrayNullableFormFormGroupArrayBuilder<V>
    extends StatelessWidget {
  const ReactiveArrayNullableFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      ArrayNullableForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArrayNullableForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, ArrayNullableForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArrayNullableForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <V>[])
            .asMap()
            .map((i, item) => MapEntry(
                  i,
                  itemBuilder(
                    context,
                    i,
                    item,
                    formModel,
                  ),
                ))
            .values
            .toList();

        return builder?.call(
              context,
              itemList,
              formModel,
            ) ??
            Column(children: itemList);
      },
    );
  }
}
''';
