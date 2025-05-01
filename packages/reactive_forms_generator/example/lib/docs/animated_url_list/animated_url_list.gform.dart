// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'animated_url_list.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveAnimatedUrlListFormConsumer extends StatelessWidget {
  const ReactiveAnimatedUrlListFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
          BuildContext context, AnimatedUrlListForm formModel, Widget? child)
      builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAnimatedUrlListForm.of(context);

    if (formModel is! AnimatedUrlListForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class AnimatedUrlListFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const AnimatedUrlListFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final AnimatedUrlListForm form;
}

class ReactiveAnimatedUrlListForm extends StatelessWidget {
  const ReactiveAnimatedUrlListForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final AnimatedUrlListForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static AnimatedUrlListForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              AnimatedUrlListFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        AnimatedUrlListFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as AnimatedUrlListFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedUrlListFormInheritedStreamer(
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

extension ReactiveReactiveAnimatedUrlListFormExt on BuildContext {
  AnimatedUrlListForm? animatedUrlListFormWatch() =>
      ReactiveAnimatedUrlListForm.of(this);

  AnimatedUrlListForm? animatedUrlListFormRead() =>
      ReactiveAnimatedUrlListForm.of(this, listen: false);
}

class AnimatedUrlListFormBuilder extends StatefulWidget {
  const AnimatedUrlListFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final AnimatedUrlList? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
          BuildContext context, AnimatedUrlListForm formModel, Widget? child)
      builder;

  final void Function(BuildContext context, AnimatedUrlListForm formModel)?
      initState;

  @override
  _AnimatedUrlListFormBuilderState createState() =>
      _AnimatedUrlListFormBuilderState();
}

class _AnimatedUrlListFormBuilderState
    extends State<AnimatedUrlListFormBuilder> {
  late AnimatedUrlListForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = AnimatedUrlListForm(
        AnimatedUrlListForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logAnimatedUrlListForm.onRecord.listen((LogRecord e) {
      // use `dumpErrorToConsole` for severe messages to ensure that severe
      // exceptions are formatted consistently with other Flutter examples and
      // avoids printing duplicate exceptions
      if (e.level >= Level.SEVERE) {
        final Object? error = e.error;
        FlutterError.dumpErrorToConsole(
          FlutterErrorDetails(
            exception: error is Exception ? error : Exception(error),
            stack: e.stackTrace,
            library: e.loggerName,
            context: ErrorDescription(e.message),
          ),
        );
      } else {
        log(
          e.message,
          time: e.time,
          sequenceNumber: e.sequenceNumber,
          level: e.level.value,
          name: e.loggerName,
          zone: e.zone,
          error: e.error,
          stackTrace: e.stackTrace,
        );
      }
    });

    super.initState();
  }

  @override
  void didUpdateWidget(covariant AnimatedUrlListFormBuilder oldWidget) {
    if (widget.model != oldWidget.model) {
      _formModel.updateValue(widget.model);
    }

    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    _formModel.form.dispose();
    _logSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveAnimatedUrlListForm(
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

final _logAnimatedUrlListForm = Logger.detached('AnimatedUrlListForm');

class AnimatedUrlListForm
    implements FormModel<AnimatedUrlList, AnimatedUrlList> {
  AnimatedUrlListForm(
    this.form,
    this.path,
  );

  static const String urlListControlName = "urlList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String urlListControlPath() => pathBuilder(urlListControlName);

  List<UrlEntity> get _urlListValue =>
      urlListUrlEntityForm.map((e) => e.model).toList();

  List<UrlEntity> get _urlListRawValue =>
      urlListUrlEntityForm.map((e) => e.rawModel).toList();

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsUrlList {
    try {
      form.control(urlListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get urlListErrors => urlListControl.errors;

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
      final values = urlListControl.controls.map((e) => e.value).toList();

      if (urlListUrlEntityForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
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
    final values = urlListControl.controls.map((e) => e.value).toList();
    if (values.length < i) {
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

  List<UrlEntityForm> get urlListUrlEntityForm {
    final values = urlListControl.controls.map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, UrlEntityForm(form, pathBuilder("urlList.$k"))))
        .values
        .toList();
  }

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
    value.forEach((e) => addUrlListItem(e));
  }

  @override
  AnimatedUrlList get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logAnimatedUrlListForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return AnimatedUrlList(urlList: _urlListValue);
  }

  @override
  AnimatedUrlList get rawModel {
    return AnimatedUrlList(urlList: _urlListRawValue);
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

      urlListUrlEntityForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      urlListUrlEntityForm.forEach((e) => e.toggleDisabled());

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
  bool equalsTo(AnimatedUrlList? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      AnimatedUrlListForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(AnimatedUrlList model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logAnimatedUrlListForm.info('Errors');
      _logAnimatedUrlListForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    AnimatedUrlList? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(AnimatedUrlListForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    AnimatedUrlList? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(AnimatedUrlList? animatedUrlList) => FormGroup({
        urlListControlName: FormArray(
            (animatedUrlList?.urlList ?? [])
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

final _logUrlEntityForm = Logger.detached('UrlEntityForm');

class UrlEntityForm implements FormModel<UrlEntity, UrlEntity> {
  UrlEntityForm(
    this.form,
    this.path,
  );

  static const String labelControlName = "label";

  static const String urlControlName = "url";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String labelControlPath() => pathBuilder(labelControlName);

  String urlControlPath() => pathBuilder(urlControlName);

  String get _labelValue => labelControl.value ?? "";

  String get _urlValue => urlControl.value ?? "";

  String get _labelRawValue => labelControl.value ?? "";

  String get _urlRawValue => urlControl.value ?? "";

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsLabel {
    try {
      form.control(labelControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsUrl {
    try {
      form.control(urlControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get labelErrors => labelControl.errors;

  Map<String, Object> get urlErrors => urlControl.errors;

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
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void urlValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      urlControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

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
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logUrlEntityForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return UrlEntity(label: _labelValue, url: _urlValue);
  }

  @override
  UrlEntity get rawModel {
    return UrlEntity(label: _labelRawValue, url: _urlRawValue);
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
  bool equalsTo(UrlEntity? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      UrlEntityForm.formElements(other).rawValue,
    );
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
      _logUrlEntityForm.info('Errors');
      _logUrlEntityForm.info('┗━━ ${form.errors}');
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

class ReactiveAnimatedUrlListFormArrayBuilder<
    ReactiveAnimatedUrlListFormArrayBuilderT> extends StatelessWidget {
  const ReactiveAnimatedUrlListFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveAnimatedUrlListFormArrayBuilderT>? formControl;

  final FormArray<ReactiveAnimatedUrlListFormArrayBuilderT>? Function(
      AnimatedUrlListForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      AnimatedUrlListForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveAnimatedUrlListFormArrayBuilderT> control,
      ReactiveAnimatedUrlListFormArrayBuilderT? item,
      AnimatedUrlListForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveAnimatedUrlListFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAnimatedUrlListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveAnimatedUrlListFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveAnimatedUrlListFormArrayBuilderT>,
                ) ??
                true)
            .toList();

        final itemList = values
            .map((item) {
              return MapEntry(
                item.$1,
                itemBuilder(
                  context,
                  item.$1,
                  formArray.controls[item.$1]
                      as FormControl<ReactiveAnimatedUrlListFormArrayBuilderT>,
                  item.$2.value,
                  formModel,
                ),
              );
            })
            .map((e) => e.value)
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
          return emptyBuilder!(context);
        }

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

class ReactiveAnimatedUrlListFormArrayBuilder2<
    ReactiveAnimatedUrlListFormArrayBuilderT> extends StatelessWidget {
  const ReactiveAnimatedUrlListFormArrayBuilder2({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
    this.emptyBuilder,
    this.controlFilter,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveAnimatedUrlListFormArrayBuilderT>? formControl;

  final FormArray<ReactiveAnimatedUrlListFormArrayBuilderT>? Function(
      AnimatedUrlListForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        AnimatedUrlListForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveAnimatedUrlListFormArrayBuilderT> control,
        ReactiveAnimatedUrlListFormArrayBuilderT? item,
        AnimatedUrlListForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveAnimatedUrlListFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAnimatedUrlListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveAnimatedUrlListFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveAnimatedUrlListFormArrayBuilderT>,
                ) ??
                true)
            .toList();

        final itemList = values
            .map((item) {
              return MapEntry(
                item.$1,
                itemBuilder((
                  context: context,
                  i: item.$1,
                  control: formArray.controls[item.$1]
                      as FormControl<ReactiveAnimatedUrlListFormArrayBuilderT>,
                  item: item.$2.value,
                  formModel: formModel
                )),
              );
            })
            .map((e) => e.value)
            .toList();

        if (emptyBuilder != null && itemList.isEmpty) {
          return emptyBuilder!(context);
        }

        return builder?.call((
              context: context,
              itemList: itemList,
              formModel: formModel,
            )) ??
            Column(children: itemList);
      },
    );
  }
}

class ReactiveAnimatedUrlListFormFormGroupArrayBuilder<
    ReactiveAnimatedUrlListFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveAnimatedUrlListFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveAnimatedUrlListFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveAnimatedUrlListFormFormGroupArrayBuilderT>>
      Function(AnimatedUrlListForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      AnimatedUrlListForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveAnimatedUrlListFormFormGroupArrayBuilderT? item,
      AnimatedUrlListForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveAnimatedUrlListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveAnimatedUrlListFormFormGroupArrayBuilderT>[])
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
