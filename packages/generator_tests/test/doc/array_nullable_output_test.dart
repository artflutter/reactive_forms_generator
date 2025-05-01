@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'array_nullable_output';

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

            @Rf(output: true)
            class ArrayNullableO {
              final List<String> emailList;
            
              final List<bool?> fruitList;
            
              final List<String?>? vegetablesList;
            
              final List<String?>? someList;
            
              final List<UserMode?>? modeList;
            
              ArrayNullableO({
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
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'array_nullable_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveArrayNullableOFormConsumer extends StatelessWidget {
  const ReactiveArrayNullableOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, ArrayNullableOForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArrayNullableOForm.of(context);

    if (formModel is! ArrayNullableOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ArrayNullableOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ArrayNullableOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ArrayNullableOForm form;
}

class ReactiveArrayNullableOForm extends StatelessWidget {
  const ReactiveArrayNullableOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final ArrayNullableOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static ArrayNullableOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ArrayNullableOFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ArrayNullableOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ArrayNullableOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ArrayNullableOFormInheritedStreamer(
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

extension ReactiveReactiveArrayNullableOFormExt on BuildContext {
  ArrayNullableOForm? arrayNullableOFormWatch() =>
      ReactiveArrayNullableOForm.of(this);

  ArrayNullableOForm? arrayNullableOFormRead() =>
      ReactiveArrayNullableOForm.of(this, listen: false);
}

class ArrayNullableOFormBuilder extends StatefulWidget {
  const ArrayNullableOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ArrayNullableO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
          BuildContext context, ArrayNullableOForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, ArrayNullableOForm formModel)?
      initState;

  @override
  _ArrayNullableOFormBuilderState createState() =>
      _ArrayNullableOFormBuilderState();
}

class _ArrayNullableOFormBuilderState extends State<ArrayNullableOFormBuilder> {
  late ArrayNullableOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        ArrayNullableOForm(ArrayNullableOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logArrayNullableOForm.onRecord.listen((LogRecord e) {
      // use `dumpErrorToConsole` for severe messages to ensure that severe
      // exceptions are formatted consistently with other Flutter examples and
      // avoids printing duplicate exceptions
      if (e.level >= Level.SEVERE) {
        final Object? error = e.error;
        FlutterError.dumpErrorToConsole(
          FlutterErrorDetails(
            exception: error is Exception ? error : Exception(error),
            stack: e.stackTrace,
            library: e.loggerName,
            context: ErrorDescription(e.message),
          ),
        );
      } else {
        log(
          e.message,
          time: e.time,
          sequenceNumber: e.sequenceNumber,
          level: e.level.value,
          name: e.loggerName,
          zone: e.zone,
          error: e.error,
          stackTrace: e.stackTrace,
        );
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ArrayNullableOFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    _logSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveArrayNullableOForm(
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

final _logArrayNullableOForm = Logger.detached('ArrayNullableOForm');

class ArrayNullableOForm
    implements FormModel<ArrayNullableO, ArrayNullableOOutput> {
  ArrayNullableOForm(
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

  List<String?>? get _someListValue => someListControl.value;

  List<String> get _emailListValue =>
      emailListControl.rawValue.whereType<String>().toList();

  List<bool?> get _fruitListValue =>
      fruitListControl.rawValue.whereType<bool?>().toList();

  List<String?>? get _vegetablesListValue =>
      vegetablesListControl.rawValue.whereType<String?>().toList();

  List<UserMode?>? get _modeListValue =>
      modeListControl.rawValue.whereType<UserMode?>().toList();

  List<String?>? get _someListRawValue => someListControl.value;

  List<String> get _emailListRawValue =>
      emailListControl.rawValue.whereType<String>().toList();

  List<bool?> get _fruitListRawValue =>
      fruitListControl.rawValue.whereType<bool?>().toList();

  List<String?>? get _vegetablesListRawValue =>
      vegetablesListControl.rawValue.whereType<String?>().toList();

  List<UserMode?>? get _modeListRawValue =>
      modeListControl.rawValue.whereType<UserMode?>().toList();

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsSomeList {
    try {
      form.control(someListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsEmailList {
    try {
      form.control(emailListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsFruitList {
    try {
      form.control(fruitListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsVegetablesList {
    try {
      form.control(vegetablesListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsModeList {
    try {
      form.control(modeListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get someListErrors => someListControl.errors;

  Map<String, Object> get emailListErrors => emailListControl.errors;

  Map<String, Object> get fruitListErrors => fruitListControl.errors;

  Map<String, Object>? get vegetablesListErrors => vegetablesListControl.errors;

  Map<String, Object>? get modeListErrors => modeListControl.errors;

  void get someListFocus => form.focus(someListControlPath());

  void get emailListFocus => form.focus(emailListControlPath());

  void get fruitListFocus => form.focus(fruitListControlPath());

  void get vegetablesListFocus => form.focus(vegetablesListControlPath());

  void get modeListFocus => form.focus(modeListControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
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

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
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

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
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
    someListControl.updateValue(value,
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
    vegetablesListControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void modeListValueUpdate(
    List<UserMode?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    modeListControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void someListValuePatch(
    List<String?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    someListControl.patchValue(value,
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
    vegetablesListControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void modeListValuePatch(
    List<UserMode?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    modeListControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void someListValueReset(
    List<String?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      someListControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void emailListValueReset(
    List<String> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailListControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void fruitListValueReset(
    List<bool?> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      fruitListControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void vegetablesListValueReset(
    List<String?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      vegetablesListControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void modeListValueReset(
    List<UserMode?>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      modeListControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<List<String?>> get someListControl =>
      form.control(someListControlPath()) as FormControl<List<String?>>;

  FormArray<String> get emailListControl =>
      form.control(emailListControlPath()) as FormArray<String>;

  FormArray<bool> get fruitListControl =>
      form.control(fruitListControlPath()) as FormArray<bool>;

  FormArray<String> get vegetablesListControl =>
      form.control(vegetablesListControlPath()) as FormArray<String>;

  FormArray<UserMode> get modeListControl =>
      form.control(modeListControlPath()) as FormArray<UserMode>;

  List<FormControl<String>> get emailListControlControls =>
      emailListControl.controls.cast<FormControl<String>>();

  List<FormControl<bool>> get fruitListControlControls =>
      fruitListControl.controls.cast<FormControl<bool>>();

  List<FormControl<String>?> get vegetablesListControlControls =>
      vegetablesListControl.controls.cast<FormControl<String>?>();

  List<FormControl<UserMode>?> get modeListControlControls =>
      modeListControl.controls.cast<FormControl<UserMode>?>();

  void someListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      someListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      someListControl.markAsEnabled(
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
      vegetablesListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      vegetablesListControl.markAsEnabled(
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
      modeListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      modeListControl.markAsEnabled(
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

    vegetablesListControl.add(FormControl<String>(
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

    modeListControl.add(FormControl<UserMode>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  @protected
  ArrayNullableOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logArrayNullableOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ArrayNullableOOutput(
        emailList: _emailListValue,
        fruitList: _fruitListValue,
        vegetablesList: _vegetablesListValue,
        modeList: _modeListValue,
        someList: _someListValue);
  }

  @override
  ArrayNullableO get rawModel {
    return ArrayNullableO(
        emailList: _emailListRawValue,
        fruitList: _fruitListRawValue,
        vegetablesList: _vegetablesListRawValue,
        modeList: _modeListRawValue,
        someList: _someListRawValue);
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
  bool equalsTo(ArrayNullableO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      ArrayNullableOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ArrayNullableOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logArrayNullableOForm.info('Errors');
      _logArrayNullableOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ArrayNullableO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ArrayNullableOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ArrayNullableO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(ArrayNullableO? arrayNullableO) => FormGroup({
        emailListControlName: FormArray<String>(
            (arrayNullableO?.emailList ?? [])
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
            (arrayNullableO?.fruitList ?? [])
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
            (arrayNullableO?.vegetablesList ?? [])
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
            (arrayNullableO?.modeList ?? [])
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
            value: arrayNullableO?.someList,
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

@Rf(output: true)
class ArrayNullableOOutput {
  final List<String> emailList;
  final List<bool?> fruitList;
  final List<String?>? vegetablesList;
  final List<String?>? someList;
  final List<UserMode?>? modeList;
  ArrayNullableOOutput(
      {@RfArray(validators: [RequiredValidator()]) required this.emailList,
      @RfArray() this.fruitList = const [],
      @RfArray() this.vegetablesList,
      @RfArray() this.modeList,
      @RfControl<List<String?>>() this.someList});
}

class ReactiveArrayNullableOFormArrayBuilder<
    ReactiveArrayNullableOFormArrayBuilderT> extends StatelessWidget {
  const ReactiveArrayNullableOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveArrayNullableOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveArrayNullableOFormArrayBuilderT>? Function(
      ArrayNullableOForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArrayNullableOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveArrayNullableOFormArrayBuilderT> control,
      ReactiveArrayNullableOFormArrayBuilderT? item,
      ArrayNullableOForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveArrayNullableOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArrayNullableOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveArrayNullableOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveArrayNullableOFormArrayBuilderT>,
                ) ??
                true)
            .toList();

        final itemList = values
            .map((item) {
              return MapEntry(
                item.$1,
                itemBuilder(
                  context,
                  item.$1,
                  formArray.controls[item.$1]
                      as FormControl<ReactiveArrayNullableOFormArrayBuilderT>,
                  item.$2.value,
                  formModel,
                ),
              );
            })
            .map((e) => e.value)
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
          return emptyBuilder!(context);
        }

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

class ReactiveArrayNullableOFormArrayBuilder2<
    ReactiveArrayNullableOFormArrayBuilderT> extends StatelessWidget {
  const ReactiveArrayNullableOFormArrayBuilder2({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveArrayNullableOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveArrayNullableOFormArrayBuilderT>? Function(
      ArrayNullableOForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        ArrayNullableOForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveArrayNullableOFormArrayBuilderT> control,
        ReactiveArrayNullableOFormArrayBuilderT? item,
        ArrayNullableOForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveArrayNullableOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArrayNullableOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveArrayNullableOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveArrayNullableOFormArrayBuilderT>,
                ) ??
                true)
            .toList();

        final itemList = values
            .map((item) {
              return MapEntry(
                item.$1,
                itemBuilder((
                  context: context,
                  i: item.$1,
                  control: formArray.controls[item.$1]
                      as FormControl<ReactiveArrayNullableOFormArrayBuilderT>,
                  item: item.$2.value,
                  formModel: formModel
                )),
              );
            })
            .map((e) => e.value)
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
          return emptyBuilder!(context);
        }

        return builder?.call((
              context: context,
              itemList: itemList,
              formModel: formModel,
            )) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveArrayNullableOFormFormGroupArrayBuilder<
    ReactiveArrayNullableOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveArrayNullableOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveArrayNullableOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveArrayNullableOFormFormGroupArrayBuilderT>>
      Function(ArrayNullableOForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArrayNullableOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveArrayNullableOFormFormGroupArrayBuilderT? item,
      ArrayNullableOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArrayNullableOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveArrayNullableOFormFormGroupArrayBuilderT>[])
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
