// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveTagsFormConsumer<T> extends StatelessWidget {
  const ReactiveTagsFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, TagsForm<T> formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTagsForm.of<T>(context);

    if (formModel is! TagsForm<T>) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class TagsFormInheritedStreamer<T> extends InheritedStreamer<dynamic> {
  const TagsFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final TagsForm<T> form;
}

class ReactiveTagsForm<T> extends StatelessWidget {
  const ReactiveTagsForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final TagsForm<T> form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static TagsForm<T>? of<T>(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<TagsFormInheritedStreamer<T>>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        TagsFormInheritedStreamer<T>>();
    return element == null
        ? null
        : (element.widget as TagsFormInheritedStreamer<T>).form;
  }

  @override
  Widget build(BuildContext context) {
    return TagsFormInheritedStreamer(
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

extension ReactiveReactiveTagsFormExt on BuildContext {
  TagsForm<T>? tagsFormWatch<T>() => ReactiveTagsForm.of<T>(this);

  TagsForm<T>? tagsFormRead<T>() => ReactiveTagsForm.of<T>(this, listen: false);
}

class TagsFormBuilder<T> extends StatefulWidget {
  const TagsFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Tags<T>? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, TagsForm<T> formModel, Widget? child) builder;

  final void Function(BuildContext context, TagsForm<T> formModel)? initState;

  @override
  _TagsFormBuilderState<T> createState() => _TagsFormBuilderState<T>();
}

class _TagsFormBuilderState<T> extends State<TagsFormBuilder<T>> {
  late TagsForm<T> _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = TagsForm<T>(TagsForm.formElements<T>(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logTagsForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant TagsFormBuilder<T> oldWidget) {
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
    return ReactiveTagsForm(
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

final _logTagsForm = Logger.detached('TagsForm<T>');

class TagsForm<T> implements FormModel<Tags<T>, Tags<T>> {
  TagsForm(
    this.form,
    this.path,
  );

  static const String tagsControlName = "tags";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String tagsControlPath() => pathBuilder(tagsControlName);

  List<T>? get _tagsValue => tagsControl.value;

  List<T>? get _tagsRawValue => tagsControl.value;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsTags {
    try {
      form.control(tagsControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get tagsErrors => tagsControl.errors;

  void get tagsFocus => form.focus(tagsControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void tagsRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsTags) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          tagsControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            tagsControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void tagsValueUpdate(
    List<T>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tagsControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tagsValuePatch(
    List<T>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    tagsControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void tagsValueReset(
    List<T>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      tagsControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<List<T>> get tagsControl =>
      form.control(tagsControlPath()) as FormControl<List<T>>;

  void tagsSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      tagsControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      tagsControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  Tags<T> get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logTagsForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return Tags<T>(tags: _tagsValue);
  }

  @override
  Tags<T> get rawModel {
    return Tags<T>(tags: _tagsRawValue);
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
  bool equalsTo(Tags<T>? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      TagsForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(Tags<T> model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logTagsForm.info('Errors');
      _logTagsForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Tags<T>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(TagsForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Tags<T>? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements<T>(Tags<T>? tags) => FormGroup({
        tagsControlName: FormControl<List<T>>(
            value: tags?.tags,
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

class ReactiveTagsFormArrayBuilder<ReactiveTagsFormArrayBuilderT, T>
    extends StatelessWidget {
  const ReactiveTagsFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveTagsFormArrayBuilderT>? formControl;

  final FormArray<ReactiveTagsFormArrayBuilderT>? Function(
      TagsForm<T> formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, TagsForm<T> formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveTagsFormArrayBuilderT> control,
      ReactiveTagsFormArrayBuilderT? item,
      TagsForm<T> formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTagsForm.of<T>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveTagsFormArrayBuilderT>(
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
                  formArray.controls[i]
                      as FormControl<ReactiveTagsFormArrayBuilderT>,
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

class ReactiveTagsFormFormGroupArrayBuilder<
    ReactiveTagsFormFormGroupArrayBuilderT, T> extends StatelessWidget {
  const ReactiveTagsFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveTagsFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveTagsFormFormGroupArrayBuilderT>>
      Function(TagsForm<T> formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, TagsForm<T> formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveTagsFormFormGroupArrayBuilderT? item,
      TagsForm<T> formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTagsForm.of<T>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveTagsFormFormGroupArrayBuilderT>[])
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
