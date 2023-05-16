// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'articulation.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveArticulationFormConsumer extends StatelessWidget {
  const ReactiveArticulationFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ArticulationForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArticulationForm.of(context);

    if (formModel is! ArticulationForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ArticulationFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const ArticulationFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ArticulationForm form;
}

class ReactiveArticulationForm extends StatelessWidget {
  const ReactiveArticulationForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final ArticulationForm form;

  final WillPopCallback? onWillPop;

  static ArticulationForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ArticulationFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ArticulationFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ArticulationFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ArticulationFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ArticulationFormBuilder extends StatefulWidget {
  const ArticulationFormBuilder({
    Key? key,
    required this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Articulation model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ArticulationForm formModel, Widget? child) builder;

  final void Function(BuildContext context, ArticulationForm formModel)?
      initState;

  @override
  _ArticulationFormBuilderState createState() =>
      _ArticulationFormBuilderState();
}

class _ArticulationFormBuilderState extends State<ArticulationFormBuilder> {
  late ArticulationForm _formModel;

  @override
  void initState() {
    _formModel = ArticulationForm(
        widget.model, ArticulationForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant ArticulationFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel = ArticulationForm(
          widget.model, ArticulationForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
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
    return ReactiveArticulationForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class ArticulationForm implements FormModel<Articulation> {
  ArticulationForm(
    this.articulation,
    this.form,
    this.path,
  ) {
    testTestForm = (articulation.test)
        .asMap()
        .map((k, v) => MapEntry(k, TestForm(v, form, pathBuilder("test.$k"))))
        // .map((k, v) => MapEntry(k, TestForm<dynamic, dynamic, dynamic>(v, form, pathBuilder("test.$k"))))
        .values
        .toList();
  }

  static const String patientNameControlName = "patientName";

  static const String idControlName = "id";

  static const String testControlName = "test";

  final Articulation articulation;

  final FormGroup form;

  final String? path;

  late List<TestForm> testTestForm;

  String patientNameControlPath() => pathBuilder(patientNameControlName);
  String idControlPath() => pathBuilder(idControlName);
  String testControlPath() => pathBuilder(testControlName);
  String get _patientNameValue => patientNameControl.value as String;
  int? get _idValue => idControl?.value;
  List<Test<dynamic, dynamic, dynamic>> get _testValue => testTestForm
      .asMap()
      .map(
        (k, v) => MapEntry(
          k,
          v
              .copyWithPath(
                pathBuilder("test.$k"),
              )
              .model,
        ),
      )
      .values
      .toList();
  bool get containsPatientName {
    try {
      form.control(patientNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTest {
    try {
      form.control(testControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get patientNameErrors => patientNameControl.errors;
  Object? get idErrors => idControl?.errors;
  Object? get testErrors => testControl.errors;
  void get patientNameFocus => form.focus(patientNameControlPath());
  void get idFocus => form.focus(idControlPath());
  void get testFocus => form.focus(testControlPath());
  void idRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          idControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            idControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void patientNameValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    patientNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueUpdate(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl?.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void testValueUpdate(
    List<Test<dynamic, dynamic, dynamic>> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if ((value).isEmpty) {
      testClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final updateList = (value)
        .asMap()
        .map(
          (k, v) => MapEntry(
            k,
            TestForm(v, form, pathBuilder("test.$k")),
            // TestForm<dynamic, dynamic, dynamic>(v, form, pathBuilder("test.$k")),
          ),
        )
        .values
        .toList();

    testTestForm.clear();
    testTestForm.addAll(updateList);

    final toUpdate = <TestForm>[];
    final toAdd = <TestForm>[];

    updateList.asMap().forEach((k, v) {
      if (testTestForm.asMap().containsKey(k) &&
          (testControl.value ?? []).asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      testControl.updateValue(
          toUpdate
              .map((e) =>
                  TestForm.formElements<dynamic, dynamic, dynamic>(e.test)
                      .rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        testControl.add(
            TestForm.formElements<dynamic, dynamic, dynamic>(e.test),
            updateParent: updateParent,
            emitEvent: emitEvent);
      });
    }
  }

  void testInsert(
    int i,
    Test<dynamic, dynamic, dynamic> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (testTestForm.length < i) {
      addTestItem(value);
      return;
    }

    // final item = TestForm<dynamic, dynamic, dynamic>(
    final item = TestForm(
      value,
      form,
      pathBuilder('test.$i'),
    );

    testTestForm.insert(i, item);

    testTestForm.asMap().forEach((k, v) {
      if (k > i) {
        testTestForm[k] = v.copyWithPath(
          pathBuilder("test.$k"),
        );
      }
    });

    testControl.insert(
      i,
      TestForm.formElements<dynamic, dynamic, dynamic>(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void testClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    testTestForm.clear();
    testControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void patientNameValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    patientNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl?.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void testValuePatch(
    List<Test<dynamic, dynamic, dynamic>> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = testTestForm.asMap().keys;

    final toPatch = <TestForm>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          final patch = TestForm(v, form, pathBuilder("test.$k"));
          // final patch = TestForm<dynamic, dynamic, dynamic>(v, form, pathBuilder("test.$k"));
          testTestForm[k] = patch;
          toPatch.add(patch);
        }
      },
    );

    testControl.patchValue(
        toPatch
            .map((e) => TestForm.formElements<dynamic, dynamic, dynamic>(e.test)
                .rawValue)
            .toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void patientNameValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      patientNameControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void idValueReset(
    int? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl?.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void testValueReset(
    List<Test<dynamic, dynamic, dynamic>> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      testControl.reset(
          value: value
              .map((e) =>
                  TestForm.formElements<dynamic, dynamic, dynamic>(e).rawValue)
              .toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
  FormControl<String> get patientNameControl =>
      form.control(patientNameControlPath()) as FormControl<String>;
  FormControl<int>? get idControl =>
      containsId ? form.control(idControlPath()) as FormControl<int>? : null;
  FormArray<Map<String, Object?>> get testControl =>
      form.control(testControlPath()) as FormArray<Map<String, Object?>>;
  void patientNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      patientNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      patientNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl?.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl?.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void testSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      testControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      testControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>,
          List<TestForm<dynamic, dynamic, dynamic>>>
      get testExtendedControl => ExtendedControl<List<Map<String, Object?>?>,
              List<TestForm<dynamic, dynamic, dynamic>>>(
          form.control(testControlPath()) as FormArray<Map<String, Object?>>,
          () => testTestForm);
  void addTestItem(Test<dynamic, dynamic, dynamic> value) {
    final formClass =
        TestForm(value, form, pathBuilder('test.${testTestForm.length}'));
    // final formClass = TestForm<dynamic, dynamic, dynamic>(value, form, pathBuilder('test.${testTestForm.length}'));

    testTestForm.add(formClass);
    testControl.add(TestForm.formElements<dynamic, dynamic, dynamic>(value));
  }

  void removeTestItemAtIndex(int i) {
    if (testTestForm.asMap().containsKey(i) &&
        (testControl.value ?? []).asMap().containsKey(i)) {
      testTestForm.removeAt(i);

      testTestForm.asMap().forEach((k, v) {
        testTestForm[k] = v.copyWithPath(pathBuilder("test.$k"));
      });

      testControl.removeAt(i);
    }
  }

  void addTestItemList(List<Test<dynamic, dynamic, dynamic>> value) {
    value.map((e) => addTestItem(e));
  }

  @override
  Articulation get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Articulation(
        createdDate: articulation.createdDate,
        patientName: _patientNameValue,
        id: _idValue,
        test: _testValue);
  }

  ArticulationForm copyWithPath(String? path) {
    return ArticulationForm(articulation, form, path);
  }

  @override
  void updateValue(
    Articulation value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ArticulationForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Articulation? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Articulation articulation) => FormGroup({
        patientNameControlName: FormControl<String>(
            value: articulation.patientName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        idControlName: FormControl<int>(
            value: articulation.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        testControlName: FormArray(
            (articulation.test)
                .map((e) => TestForm.formElements<dynamic, dynamic, dynamic>(e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class TestForm<A, B, C> implements FormModel<Test<A, B, C>> {
  TestForm(
    this.test,
    this.form,
    this.path,
  ) {}

  static const String idControlName = "id";

  final Test<A, B, C> test;

  final FormGroup form;

  final String? path;

  String idControlPath() => pathBuilder(idControlName);
  int get _idValue => idControl.value as int;
  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get idErrors => idControl.errors;
  void get idFocus => form.focus(idControlPath());
  void idValueUpdate(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueReset(
    int value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<int> get idControl =>
      form.control(idControlPath()) as FormControl<int>;
  void idSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      idControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      idControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Test<A, B, C> get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Test<A, B, C>(id: _idValue, test: test.test);
  }

  TestForm<A, B, C> copyWithPath(String? path) {
    return TestForm<A, B, C>(test, form, path);
  }

  @override
  void updateValue(
    Test<dynamic, dynamic, dynamic> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(TestForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Test<dynamic, dynamic, dynamic>? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements<A, B, C>(Test<A, B, C> test) => FormGroup({
        idControlName: FormControl<int>(
            value: test?.id,
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

class ReactiveArticulationFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveArticulationFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(ArticulationForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArticulationForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, ArticulationForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArticulationForm.of(context);

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

class ReactiveArticulationFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveArticulationFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      ArticulationForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ArticulationForm formModel)? builder;

  final Widget Function(
          BuildContext context, int i, V? item, ArticulationForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveArticulationForm.of(context);

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

class ReactiveSomeFormConsumer extends StatelessWidget {
  const ReactiveSomeFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, SomeForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSomeForm.of(context);

    if (formModel is! SomeForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SomeFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const SomeFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final SomeForm form;
}

class ReactiveSomeForm extends StatelessWidget {
  const ReactiveSomeForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final SomeForm form;

  final WillPopCallback? onWillPop;

  static SomeForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<SomeFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<SomeFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as SomeFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SomeFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class SomeFormBuilder extends StatefulWidget {
  const SomeFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Some? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context, SomeForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, SomeForm formModel)? initState;

  @override
  _SomeFormBuilderState createState() => _SomeFormBuilderState();
}

class _SomeFormBuilderState extends State<SomeFormBuilder> {
  late SomeForm _formModel;

  @override
  void initState() {
    _formModel =
        SomeForm(widget.model, SomeForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant SomeFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel =
          SomeForm(widget.model, SomeForm.formElements(widget.model), null);

      if (_formModel.form.disabled) {
        _formModel.form.markAsDisabled();
      }

      widget.initState?.call(context, _formModel);
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
    return ReactiveSomeForm(
      key: ObjectKey(_formModel),
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveFormBuilder(
        form: () => _formModel.form,
        onWillPop: widget.onWillPop,
        builder: (context, formGroup, child) =>
            widget.builder(context, _formModel, widget.child),
        child: widget.child,
      ),
    );
  }
}

class SomeForm implements FormModel<Some> {
  SomeForm(
    this.some,
    this.form,
    this.path,
  ) {}

  static const String someControlName = "some";

  final Some? some;

  final FormGroup form;

  final String? path;

  String someControlPath() => pathBuilder(someControlName);
  String get _someValue => someControl.value as String;
  bool get containsSome {
    try {
      form.control(someControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get someErrors => someControl.errors;
  void get someFocus => form.focus(someControlPath());
  void someValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    someControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void someValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    someControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void someValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      someControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get someControl =>
      form.control(someControlPath()) as FormControl<String>;
  void someSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      someControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      someControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Some get model {
    if (!form.valid) {
      debugPrint(
        'Prefer not to call `model` on non-valid form it could cause unexpected exceptions in case you created a non-nullable field in model and expect it to be guarded by some kind of `required` validator.',
      );
    }
    return Some(some: _someValue);
  }

  SomeForm copyWithPath(String? path) {
    return SomeForm(some, form, path);
  }

  @override
  void updateValue(
    Some value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(SomeForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);
  @override
  void reset({
    Some? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  static FormGroup formElements(Some? some) => FormGroup({
        someControlName: FormControl<String>(
            value: some?.some,
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

class ReactiveSomeFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveSomeFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(SomeForm formModel)? control;

  final Widget Function(
      BuildContext context, List<Widget> itemList, SomeForm formModel)? builder;

  final Widget Function(
      BuildContext context, int i, T? item, SomeForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSomeForm.of(context);

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

class ReactiveSomeFormFormGroupArrayBuilder<V> extends StatelessWidget {
  const ReactiveSomeFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<V>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<V>> Function(
      SomeForm formModel)? getExtended;

  final Widget Function(
      BuildContext context, List<Widget> itemList, SomeForm formModel)? builder;

  final Widget Function(
      BuildContext context, int i, V? item, SomeForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSomeForm.of(context);

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
