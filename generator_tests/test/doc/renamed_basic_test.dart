@Timeout(Duration(seconds: 145))

import 'package:test/test.dart';

import '../helpers.dart';

void main() {
  group('doc', () {
    test(
      'Renamed basic',
      () async {
        return testGenerator(
          model: r'''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            import 'package:example/helpers.dart';
            
            part 'gen.gform.dart';
            
            Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
              return Validators.required(control);
            }
            
            @ReactiveFormAnnotation(name: 'SomeWiredName')
            class RenamedBasic {
              final String email;
            
              final String password;
            
              RenamedBasic({
                @FormControlAnnotation(
                  validators: const [requiredValidator],
                )
                    this.email = '',
                @FormControlAnnotation(
                  validators: const [requiredValidator],
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

const generatedFile = r'''// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveSomeWiredNameFormConsumer extends StatelessWidget {
  const ReactiveSomeWiredNameFormConsumer(
      {Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, SomeWiredNameForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSomeWiredNameForm.of(context);

    if (formModel is! SomeWiredNameForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SomeWiredNameFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const SomeWiredNameFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final SomeWiredNameForm form;
}

class ReactiveSomeWiredNameForm extends StatelessWidget {
  const ReactiveSomeWiredNameForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final SomeWiredNameForm form;

  final WillPopCallback? onWillPop;

  static SomeWiredNameForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              SomeWiredNameFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        SomeWiredNameFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as SomeWiredNameFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SomeWiredNameFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class SomeWiredNameFormBuilder extends StatefulWidget {
  const SomeWiredNameFormBuilder(
      {Key? key, this.model, this.child, this.onWillPop, required this.builder})
      : super(key: key);

  final RenamedBasic? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, SomeWiredNameForm formModel, Widget? child) builder;

  @override
  _SomeWiredNameFormBuilderState createState() =>
      _SomeWiredNameFormBuilderState();
}

class _SomeWiredNameFormBuilderState extends State<SomeWiredNameFormBuilder> {
  late FormGroup _form;

  late SomeWiredNameForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = SomeWiredNameForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveSomeWiredNameForm(
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

class SomeWiredNameForm implements FormModel<RenamedBasic> {
  SomeWiredNameForm(this.renamedBasic, this.form, this.path) {}

  static String emailControlName = "email";

  static String passwordControlName = "password";

  final RenamedBasic? renamedBasic;

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
  RenamedBasic get model =>
      RenamedBasic(email: emailValue, password: passwordValue);
  void updateValue(RenamedBasic value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          SomeWiredNameForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(RenamedBasic value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: SomeWiredNameForm(value, FormGroup({}), null)
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
        emailControlName: FormControl<String>(
            value: renamedBasic?.email,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: renamedBasic?.password,
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
''';
