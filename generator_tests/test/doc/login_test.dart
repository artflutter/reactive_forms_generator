@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'login';

void main() {
  group('doc', () {
    test(
      'Login',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:example/helpers.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
              return Validators.required(control);
            }
            
            @ReactiveFormAnnotation()
            class Basic {
              final String email;
            
              final String password;
            
              Basic({
                @FormControlAnnotation(
                  validators: [requiredValidator],
                )
                    this.email = '',
                @FormControlAnnotation(
                  validators: [requiredValidator],
                )
                    this.password = '',
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

part of 'login.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveBasicFormConsumer extends StatelessWidget {
  const ReactiveBasicFormConsumer({Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, BasicForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveBasicForm.of(context);

    if (formModel is! BasicForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class BasicFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const BasicFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final BasicForm form;
}

class ReactiveBasicForm extends StatelessWidget {
  const ReactiveBasicForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final BasicForm form;

  final WillPopCallback? onWillPop;

  static BasicForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<BasicFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<BasicFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as BasicFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return BasicFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class BasicFormBuilder extends StatefulWidget {
  const BasicFormBuilder(
      {Key? key, this.model, this.child, this.onWillPop, required this.builder})
      : super(key: key);

  final Basic? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, BasicForm formModel, Widget? child) builder;

  @override
  _BasicFormBuilderState createState() => _BasicFormBuilderState();
}

class _BasicFormBuilderState extends State<BasicFormBuilder> {
  late FormGroup _form;

  late BasicForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = BasicForm(widget.model, _form, null);

    final elements = _formModel.formElements();
    _form.setValidators(elements.validators);
    _form.setAsyncValidators(elements.asyncValidators);

    if (elements.disabled) {
      _form.markAsDisabled();
    }

    _form.addAll(elements.controls);

    super.initState();
  }

  @override
  void dispose() {
    _form.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveBasicForm(
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

class BasicForm implements FormModel<Basic> {
  BasicForm(this.basic, this.form, this.path) {}

  static String emailControlName = "email";

  static String passwordControlName = "password";

  final Basic? basic;

  final FormGroup form;

  final String? path;

  String emailControlPath() => pathBuilder(emailControlName);
  String passwordControlPath() => pathBuilder(passwordControlName);
  String get emailValue => emailControl.value as String;
  String get passwordValue => passwordControl.value as String;
  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPassword {
    try {
      form.control(passwordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get emailErrors => emailControl.errors;
  Object? get passwordErrors => passwordControl.errors;
  void get emailFocus => form.focus(emailControlPath());
  void get passwordFocus => form.focus(passwordControlPath());
  void emailValueUpdate(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValueUpdate(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    passwordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValuePatch(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    passwordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void passwordValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      passwordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;
  Basic get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Basic(email: emailValue, password: passwordValue);
  }

  void updateValue(Basic value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          BasicForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Basic value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: BasicForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        emailControlName: FormControl<String>(
            value: basic?.email,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: basic?.password,
            validators: [requiredValidator],
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

class ReactiveBasicFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveBasicFormArrayBuilder(
      {Key? key,
      this.control,
      this.formControl,
      this.builder,
      required this.itemBuilder})
      : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(BasicForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, BasicForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, BasicForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveBasicForm.of(context);

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

class ReactiveBasicFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveBasicFormFormGroupArrayBuilder(
      {Key? key,
      this.extended,
      this.getExtended,
      this.builder,
      required this.itemBuilder})
      : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      BasicForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, BasicForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, V? item, BasicForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveBasicForm.of(context);

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
