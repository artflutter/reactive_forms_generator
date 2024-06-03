// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'test.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveTestFormConsumer extends StatelessWidget {
  const ReactiveTestFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

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
  const TestFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final TestForm form;
}

class ReactiveTestForm extends StatelessWidget {
  const ReactiveTestForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final TestForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static TestForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
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
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveTestFormExt on BuildContext {
  TestForm? testFormWatch() => ReactiveTestForm.of(this);

  TestForm? testFormRead() => ReactiveTestForm.of(this, listen: false);
}

class TestFormBuilder extends StatefulWidget {
  const TestFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Test? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context, TestForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, TestForm formModel)? initState;

  @override
  _TestFormBuilderState createState() => _TestFormBuilderState();
}

class _TestFormBuilderState extends State<TestFormBuilder> {
  late TestForm _formModel;

  @override
  void initState() {
    _formModel = TestForm(TestForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant TestFormBuilder oldWidget) {
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
    return ReactiveTestForm(
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

class TestForm implements FormModel<Test> {
  TestForm(
    this.form,
    this.path,
  );

  static const String titleControlName = "title";

  static const String descriptionControlName = "description";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String titleControlPath() => pathBuilder(titleControlName);

  String descriptionControlPath() => pathBuilder(descriptionControlName);

  String get _titleValue => titleControl.value as String;

  String? get _descriptionValue => descriptionControl?.value;

  bool get containsTitle {
    try {
      form.control(titleControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsDescription {
    try {
      form.control(descriptionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get titleErrors => titleControl.errors;

  Map<String, Object>? get descriptionErrors => descriptionControl?.errors;

  void get titleFocus => form.focus(titleControlPath());

  void get descriptionFocus => form.focus(descriptionControlPath());

  void descriptionRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDescription) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          descriptionControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            descriptionControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void titleValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void titleValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    titleControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void titleValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      titleControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void descriptionValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      descriptionControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get titleControl =>
      form.control(titleControlPath()) as FormControl<String>;

  FormControl<String>? get descriptionControl => containsDescription
      ? form.control(descriptionControlPath()) as FormControl<String>?
      : null;

  void titleSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      titleControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      titleControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void descriptionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      descriptionControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      descriptionControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Test get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      debugPrintStack(
          label:
              '[${path ?? 'TestForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Test(title: _titleValue, description: _descriptionValue);
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
    required void Function(Test model) onValid,
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
    Test? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(TestForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Test? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Test? test) => FormGroup({
        titleControlName: FormControl<String>(
            value: test?.title,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        descriptionControlName: FormControl<String>(
            value: test?.description,
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

class ReactiveTestFormArrayBuilder<ReactiveTestFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveTestFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveTestFormArrayBuilderT>? formControl;

  final FormArray<ReactiveTestFormArrayBuilderT>? Function(TestForm formModel)?
      control;

  final Widget Function(
      BuildContext context, List<Widget> itemList, TestForm formModel)? builder;

  final Widget Function(BuildContext context, int i,
      ReactiveTestFormArrayBuilderT? item, TestForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTestForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveTestFormArrayBuilderT>(
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

class ReactiveTestFormFormGroupArrayBuilder<
    ReactiveTestFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveTestFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveTestFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveTestFormFormGroupArrayBuilderT>>
      Function(TestForm formModel)? getExtended;

  final Widget Function(
      BuildContext context, List<Widget> itemList, TestForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveTestFormFormGroupArrayBuilderT? item,
      TestForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTestForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveTestFormFormGroupArrayBuilderT>[])
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
