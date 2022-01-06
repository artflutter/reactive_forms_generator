@Timeout(Duration(seconds: 145))

import 'package:test/test.dart';

import 'helpers.dart';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with array nullable types',
      () async {
        return testGenerator(
          model: r'''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            import 'package:example/helpers.dart';
            
            part 'gen.gform.dart';
            
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
                
                @FormControlAnnotation()
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

const generatedFile = r'''// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveArrayNullableFormConsumer extends StatelessWidget {
  const ReactiveArrayNullableFormConsumer(
      {Key? key, required this.builder, this.child})
      : super(key: key);

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
  const ArrayNullableFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final ArrayNullableForm form;
}

class ReactiveArrayNullableForm extends StatelessWidget {
  const ReactiveArrayNullableForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final ArrayNullableForm form;

  final WillPopCallback? onWillPop;

  static ArrayNullableForm? of(BuildContext context, {bool listen = true}) {
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
  const ArrayNullableFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final ArrayNullable model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ArrayNullableForm formModel, Widget? child) builder;

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

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveArrayNullableForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveForm(
        formGroup: _form,
        onWillPop: widget.onWillPop,
        child: widget.builder(context, _formModel, widget.child),
      ),
    );
  }
}

class ArrayNullableForm implements FormModel<ArrayNullable> {
  ArrayNullableForm(this.arrayNullable, this.form, this.path) {}

  static String emailListControlName = "emailList";

  static String fruitListControlName = "fruitList";

  static String vegetablesListControlName = "vegetablesList";

  static String someListControlName = "someList";

  final ArrayNullable arrayNullable;

  final FormGroup form;

  final String? path;

  String someListControlPath() => pathBuilder(someListControlName);
  String emailListControlPath() => pathBuilder(emailListControlName);
  String fruitListControlPath() => pathBuilder(fruitListControlName);
  String vegetablesListControlPath() => pathBuilder(vegetablesListControlName);
  List<String?>? get someListValue => someListControl?.value;
  List<String> get emailListValue =>
      emailListControl.value?.whereType<String>().toList() ?? [];
  List<bool?> get fruitListValue =>
      fruitListControl.value?.whereType<bool?>().toList() ?? [];
  List<String?>? get vegetablesListValue =>
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
  void someListRemove({bool updateParent = true, bool emitEvent = true}) {
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

  void vegetablesListRemove({bool updateParent = true, bool emitEvent = true}) {
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

  void someListValueUpdate(List<String?>? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      someListControl?.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void emailListValueUpdate(List<String> value,
          {bool updateParent = true, bool emitEvent = true}) =>
      emailListControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void fruitListValueUpdate(List<bool?> value,
          {bool updateParent = true, bool emitEvent = true}) =>
      fruitListControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void vegetablesListValueUpdate(List<String?>? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      vegetablesListControl?.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void someListValuePatch(List<String?>? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      someListControl?.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void emailListValuePatch(List<String> value,
          {bool updateParent = true, bool emitEvent = true}) =>
      emailListControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void fruitListValuePatch(List<bool?> value,
          {bool updateParent = true, bool emitEvent = true}) =>
      fruitListControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void vegetablesListValuePatch(List<String?>? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      vegetablesListControl?.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void someListValueReset(List<String?>? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      someListControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void emailListValueReset(List<String> value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      emailListControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void fruitListValueReset(List<bool?> value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      fruitListControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void vegetablesListValueReset(List<String?>? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
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
  void addEmailListItem(String value,
      {List<AsyncValidatorFunction>? asyncValidators,
      List<ValidatorFunction>? validators,
      int? asyncValidatorsDebounceTime,
      bool? disabled,
      ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge}) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) resultingValidators.addAll(validators);
        if (asyncValidators != null)
          resultingAsyncValidators.addAll(asyncValidators);
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) resultingValidators = validators;

        if (asyncValidators != null) resultingAsyncValidators = asyncValidators;
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

  void addFruitListItem(bool value,
      {List<AsyncValidatorFunction>? asyncValidators,
      List<ValidatorFunction>? validators,
      int? asyncValidatorsDebounceTime,
      bool? disabled,
      ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge}) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) resultingValidators.addAll(validators);
        if (asyncValidators != null)
          resultingAsyncValidators.addAll(asyncValidators);
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) resultingValidators = validators;

        if (asyncValidators != null) resultingAsyncValidators = asyncValidators;
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

  void addVegetablesListItem(String value,
      {List<AsyncValidatorFunction>? asyncValidators,
      List<ValidatorFunction>? validators,
      int? asyncValidatorsDebounceTime,
      bool? disabled,
      ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge}) {
    List<ValidatorFunction> resultingValidators = [];
    List<AsyncValidatorFunction> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) resultingValidators.addAll(validators);
        if (asyncValidators != null)
          resultingAsyncValidators.addAll(asyncValidators);
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) resultingValidators = validators;

        if (asyncValidators != null) resultingAsyncValidators = asyncValidators;
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

  ArrayNullable get model => ArrayNullable(
      emailList: emailListValue,
      fruitList: fruitListValue,
      vegetablesList: vegetablesListValue,
      someList: someListValue);
  void updateValue(ArrayNullable value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          ArrayNullableForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(ArrayNullable value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: ArrayNullableForm(value, FormGroup({}), null)
              .formElements()
              .rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: this.formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        emailListControlName: FormArray<String>(
            arrayNullable.emailList
                .map((e) => FormControl<String>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        fruitListControlName: FormArray<bool>(
            arrayNullable.fruitList
                .map((e) => FormControl<bool>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        vegetablesListControlName: FormArray<String>(
            arrayNullable.vegetablesList
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
            value: arrayNullable.someList,
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
''';
