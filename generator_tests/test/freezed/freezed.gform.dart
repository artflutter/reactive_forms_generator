// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'freezed.dart';

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

class TestForm {
  TestForm(this.test, this.form, this.path) {}

  static String genderControlName = "gender";

  static String idControlName = "id";

  static String nameControlName = "name";

  static String yearControlName = "year";

  final Test test;

  final FormGroup form;

  final String? path;

  String genderControlPath() => pathBuilder(genderControlName);
  String idControlPath() => pathBuilder(idControlName);
  String nameControlPath() => pathBuilder(nameControlName);
  String yearControlPath() => pathBuilder(yearControlName);
  String? get genderValue => genderControl.value;
  String? get idValue => idControl.value;
  String? get nameValue => nameControl.value;
  double? get yearValue => yearControl.value;
  bool get containsGender => form.contains(genderControlPath());
  bool get containsId => form.contains(idControlPath());
  bool get containsName => form.contains(nameControlPath());
  bool get containsYear => form.contains(yearControlPath());
  Object? get genderErrors => genderControl.errors;
  Object? get idErrors => idControl.errors;
  Object? get nameErrors => nameControl.errors;
  Object? get yearErrors => yearControl.errors;
  void get genderFocus => form.focus(genderControlPath());
  void get idFocus => form.focus(idControlPath());
  void get nameFocus => form.focus(nameControlPath());
  void get yearFocus => form.focus(yearControlPath());
  void genderRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(genderControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void idRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(idControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void nameRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(nameControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void yearRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(yearControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void genderValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      genderControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void idValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      idControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void nameValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void yearValueUpdate(double? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      yearControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void genderValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      genderControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void idValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      idControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void nameValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      nameControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void yearValuePatch(double? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      yearControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void genderValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      genderControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void idValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      idControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void nameValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      nameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void yearValueReset(double? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      yearControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get genderControl =>
      form.control(genderControlPath()) as FormControl<String>;
  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;
  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;
  FormControl<double> get yearControl =>
      form.control(yearControlPath()) as FormControl<double>;
  Test get model =>
      Test(genderValue, id: idValue, name: nameValue, year: yearValue);
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
        genderControlName: FormControl<String>(
            value: test.gender,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        idControlName: FormControl<String>(
            value: test.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: test.name,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        yearControlName: FormControl<double>(
            value: test.year,
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
