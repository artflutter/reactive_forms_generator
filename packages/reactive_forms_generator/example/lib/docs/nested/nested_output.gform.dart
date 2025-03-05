// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveSubGroupOFormConsumer extends StatelessWidget {
  const ReactiveSubGroupOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, SubGroupOForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSubGroupOForm.of(context);

    if (formModel is! SubGroupOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SubGroupOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const SubGroupOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final SubGroupOForm form;
}

class ReactiveSubGroupOForm extends StatelessWidget {
  const ReactiveSubGroupOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final SubGroupOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static SubGroupOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<SubGroupOFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        SubGroupOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as SubGroupOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SubGroupOFormInheritedStreamer(
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

extension ReactiveReactiveSubGroupOFormExt on BuildContext {
  SubGroupOForm? subGroupOFormWatch() => ReactiveSubGroupOForm.of(this);

  SubGroupOForm? subGroupOFormRead() =>
      ReactiveSubGroupOForm.of(this, listen: false);
}

class SubGroupOFormBuilder extends StatefulWidget {
  const SubGroupOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SubGroupO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, SubGroupOForm formModel, Widget? child) builder;

  final void Function(BuildContext context, SubGroupOForm formModel)? initState;

  @override
  _SubGroupOFormBuilderState createState() => _SubGroupOFormBuilderState();
}

class _SubGroupOFormBuilderState extends State<SubGroupOFormBuilder> {
  late SubGroupOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = SubGroupOForm(SubGroupOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logSubGroupOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant SubGroupOFormBuilder oldWidget) {
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
    return ReactiveSubGroupOForm(
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

final _logSubGroupOForm = Logger.detached('SubGroupOForm');

class SubGroupOForm implements FormModel<SubGroupO, SubGroupOOutput> {
  SubGroupOForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String get _idValue => idControl.value as String;

  String get _idRawValue => idControl.value as String;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get idErrors => idControl.errors;

  void get idFocus => form.focus(idControlPath());

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

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
  @protected
  SubGroupOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logSubGroupOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return SubGroupOOutput(id: _idValue);
  }

  @override
  SubGroupO get rawModel {
    return SubGroupO(id: _idRawValue);
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
  bool equalsTo(SubGroupO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      SubGroupOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(SubGroupOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logSubGroupOForm.info('Errors');
      _logSubGroupOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    SubGroupO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(SubGroupOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    SubGroupO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(SubGroupO? subGroupO) => FormGroup({
        idControlName: FormControl<String>(
            value: subGroupO?.id,
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

@Rf(output: true)
@RfGroup()
@freezed
class SubGroupOOutput with _$SubGroupOOutput {
  const factory SubGroupOOutput({@RfControl() required String id}) =
      _SubGroupOOutput;
  factory SubGroupOOutput.fromJson(Map<String, dynamic> json) =>
      _$SubGroupOOutputFromJson(json);
}

@Rf(output: true)
@RfGroup()
@freezed
class GroupOOutput with _$GroupOOutput {
  const factory GroupOOutput(
          {@RfControl() required String id,
          @RfArray<dynamic>() required List<SubGroupOOutput> subGroupList}) =
      _GroupOOutput;
  factory GroupOOutput.fromJson(Map<String, dynamic> json) =>
      _$GroupOOutputFromJson(json);
}

@Rf(output: true)
@RfGroup()
@freezed
class NestedOOutput with _$NestedOOutput {
  const factory NestedOOutput(
          {@RfArray<dynamic>() required List<GroupOOutput> groupList}) =
      _NestedOOutput;
  factory NestedOOutput.fromJson(Map<String, dynamic> json) =>
      _$NestedOOutputFromJson(json);
}

class ReactiveSubGroupOFormArrayBuilder<ReactiveSubGroupOFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveSubGroupOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveSubGroupOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveSubGroupOFormArrayBuilderT>? Function(
      SubGroupOForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, SubGroupOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveSubGroupOFormArrayBuilderT> control,
      ReactiveSubGroupOFormArrayBuilderT? item,
      SubGroupOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSubGroupOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveSubGroupOFormArrayBuilderT>(
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
                      as FormControl<ReactiveSubGroupOFormArrayBuilderT>,
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

class ReactiveSubGroupOFormFormGroupArrayBuilder<
    ReactiveSubGroupOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveSubGroupOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveSubGroupOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveSubGroupOFormFormGroupArrayBuilderT>>
      Function(SubGroupOForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, SubGroupOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveSubGroupOFormFormGroupArrayBuilderT? item,
      SubGroupOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSubGroupOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveSubGroupOFormFormGroupArrayBuilderT>[])
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

class ReactiveGroupOFormConsumer extends StatelessWidget {
  const ReactiveGroupOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, GroupOForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupOForm.of(context);

    if (formModel is! GroupOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class GroupOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const GroupOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final GroupOForm form;
}

class ReactiveGroupOForm extends StatelessWidget {
  const ReactiveGroupOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final GroupOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static GroupOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<GroupOFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<GroupOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as GroupOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return GroupOFormInheritedStreamer(
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

extension ReactiveReactiveGroupOFormExt on BuildContext {
  GroupOForm? groupOFormWatch() => ReactiveGroupOForm.of(this);

  GroupOForm? groupOFormRead() => ReactiveGroupOForm.of(this, listen: false);
}

class GroupOFormBuilder extends StatefulWidget {
  const GroupOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final GroupO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, GroupOForm formModel, Widget? child) builder;

  final void Function(BuildContext context, GroupOForm formModel)? initState;

  @override
  _GroupOFormBuilderState createState() => _GroupOFormBuilderState();
}

class _GroupOFormBuilderState extends State<GroupOFormBuilder> {
  late GroupOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = GroupOForm(GroupOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logGroupOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant GroupOFormBuilder oldWidget) {
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
    return ReactiveGroupOForm(
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

final _logGroupOForm = Logger.detached('GroupOForm');

class GroupOForm implements FormModel<GroupO, GroupOOutput> {
  GroupOForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String subGroupListControlName = "subGroupList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String idControlPath() => pathBuilder(idControlName);

  String subGroupListControlPath() => pathBuilder(subGroupListControlName);

  String get _idValue => idControl.value as String;

  List<SubGroupOOutput> get _subGroupListValue =>
      subGroupListSubGroupOForm.map((e) => e.model).toList();

  String get _idRawValue => idControl.value as String;

  List<SubGroupO> get _subGroupListRawValue =>
      subGroupListSubGroupOForm.map((e) => e.rawModel).toList();

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsSubGroupList {
    try {
      form.control(subGroupListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get idErrors => idControl.errors;

  Map<String, Object> get subGroupListErrors => subGroupListControl.errors;

  void get idFocus => form.focus(idControlPath());

  void get subGroupListFocus => form.focus(subGroupListControlPath());

  void idValueUpdate(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void subGroupListValueUpdate(
    List<SubGroupO> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      subGroupListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <SubGroupO>[];
    final toAdd = <SubGroupO>[];

    localValue.asMap().forEach((k, v) {
      final values = subGroupListControl.controls.map((e) => e.value).toList();

      if (subGroupListSubGroupOForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      subGroupListControl.updateValue(
          toUpdate.map((e) => SubGroupOForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        subGroupListControl.add(SubGroupOForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void subGroupListInsert(
    int i,
    SubGroupO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = subGroupListControl.controls.map((e) => e.value).toList();
    if (values.length < i) {
      addSubGroupListItem(value);
      return;
    }

    subGroupListControl.insert(
      i,
      SubGroupOForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void subGroupListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    subGroupListSubGroupOForm.clear();
    subGroupListControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void subGroupListValuePatch(
    List<SubGroupO> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = subGroupListSubGroupOForm.asMap().keys;

    final toPatch = <SubGroupO>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    subGroupListControl.patchValue(
        toPatch.map((e) => SubGroupOForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void idValueReset(
    String value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void subGroupListValueReset(
    List<SubGroupO> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      subGroupListControl.reset(
          value:
              value.map((e) => SubGroupOForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormArray<Map<String, Object?>> get subGroupListControl =>
      form.control(subGroupListControlPath())
          as FormArray<Map<String, Object?>>;

  List<SubGroupOForm> get subGroupListSubGroupOForm {
    final values = subGroupListControl.controls.map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, SubGroupOForm(form, pathBuilder("subGroupList.$k"))))
        .values
        .toList();
  }

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

  void subGroupListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      subGroupListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      subGroupListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<SubGroupOForm>>
      get subGroupListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<SubGroupOForm>>(
              form.control(subGroupListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => subGroupListSubGroupOForm);

  void addSubGroupListItem(SubGroupO value) {
    subGroupListControl.add(SubGroupOForm.formElements(value));
  }

  void removeSubGroupListItemAtIndex(int i) {
    if ((subGroupListControl.value ?? []).length > i) {
      subGroupListControl.removeAt(i);
    }
  }

  void addSubGroupListItemList(List<SubGroupO> value) {
    value.forEach((e) => addSubGroupListItem(e));
  }

  @override
  @protected
  GroupOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logGroupOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return GroupOOutput(id: _idValue, subGroupList: _subGroupListValue);
  }

  @override
  GroupO get rawModel {
    return GroupO(id: _idRawValue, subGroupList: _subGroupListRawValue);
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

      subGroupListSubGroupOForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      subGroupListSubGroupOForm.forEach((e) => e.toggleDisabled());

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
  bool equalsTo(GroupO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      GroupOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(GroupOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logGroupOForm.info('Errors');
      _logGroupOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    GroupO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(GroupOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    GroupO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(GroupO? groupO) => FormGroup({
        idControlName: FormControl<String>(
            value: groupO?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        subGroupListControlName: FormArray(
            (groupO?.subGroupList ?? [])
                .map((e) => SubGroupOForm.formElements(e))
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

class ReactiveGroupOFormArrayBuilder<ReactiveGroupOFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveGroupOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveGroupOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveGroupOFormArrayBuilderT>? Function(
      GroupOForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveGroupOFormArrayBuilderT> control,
      ReactiveGroupOFormArrayBuilderT? item,
      GroupOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveGroupOFormArrayBuilderT>(
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
                      as FormControl<ReactiveGroupOFormArrayBuilderT>,
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

class ReactiveGroupOFormFormGroupArrayBuilder<
    ReactiveGroupOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveGroupOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveGroupOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveGroupOFormFormGroupArrayBuilderT>>
      Function(GroupOForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveGroupOFormFormGroupArrayBuilderT? item,
      GroupOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveGroupOFormFormGroupArrayBuilderT>[])
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

class ReactiveNestedOFormConsumer extends StatelessWidget {
  const ReactiveNestedOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, NestedOForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNestedOForm.of(context);

    if (formModel is! NestedOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class NestedOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const NestedOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final NestedOForm form;
}

class ReactiveNestedOForm extends StatelessWidget {
  const ReactiveNestedOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final NestedOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static NestedOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<NestedOFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        NestedOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as NestedOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return NestedOFormInheritedStreamer(
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

extension ReactiveReactiveNestedOFormExt on BuildContext {
  NestedOForm? nestedOFormWatch() => ReactiveNestedOForm.of(this);

  NestedOForm? nestedOFormRead() => ReactiveNestedOForm.of(this, listen: false);
}

class NestedOFormBuilder extends StatefulWidget {
  const NestedOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final NestedO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, NestedOForm formModel, Widget? child) builder;

  final void Function(BuildContext context, NestedOForm formModel)? initState;

  @override
  _NestedOFormBuilderState createState() => _NestedOFormBuilderState();
}

class _NestedOFormBuilderState extends State<NestedOFormBuilder> {
  late NestedOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = NestedOForm(NestedOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logNestedOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant NestedOFormBuilder oldWidget) {
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
    return ReactiveNestedOForm(
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

final _logNestedOForm = Logger.detached('NestedOForm');

class NestedOForm implements FormModel<NestedO, NestedOOutput> {
  NestedOForm(
    this.form,
    this.path,
  );

  static const String groupListControlName = "groupList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String groupListControlPath() => pathBuilder(groupListControlName);

  List<GroupOOutput> get _groupListValue =>
      groupListGroupOForm.map((e) => e.model).toList();

  List<GroupO> get _groupListRawValue =>
      groupListGroupOForm.map((e) => e.rawModel).toList();

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsGroupList {
    try {
      form.control(groupListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get groupListErrors => groupListControl.errors;

  void get groupListFocus => form.focus(groupListControlPath());

  void groupListValueUpdate(
    List<GroupO> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      groupListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <GroupO>[];
    final toAdd = <GroupO>[];

    localValue.asMap().forEach((k, v) {
      final values = groupListControl.controls.map((e) => e.value).toList();

      if (groupListGroupOForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      groupListControl.updateValue(
          toUpdate.map((e) => GroupOForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        groupListControl.add(GroupOForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void groupListInsert(
    int i,
    GroupO value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final values = groupListControl.controls.map((e) => e.value).toList();
    if (values.length < i) {
      addGroupListItem(value);
      return;
    }

    groupListControl.insert(
      i,
      GroupOForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void groupListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    groupListGroupOForm.clear();
    groupListControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void groupListValuePatch(
    List<GroupO> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = groupListGroupOForm.asMap().keys;

    final toPatch = <GroupO>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    groupListControl.patchValue(
        toPatch.map((e) => GroupOForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void groupListValueReset(
    List<GroupO> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      groupListControl.reset(
          value: value.map((e) => GroupOForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormArray<Map<String, Object?>> get groupListControl =>
      form.control(groupListControlPath()) as FormArray<Map<String, Object?>>;

  List<GroupOForm> get groupListGroupOForm {
    final values = groupListControl.controls.map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, GroupOForm(form, pathBuilder("groupList.$k"))))
        .values
        .toList();
  }

  void groupListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      groupListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      groupListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  ExtendedControl<List<Map<String, Object?>?>, List<GroupOForm>>
      get groupListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<GroupOForm>>(
              form.control(groupListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => groupListGroupOForm);

  void addGroupListItem(GroupO value) {
    groupListControl.add(GroupOForm.formElements(value));
  }

  void removeGroupListItemAtIndex(int i) {
    if ((groupListControl.value ?? []).length > i) {
      groupListControl.removeAt(i);
    }
  }

  void addGroupListItemList(List<GroupO> value) {
    value.forEach((e) => addGroupListItem(e));
  }

  @override
  @protected
  NestedOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logNestedOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return NestedOOutput(groupList: _groupListValue);
  }

  @override
  NestedO get rawModel {
    return NestedO(groupList: _groupListRawValue);
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

      groupListGroupOForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      groupListGroupOForm.forEach((e) => e.toggleDisabled());

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
  bool equalsTo(NestedO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      NestedOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(NestedOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logNestedOForm.info('Errors');
      _logNestedOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    NestedO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(NestedOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    NestedO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(NestedO? nestedO) => FormGroup({
        groupListControlName: FormArray(
            (nestedO?.groupList ?? [])
                .map((e) => GroupOForm.formElements(e))
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

class ReactiveNestedOFormArrayBuilder<ReactiveNestedOFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveNestedOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveNestedOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveNestedOFormArrayBuilderT>? Function(
      NestedOForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, NestedOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveNestedOFormArrayBuilderT> control,
      ReactiveNestedOFormArrayBuilderT? item,
      NestedOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNestedOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveNestedOFormArrayBuilderT>(
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
                      as FormControl<ReactiveNestedOFormArrayBuilderT>,
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

class ReactiveNestedOFormFormGroupArrayBuilder<
    ReactiveNestedOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveNestedOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveNestedOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveNestedOFormFormGroupArrayBuilderT>>
      Function(NestedOForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, NestedOForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveNestedOFormFormGroupArrayBuilderT? item,
      NestedOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNestedOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveNestedOFormFormGroupArrayBuilderT>[])
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
