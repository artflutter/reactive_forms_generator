// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'dart:core';
import 'freezed.dart';

class ReactiveTestFormConsumer extends StatelessWidget {
  ReactiveTestFormConsumer({Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, TestForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTestForm.of(context);

    if (formModel is! TestForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class TestFormInheritedStreamer extends InheritedStreamer<dynamic> {
  TestFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final TestForm form;
}

class ReactiveTestForm extends StatelessWidget {
  ReactiveTestForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final TestForm form;

  final WillPopCallback? onWillPop;

  static TestForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<TestFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<TestFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as TestFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return TestFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class TestFormBuilder extends StatefulWidget {
  TestFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final Test model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context, TestForm formModel, Widget? child)
      builder;

  @override
  _TestFormBuilderState createState() => _TestFormBuilderState();
}

class _TestFormBuilderState extends State<TestFormBuilder> {
  late FormGroup _form;

  late TestForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = TestForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveTestForm(
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

class TestForm {
  TestForm(this.test, this.form, this.path) {}

  final Test test;

  final FormGroup form;

  final String? path;

  Test get model => Test('');
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({},
      validators: [],
      asyncValidators: [],
      asyncValidatorsDebounceTime: 250,
      disabled: false);
}
