// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveTestFormConsumer extends StatelessWidget {
  const ReactiveTestFormConsumer({Key? key, required this.builder, this.child})
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
  const TestFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final TestForm form;
}

class ReactiveTestForm extends StatelessWidget {
  const ReactiveTestForm(
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
  const TestFormBuilder(
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

class TestForm implements FormModel<Test> {
  TestForm(this.test, this.form, this.path) {}

  static String titleControlName = "title";

  static String descriptionControlName = "description";

  final Test test;

  final FormGroup form;

  final String? path;

  String titleControlPath() => pathBuilder(titleControlName);
  String descriptionControlPath() => pathBuilder(descriptionControlName);
  String get titleValue => titleControl.value as String;
  String? get descriptionValue => descriptionControl.value;
  bool get containsTitle => form.contains(titleControlPath());
  bool get containsDescription => form.contains(descriptionControlPath());
  Object? get titleErrors => titleControl.errors;
  Object? get descriptionErrors => descriptionControl.errors;
  void get titleFocus => form.focus(titleControlPath());
  void get descriptionFocus => form.focus(descriptionControlPath());
  void titleRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(titleControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void descriptionRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(descriptionControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void titleValueUpdate(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      titleControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void descriptionValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      descriptionControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void titleValuePatch(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      titleControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void descriptionValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      descriptionControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void titleValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      titleControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void descriptionValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      descriptionControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get titleControl =>
      form.control(titleControlPath()) as FormControl<String>;
  FormControl<String> get descriptionControl =>
      form.control(descriptionControlPath()) as FormControl<String>;
  Test get model => Test(title: titleValue, description: descriptionValue);
  void updateValue(Test value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          TestForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Test value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: TestForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: this.formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        titleControlName: FormControl<String>(
            value: test.title,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        descriptionControlName: FormControl<String>(
            value: test.description,
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
