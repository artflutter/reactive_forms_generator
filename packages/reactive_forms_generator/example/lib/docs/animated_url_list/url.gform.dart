// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'url.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveUrlFormConsumer extends StatelessWidget {
  const ReactiveUrlFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context, UrlForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUrlForm.of(context);

    if (formModel is! UrlForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class UrlFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const UrlFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final UrlForm form;
}

class ReactiveUrlForm extends StatelessWidget {
  const ReactiveUrlForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final UrlForm form;

  final WillPopCallback? onWillPop;

  static UrlForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<UrlFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<UrlFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as UrlFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return UrlFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class UrlFormBuilder extends StatefulWidget {
  const UrlFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Url? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(BuildContext context, UrlForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, UrlForm formModel)? initState;

  @override
  _UrlFormBuilderState createState() => _UrlFormBuilderState();
}

class _UrlFormBuilderState extends State<UrlFormBuilder> {
  late UrlForm _formModel;

  @override
  void initState() {
    _formModel = UrlForm(UrlForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant UrlFormBuilder oldWidget) {
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
    return ReactiveUrlForm(
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

class UrlForm implements FormModel<Url> {
  UrlForm(
    this.form,
    this.path,
  );

  static const String urlListControlName = "urlList";

  final FormGroup form;

  final String? path;

  String urlListControlPath() => pathBuilder(urlListControlName);

  List<UrlEntity> get _urlListValue =>
      urlListUrlEntityForm.map((e) => e.model).toList();

  bool get containsUrlList {
    try {
      form.control(urlListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get urlListErrors => urlListControl.errors;

  void get urlListFocus => form.focus(urlListControlPath());

  void urlListValueUpdate(
    List<UrlEntity> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      urlListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <UrlEntity>[];
    final toAdd = <UrlEntity>[];

    localValue.asMap().forEach((k, v) {
      if (urlListUrlEntityForm.asMap().containsKey(k) &&
          (urlListControl.value ?? []).asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      urlListControl.updateValue(
          toUpdate.map((e) => UrlEntityForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        urlListControl.add(UrlEntityForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void urlListInsert(
    int i,
    UrlEntity value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if ((urlListControl.value ?? []).length < i) {
      addUrlListItem(value);
      return;
    }

    urlListControl.insert(
      i,
      UrlEntityForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void urlListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    urlListUrlEntityForm.clear();
    urlListControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void urlListValuePatch(
    List<UrlEntity> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = urlListUrlEntityForm.asMap().keys;

    final toPatch = <UrlEntity>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    urlListControl.patchValue(
        toPatch.map((e) => UrlEntityForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void urlListValueReset(
    List<UrlEntity> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      urlListControl.reset(
          value:
              value.map((e) => UrlEntityForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormArray<Map<String, Object?>> get urlListControl =>
      form.control(urlListControlPath()) as FormArray<Map<String, Object?>>;

  List<UrlEntityForm> get urlListUrlEntityForm => (urlListControl.value ?? [])
      .asMap()
      .map(
          (k, v) => MapEntry(k, UrlEntityForm(form, pathBuilder("urlList.$k"))))
      .values
      .toList();

  void urlListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      urlListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      urlListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<UrlEntityForm>>
      get urlListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<UrlEntityForm>>(
              form.control(urlListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => urlListUrlEntityForm);

  void addUrlListItem(UrlEntity value) {
    urlListControl.add(UrlEntityForm.formElements(value));
  }

  void removeUrlListItemAtIndex(int i) {
    if ((urlListControl.value ?? []).length > i) {
      urlListControl.removeAt(i);
    }
  }

  void addUrlListItemList(List<UrlEntity> value) {
    value.map((e) => addUrlListItem(e));
  }

  @override
  Url get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'UrlForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Url(urlList: _urlListValue);
  }

  @override
  void submit({
    required void Function(Url model) onValid,
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
    Url? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(UrlForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Url? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Url? url) => FormGroup({
        urlListControlName: FormArray(
            (url?.urlList ?? [])
                .map((e) => UrlEntityForm.formElements(e))
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

class UrlEntityForm implements FormModel<UrlEntity> {
  UrlEntityForm(
    this.form,
    this.path,
  );

  static const String labelControlName = "label";

  static const String urlControlName = "url";

  final FormGroup form;

  final String? path;

  String labelControlPath() => pathBuilder(labelControlName);

  String urlControlPath() => pathBuilder(urlControlName);

  String get _labelValue => labelControl.value ?? "";

  String get _urlValue => urlControl.value ?? "";

  bool get containsLabel {
    try {
      form.control(labelControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsUrl {
    try {
      form.control(urlControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get labelErrors => labelControl.errors;

  Object? get urlErrors => urlControl.errors;

  void get labelFocus => form.focus(labelControlPath());

  void get urlFocus => form.focus(urlControlPath());

  void labelValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    labelControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void urlValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    urlControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void labelValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    labelControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void urlValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    urlControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void labelValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      labelControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  void urlValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      urlControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormControl<String> get labelControl =>
      form.control(labelControlPath()) as FormControl<String>;

  FormControl<String> get urlControl =>
      form.control(urlControlPath()) as FormControl<String>;

  void labelSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      labelControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      labelControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void urlSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      urlControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      urlControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  UrlEntity get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'UrlEntityForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return UrlEntity(label: _labelValue, url: _urlValue);
  }

  @override
  void submit({
    required void Function(UrlEntity model) onValid,
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
    UrlEntity? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(UrlEntityForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    UrlEntity? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(UrlEntity? urlEntity) => FormGroup({
        labelControlName: FormControl<String>(
            value: urlEntity?.label,
            validators: [RequiredValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        urlControlName: FormControl<String>(
            value: urlEntity?.url,
            validators: [RequiredValidator()],
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

class ReactiveUrlFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveUrlFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(UrlForm formModel)? control;

  final Widget Function(
      BuildContext context, List<Widget> itemList, UrlForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item, UrlForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUrlForm.of(context);

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

class ReactiveUrlFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveUrlFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>, List<T>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>, List<T>> Function(
      UrlForm formModel)? getExtended;

  final Widget Function(
      BuildContext context, List<Widget> itemList, UrlForm formModel)? builder;

  final Widget Function(BuildContext context, int i, T? item, UrlForm formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveUrlForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ?? <T>[])
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
