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
            import 'package:reactive_forms/src/validators/required_validator.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            enum UserMode { user, admin }

            @Rf()
            class ArrayNullable {
              final List<String> emailList;
            
              final List<bool?> fruitList;
            
              final List<String?>? vegetablesList;
            
              final List<String?>? someList;
            
              final List<UserMode?>? modeList;
            
              ArrayNullable({
                @RfArray(
                  validators: [RequiredValidator()],
                )
                required this.emailList,
                @RfArray() this.fruitList = const [],
                @RfArray() this.vegetablesList,
                @RfArray() this.modeList,
                @RfControl<List<String?>>() this.someList,
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
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final ArrayNullableForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

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
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveArrayNullableFormExt on BuildContext {
  ArrayNullableForm? arrayNullableFormWatch() =>
      ReactiveArrayNullableForm.of(this);

  ArrayNullableForm? arrayNullableFormRead() =>
      ReactiveArrayNullableForm.of(this, listen: false);
}

class ArrayNullableFormBuilder extends StatefulWidget {
  const ArrayNullableFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ArrayNullable? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, ArrayNullableForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ArrayNullableForm formModel)?
      initState;

  @override
  _ArrayNullableFormBuilderState createState() =>
      _ArrayNullableFormBuilderState();
}

class _ArrayNullableFormBuilderState extends State<ArrayNullableFormBuilder> {
  late ArrayNullableForm _formModel;

  @override
  void initState() {
    _formModel =
        ArrayNullableForm(ArrayNullableForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ArrayNullableFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveArrayNullableForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

/// Similar to the ArrayNullableFormBuilder but opts out of automatic form lifecycle
/// management.
///
/// See `ArrayNullableFormBuilder.initState` and `ArrayNullableFormBuilder.dispose` for examples
/// of initializing/disposing the formModel.
class ArrayNullableFormModelBuilder extends StatefulWidget {
  const ArrayNullableFormModelBuilder({
    Key? key,
    required this.formModel,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ArrayNullableForm formModel;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, ArrayNullableForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ArrayNullableForm formModel)?
      initState;

  @override
  _ArrayNullableFormModelBuilderState createState() =>
      _ArrayNullableFormModelBuilderState();
}

class _ArrayNullableFormModelBuilderState
    extends State<ArrayNullableFormModelBuilder> {
  late ArrayNullableForm _formModel;

  @override
  void initState() {
    super.initState();

    _formModel = widget.formModel;

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);
  }

  @override
  void didUpdateWidget(covariant ArrayNullableFormModelBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.formModel != oldWidget.formModel) {
      _formModel = widget.formModel;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveArrayNullableForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      // canPop: widget.canPop,
      // onPopInvoked: widget.onPopInvoked,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        canPop: widget.canPop,
        onPopInvoked: widget.onPopInvoked,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ArrayNullableForm implements FormModel<ArrayNullable> {
  ArrayNullableForm(
    this.form,
    this.path,
  );

  static const String emailListControlName = "emailList";

  static const String fruitListControlName = "fruitList";

  static const String vegetablesListControlName = "vegetablesList";

  static const String modeListControlName = "modeList";

  static const String someListControlName = "someList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String someListControlPath() => pathBuilder(someListControlName);

  String emailListControlPath() => pathBuilder(emailListControlName);

  String fruitListControlPath() => pathBuilder(fruitListControlName);

  String vegetablesListControlPath() => pathBuilder(vegetablesListControlName);

  String modeListControlPath() => pathBuilder(modeListControlName);

  List<String?>? get _someListValue => someListControl?.value;

  List<String> get _emailListValue =>
      emailListControl.value?.whereType<String>().toList() ?? [];

  List<bool?> get _fruitListValue =>
      fruitListControl.value?.whereType<bool?>().toList() ?? [];

  List<String?>? get _vegetablesListValue =>
      vegetablesListControl?.value?.whereType<String?>().toList() ?? [];

  List<UserMode?>? get _modeListValue =>
      modeListControl?.value?.whereType<UserMode?>().toList() ?? [];

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

  bool get containsModeList {
    try {
      form.control(modeListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get someListErrors => someListControl?.errors;

  Map<String, Object> get emailListErrors => emailListControl.errors;

  Map<String, Object> get fruitListErrors => fruitListControl.errors;

  Map<String, Object>? get vegetablesListErrors =>
      vegetablesListControl?.errors;

  Map<String, Object>? get modeListErrors => modeListControl?.errors;

  void get someListFocus => form.focus(someListControlPath());

  void get emailListFocus => form.focus(emailListControlPath());

  void get fruitListFocus => form.focus(fruitListControlPath());

  void get vegetablesListFocus => form.focus(vegetablesListControlPath());

  void get modeListFocus => form.focus(modeListControlPath());

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

  void modeListRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsModeList) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          modeListControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            modeListControlName,
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

  void modeListValueUpdate(
    List<UserMode?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    modeListControl?.updateValue(value,
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

  void modeListValuePatch(
    List<UserMode?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    modeListControl?.patchValue(value,
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

  void modeListValueReset(
    List<UserMode?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      modeListControl?.reset(
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

  FormArray<UserMode>? get modeListControl => containsModeList
      ? form.control(modeListControlPath()) as FormArray<UserMode>?
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

  void modeListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      modeListControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      modeListControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addEmailListItem(
    String value, {
    List<AsyncValidator<dynamic>>? asyncValidators,
    List<Validator<dynamic>>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<Validator<dynamic>> resultingValidators = [];
    List<AsyncValidator<dynamic>> resultingAsyncValidators = [];

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
    bool? value, {
    List<AsyncValidator<dynamic>>? asyncValidators,
    List<Validator<dynamic>>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<Validator<dynamic>> resultingValidators = [];
    List<AsyncValidator<dynamic>> resultingAsyncValidators = [];

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
    String? value, {
    List<AsyncValidator<dynamic>>? asyncValidators,
    List<Validator<dynamic>>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<Validator<dynamic>> resultingValidators = [];
    List<AsyncValidator<dynamic>> resultingAsyncValidators = [];

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

  void addModeListItem(
    UserMode? value, {
    List<AsyncValidator<dynamic>>? asyncValidators,
    List<Validator<dynamic>>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<Validator<dynamic>> resultingValidators = [];
    List<AsyncValidator<dynamic>> resultingAsyncValidators = [];

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

    modeListControl?.add(FormControl<UserMode>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  ArrayNullable get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'ArrayNullableForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return ArrayNullable(
        emailList: _emailListValue,
        fruitList: _fruitListValue,
        vegetablesList: _vegetablesListValue,
        modeList: _modeListValue,
        someList: _someListValue);
  }

  @override
  void toggleDisabled({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final currentFormInstance = currentForm;

    if (currentFormInstance is! FormGroup) {
      return;
    }

    if (_disabled.isEmpty) {
      currentFormInstance.controls.forEach((key, control) {
        _disabled[key] = control.disabled;
      });

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
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
  }

  @override
  void submit({
    required void Function(ArrayNullable model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ArrayNullable? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ArrayNullableForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ArrayNullable? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ArrayNullable? arrayNullable) => FormGroup({
        emailListControlName: FormArray<String>(
            (arrayNullable?.emailList ?? [])
                .map((e) => FormControl<String>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        fruitListControlName: FormArray<bool>(
            (arrayNullable?.fruitList ?? [])
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
            (arrayNullable?.vegetablesList ?? [])
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
        modeListControlName: FormArray<UserMode>(
            (arrayNullable?.modeList ?? [])
                .map((e) => FormControl<UserMode>(
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

class ReactiveArrayNullableFormArrayBuilder<
    ReactiveArrayNullableFormArrayBuilderT> extends StatelessWidget {
  const ReactiveArrayNullableFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveArrayNullableFormArrayBuilderT>? formControl;

  final FormArray<ReactiveArrayNullableFormArrayBuilderT>? Function(
      ArrayNullableForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArrayNullableForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveArrayNullableFormArrayBuilderT? item,
      ArrayNullableForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArrayNullableForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveArrayNullableFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.map((e) => e.value).toList();
        final itemList = values
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

class ReactiveArrayNullableFormFormGroupArrayBuilder<
    ReactiveArrayNullableFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveArrayNullableFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveArrayNullableFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveArrayNullableFormFormGroupArrayBuilderT>>
      Function(ArrayNullableForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArrayNullableForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveArrayNullableFormFormGroupArrayBuilderT? item,
      ArrayNullableForm formModel) itemBuilder;

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
        final itemList = (value.value() ??
                <ReactiveArrayNullableFormFormGroupArrayBuilderT>[])
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
