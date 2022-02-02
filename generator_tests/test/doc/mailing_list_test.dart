@Timeout(Duration(seconds: 145))

import 'package:test/test.dart';

import '../helpers.dart';

void main() {
  group('doc', () {
    test(
      'Mailing list',
      () async {
        return testGenerator(
          model: r'''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part 'gen.gform.dart';
            
            Map<String, dynamic>? mailingListValidator(AbstractControl control) {
              final formArray = control as FormArray<String>;
              final emails = formArray.value ?? [];
              final test = Set<String>();
            
              final result = emails.fold<bool>(true,
                  (previousValue, element) => previousValue && test.add(element ?? ''));
            
              return result ? null : <String, dynamic>{'emailDuplicates': true};
            }
            
            Map<String, dynamic> emailValidator(AbstractControl<dynamic> control) {
              final email = control.value as String?;
            
              return email != null && emailRegex.hasMatch(email)
                  ? <String, dynamic>{}
                  : <String, dynamic>{ValidationMessage.email: true};
            }
            
            @ReactiveFormAnnotation()
            class MailingList {
              final List<String?> emailList;
            
              MailingList({
                @FormArrayAnnotation(
                  validators: const [
                    mailingListValidator,
                  ],
                  itemValidators: [
                    emailValidator,
                  ],
                )
                    this.emailList = const [],
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

class ReactiveMailingListFormConsumer extends StatelessWidget {
  const ReactiveMailingListFormConsumer(
      {Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, MailingListForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListForm.of(context);

    if (formModel is! MailingListForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class MailingListFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const MailingListFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final MailingListForm form;
}

class ReactiveMailingListForm extends StatelessWidget {
  const ReactiveMailingListForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final MailingListForm form;

  final WillPopCallback? onWillPop;

  static MailingListForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              MailingListFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        MailingListFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as MailingListFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return MailingListFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class MailingListFormBuilder extends StatefulWidget {
  const MailingListFormBuilder(
      {Key? key, this.model, this.child, this.onWillPop, required this.builder})
      : super(key: key);

  final MailingList? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, MailingListForm formModel, Widget? child) builder;

  @override
  _MailingListFormBuilderState createState() => _MailingListFormBuilderState();
}

class _MailingListFormBuilderState extends State<MailingListFormBuilder> {
  late FormGroup _form;

  late MailingListForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = MailingListForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveMailingListForm(
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

class MailingListForm implements FormModel<MailingList> {
  MailingListForm(this.mailingList, this.form, this.path) {}

  static String emailListControlName = "emailList";

  final MailingList? mailingList;

  final FormGroup form;

  final String? path;

  String emailListControlPath() => pathBuilder(emailListControlName);
  List<String?> get emailListValue =>
      emailListControl.value?.whereType<String?>().toList() ?? [];
  bool get containsEmailList {
    try {
      form.control(emailListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get emailListErrors => emailListControl.errors;
  void get emailListFocus => form.focus(emailListControlPath());
  void emailListValueUpdate(List<String?> value,
      {bool updateParent = true, bool emitEvent = true}) {
    emailListControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailListValuePatch(List<String?> value,
      {bool updateParent = true, bool emitEvent = true}) {
    emailListControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailListValueReset(List<String?> value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      emailListControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormArray<String> get emailListControl =>
      form.control(emailListControlPath()) as FormArray<String>;
  void addEmailListItem(String value,
      {List<AsyncValidatorFunction>? asyncValidators,
      List<ValidatorFunction>? validators,
      int? asyncValidatorsDebounceTime,
      bool? disabled,
      ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge}) {
    List<ValidatorFunction> resultingValidators = [emailValidator];
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

  MailingList get model => MailingList(emailList: emailListValue);
  void updateValue(MailingList value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          MailingListForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(MailingList value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: MailingListForm(value, FormGroup({}), null)
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
            mailingList?.emailList
                    .map((e) => FormControl<String>(
                          value: e,
                          validators: [emailValidator],
                          asyncValidators: [],
                          asyncValidatorsDebounceTime: 250,
                          disabled: false,
                        ))
                    .toList() ??
                [],
            validators: [mailingListValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}
''';
