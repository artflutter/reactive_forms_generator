// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'dart:core';
import 'mailing_list.dart';

class ReactiveMailingListFormConsumer extends StatelessWidget {
  ReactiveMailingListFormConsumer({Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, MailingListForm formGroup, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final form = ReactiveMailingListForm.of(context);

    if (form is! MailingListForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, form, child);
  }
}

class MailingListFormInheritedStreamer extends InheritedStreamer<dynamic> {
  MailingListFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final MailingListForm form;
}

class ReactiveMailingListForm extends StatelessWidget {
  ReactiveMailingListForm(
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
  MailingListFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final MailingList model;

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

class MailingListForm {
  MailingListForm(this.mailingList, this.form, this.path) {}

  String emailList = "emailList";

  static String emailListControlName = "emailList";

  final MailingList mailingList;

  final FormGroup form;

  final String? path;

  String emailListControlPath() =>
      [path, "emailList"].whereType<String>().join(".");
  List<String?> get emailListValue =>
      emailListControl.value?.whereType<String?>().toList() ?? [];
  bool get containsEmailList => form.contains(emailListControlPath());
  Object? get emailListErrors => emailListControl.errors;
  void get emailListFocus => form.focus(emailListControlPath());
  FormArray<String> get emailListControl =>
      form.control(emailListControlPath()) as FormArray<String>;
  MailingList get model => MailingList(emailList: emailListValue);
  FormGroup formElements() => FormGroup({
        emailList: FormArray<String>(
            mailingList.emailList
                .map((e) => FormControl<String>(value: e))
                .toList(),
            validators: [emailDuplicates],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}
