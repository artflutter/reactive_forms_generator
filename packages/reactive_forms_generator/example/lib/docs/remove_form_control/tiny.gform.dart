// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tiny.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveTinyFormConsumer extends StatelessWidget {
  const ReactiveTinyFormConsumer({Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, TinyForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTinyForm.of(context);

    if (formModel is! TinyForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class TinyFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const TinyFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final TinyForm form;
}

class ReactiveTinyForm extends StatelessWidget {
  const ReactiveTinyForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final TinyForm form;

  final WillPopCallback? onWillPop;

  static TinyForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<TinyFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<TinyFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as TinyFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return TinyFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class TinyFormBuilder extends StatefulWidget {
  const TinyFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final Tiny model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context, TinyForm formModel, Widget? child)
      builder;

  @override
  _TinyFormBuilderState createState() => _TinyFormBuilderState();
}

class _TinyFormBuilderState extends State<TinyFormBuilder> {
  late FormGroup _form;

  late TinyForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = TinyForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveTinyForm(
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

class TinyForm implements FormModel<Tiny> {
  TinyForm(this.tiny, this.form, this.path) {}

  static String emailControlName = "email";

  static String passwordControlName = "password";

  final Tiny tiny;

  final FormGroup form;

  final String? path;

  String emailControlPath() => pathBuilder(emailControlName);
  String passwordControlPath() => pathBuilder(passwordControlName);
  String get emailValue => emailControl.value as String;
  String? get passwordValue => passwordControl?.value;
  bool get containsEmail => form.contains(emailControlPath());
  bool get containsPassword => form.contains(passwordControlPath());
  Object? get emailErrors => emailControl.errors;
  Object? get passwordErrors => passwordControl?.errors;
  void get emailFocus => form.focus(emailControlPath());
  void get passwordFocus => form.focus(passwordControlPath());
  void passwordRemove({bool updateParent = true, bool emitEvent = true}) =>
      form.removeControl(passwordControlPath(),
          updateParent: updateParent, emitEvent: emitEvent);
  void emailValueUpdate(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      emailControl.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void passwordValueUpdate(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      passwordControl?.updateValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void emailValuePatch(String value,
          {bool updateParent = true, bool emitEvent = true}) =>
      emailControl.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void passwordValuePatch(String? value,
          {bool updateParent = true, bool emitEvent = true}) =>
      passwordControl?.patchValue(value,
          updateParent: updateParent, emitEvent: emitEvent);
  void emailValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void passwordValueReset(String? value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      passwordControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String>? get passwordControl => containsPassword
      ? form.control(passwordControlPath()) as FormControl<String>?
      : null;
  Tiny get model => Tiny(email: emailValue, password: passwordValue);
  void updateValue(Tiny value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          TinyForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Tiny value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: TinyForm(value, FormGroup({}), null).formElements().rawValue,
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
            value: tiny.email,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: tiny.password,
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
