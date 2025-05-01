// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveSubGroupFormConsumer extends StatelessWidget {
  const ReactiveSubGroupFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, SubGroupForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSubGroupForm.of(context);

    if (formModel is! SubGroupForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class SubGroupFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const SubGroupFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final SubGroupForm form;
}

class ReactiveSubGroupForm extends StatelessWidget {
  const ReactiveSubGroupForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final SubGroupForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static SubGroupForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<SubGroupFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        SubGroupFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as SubGroupFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return SubGroupFormInheritedStreamer(
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

extension ReactiveReactiveSubGroupFormExt on BuildContext {
  SubGroupForm? subGroupFormWatch() => ReactiveSubGroupForm.of(this);

  SubGroupForm? subGroupFormRead() =>
      ReactiveSubGroupForm.of(this, listen: false);
}

class SubGroupFormBuilder extends StatefulWidget {
  const SubGroupFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SubGroup? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, SubGroupForm formModel, Widget? child) builder;

  final void Function(BuildContext context, SubGroupForm formModel)? initState;

  @override
  _SubGroupFormBuilderState createState() => _SubGroupFormBuilderState();
}

class _SubGroupFormBuilderState extends State<SubGroupFormBuilder> {
  late SubGroupForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = SubGroupForm(SubGroupForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logSubGroupForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant SubGroupFormBuilder oldWidget) {
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
    return ReactiveSubGroupForm(
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

final _logSubGroupForm = Logger.detached('SubGroupForm');

class SubGroupForm implements FormModel<SubGroup, SubGroup> {
  SubGroupForm(
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
  SubGroup get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logSubGroupForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return SubGroup(id: _idValue);
  }

  @override
  SubGroup get rawModel {
    return SubGroup(id: _idRawValue);
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
  bool equalsTo(SubGroup? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      SubGroupForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(SubGroup model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logSubGroupForm.info('Errors');
      _logSubGroupForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    SubGroup? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(SubGroupForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    SubGroup? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(SubGroup? subGroup) => FormGroup({
        idControlName: FormControl<String>(
            value: subGroup?.id,
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

class ReactiveSubGroupFormArrayBuilder<ReactiveSubGroupFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveSubGroupFormArrayBuilder({
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

  final FormArray<ReactiveSubGroupFormArrayBuilderT>? formControl;

  final FormArray<ReactiveSubGroupFormArrayBuilderT>? Function(
      SubGroupForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, SubGroupForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveSubGroupFormArrayBuilderT> control,
      ReactiveSubGroupFormArrayBuilderT? item,
      SubGroupForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveSubGroupFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSubGroupForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveSubGroupFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveSubGroupFormArrayBuilderT>,
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
                      as FormControl<ReactiveSubGroupFormArrayBuilderT>,
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

class ReactiveSubGroupFormArrayBuilder2<ReactiveSubGroupFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveSubGroupFormArrayBuilder2({
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

  final FormArray<ReactiveSubGroupFormArrayBuilderT>? formControl;

  final FormArray<ReactiveSubGroupFormArrayBuilderT>? Function(
      SubGroupForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        SubGroupForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveSubGroupFormArrayBuilderT> control,
        ReactiveSubGroupFormArrayBuilderT? item,
        SubGroupForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveSubGroupFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSubGroupForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveSubGroupFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveSubGroupFormArrayBuilderT>,
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
                      as FormControl<ReactiveSubGroupFormArrayBuilderT>,
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

class ReactiveSubGroupFormFormGroupArrayBuilder<
    ReactiveSubGroupFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveSubGroupFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveSubGroupFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveSubGroupFormFormGroupArrayBuilderT>>
      Function(SubGroupForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, SubGroupForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveSubGroupFormFormGroupArrayBuilderT? item,
      SubGroupForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSubGroupForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveSubGroupFormFormGroupArrayBuilderT>[])
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

class ReactiveGroupFormConsumer extends StatelessWidget {
  const ReactiveGroupFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, GroupForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupForm.of(context);

    if (formModel is! GroupForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class GroupFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const GroupFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final GroupForm form;
}

class ReactiveGroupForm extends StatelessWidget {
  const ReactiveGroupForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final GroupForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static GroupForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<GroupFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<GroupFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as GroupFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return GroupFormInheritedStreamer(
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

extension ReactiveReactiveGroupFormExt on BuildContext {
  GroupForm? groupFormWatch() => ReactiveGroupForm.of(this);

  GroupForm? groupFormRead() => ReactiveGroupForm.of(this, listen: false);
}

class GroupFormBuilder extends StatefulWidget {
  const GroupFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Group? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, GroupForm formModel, Widget? child) builder;

  final void Function(BuildContext context, GroupForm formModel)? initState;

  @override
  _GroupFormBuilderState createState() => _GroupFormBuilderState();
}

class _GroupFormBuilderState extends State<GroupFormBuilder> {
  late GroupForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = GroupForm(GroupForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logGroupForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant GroupFormBuilder oldWidget) {
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
    return ReactiveGroupForm(
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

final _logGroupForm = Logger.detached('GroupForm');

class GroupForm implements FormModel<Group, Group> {
  GroupForm(
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

  List<SubGroup> get _subGroupListValue =>
      subGroupListSubGroupForm.map((e) => e.model).toList();

  String get _idRawValue => idControl.value as String;

  List<SubGroup> get _subGroupListRawValue =>
      subGroupListSubGroupForm.map((e) => e.rawModel).toList();

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
    List<SubGroup> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      subGroupListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <SubGroup>[];
    final toAdd = <SubGroup>[];

    localValue.asMap().forEach((k, v) {
      final values = subGroupListControl.controls.map((e) => e.value).toList();

      if (subGroupListSubGroupForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      subGroupListControl.updateValue(
          toUpdate.map((e) => SubGroupForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        subGroupListControl.add(SubGroupForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void subGroupListInsert(
    int i,
    SubGroup value, {
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
      SubGroupForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void subGroupListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    subGroupListSubGroupForm.clear();
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
    List<SubGroup> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = subGroupListSubGroupForm.asMap().keys;

    final toPatch = <SubGroup>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    subGroupListControl.patchValue(
        toPatch.map((e) => SubGroupForm.formElements(e).rawValue).toList(),
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
    List<SubGroup> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      subGroupListControl.reset(
          value:
              value.map((e) => SubGroupForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String> get idControl =>
      form.control(idControlPath()) as FormControl<String>;

  FormArray<Map<String, Object?>> get subGroupListControl =>
      form.control(subGroupListControlPath())
          as FormArray<Map<String, Object?>>;

  List<SubGroupForm> get subGroupListSubGroupForm {
    final values = subGroupListControl.controls.map((e) => e.value).toList();

    return values
        .asMap()
        .map((k, v) =>
            MapEntry(k, SubGroupForm(form, pathBuilder("subGroupList.$k"))))
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

  ExtendedControl<List<Map<String, Object?>?>, List<SubGroupForm>>
      get subGroupListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<SubGroupForm>>(
              form.control(subGroupListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => subGroupListSubGroupForm);

  void addSubGroupListItem(SubGroup value) {
    subGroupListControl.add(SubGroupForm.formElements(value));
  }

  void removeSubGroupListItemAtIndex(int i) {
    if ((subGroupListControl.value ?? []).length > i) {
      subGroupListControl.removeAt(i);
    }
  }

  void addSubGroupListItemList(List<SubGroup> value) {
    value.forEach((e) => addSubGroupListItem(e));
  }

  @override
  Group get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logGroupForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return Group(id: _idValue, subGroupList: _subGroupListValue);
  }

  @override
  Group get rawModel {
    return Group(id: _idRawValue, subGroupList: _subGroupListRawValue);
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

      subGroupListSubGroupForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      subGroupListSubGroupForm.forEach((e) => e.toggleDisabled());

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
  bool equalsTo(Group? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      GroupForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(Group model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logGroupForm.info('Errors');
      _logGroupForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Group? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(GroupForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Group? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Group? group) => FormGroup({
        idControlName: FormControl<String>(
            value: group?.id,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        subGroupListControlName: FormArray(
            (group?.subGroupList ?? [])
                .map((e) => SubGroupForm.formElements(e))
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

class ReactiveGroupFormArrayBuilder<ReactiveGroupFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveGroupFormArrayBuilder({
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

  final FormArray<ReactiveGroupFormArrayBuilderT>? formControl;

  final FormArray<ReactiveGroupFormArrayBuilderT>? Function(
      GroupForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveGroupFormArrayBuilderT> control,
      ReactiveGroupFormArrayBuilderT? item,
      GroupForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveGroupFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveGroupFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveGroupFormArrayBuilderT>,
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
                      as FormControl<ReactiveGroupFormArrayBuilderT>,
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

class ReactiveGroupFormArrayBuilder2<ReactiveGroupFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveGroupFormArrayBuilder2({
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

  final FormArray<ReactiveGroupFormArrayBuilderT>? formControl;

  final FormArray<ReactiveGroupFormArrayBuilderT>? Function(
      GroupForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        GroupForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveGroupFormArrayBuilderT> control,
        ReactiveGroupFormArrayBuilderT? item,
        GroupForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveGroupFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveGroupFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveGroupFormArrayBuilderT>,
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
                      as FormControl<ReactiveGroupFormArrayBuilderT>,
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

class ReactiveGroupFormFormGroupArrayBuilder<
    ReactiveGroupFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveGroupFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveGroupFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveGroupFormFormGroupArrayBuilderT>>
      Function(GroupForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveGroupFormFormGroupArrayBuilderT? item,
      GroupForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveGroupFormFormGroupArrayBuilderT>[])
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

class ReactiveNestedFormConsumer extends StatelessWidget {
  const ReactiveNestedFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, NestedForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNestedForm.of(context);

    if (formModel is! NestedForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class NestedFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const NestedFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final NestedForm form;
}

class ReactiveNestedForm extends StatelessWidget {
  const ReactiveNestedForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final NestedForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static NestedForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<NestedFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<NestedFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as NestedFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return NestedFormInheritedStreamer(
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

extension ReactiveReactiveNestedFormExt on BuildContext {
  NestedForm? nestedFormWatch() => ReactiveNestedForm.of(this);

  NestedForm? nestedFormRead() => ReactiveNestedForm.of(this, listen: false);
}

class NestedFormBuilder extends StatefulWidget {
  const NestedFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Nested? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, NestedForm formModel, Widget? child) builder;

  final void Function(BuildContext context, NestedForm formModel)? initState;

  @override
  _NestedFormBuilderState createState() => _NestedFormBuilderState();
}

class _NestedFormBuilderState extends State<NestedFormBuilder> {
  late NestedForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = NestedForm(NestedForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logNestedForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant NestedFormBuilder oldWidget) {
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
    return ReactiveNestedForm(
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

final _logNestedForm = Logger.detached('NestedForm');

class NestedForm implements FormModel<Nested, Nested> {
  NestedForm(
    this.form,
    this.path,
  );

  static const String groupListControlName = "groupList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String groupListControlPath() => pathBuilder(groupListControlName);

  List<Group> get _groupListValue =>
      groupListGroupForm.map((e) => e.model).toList();

  List<Group> get _groupListRawValue =>
      groupListGroupForm.map((e) => e.rawModel).toList();

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
    List<Group> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final localValue = (value);
    if (localValue.isEmpty) {
      groupListClear(updateParent: updateParent, emitEvent: emitEvent);

      return;
    }

    final toUpdate = <Group>[];
    final toAdd = <Group>[];

    localValue.asMap().forEach((k, v) {
      final values = groupListControl.controls.map((e) => e.value).toList();

      if (groupListGroupForm.asMap().containsKey(k) &&
          values.asMap().containsKey(k)) {
        toUpdate.add(v);
      } else {
        toAdd.add(v);
      }
    });

    if (toUpdate.isNotEmpty) {
      groupListControl.updateValue(
          toUpdate.map((e) => GroupForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);
    }

    if (toAdd.isNotEmpty) {
      toAdd.forEach((e) {
        groupListControl.add(GroupForm.formElements(e),
            updateParent: updateParent, emitEvent: emitEvent);
      });
    }
  }

  void groupListInsert(
    int i,
    Group value, {
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
      GroupForm.formElements(value),
      updateParent: updateParent,
      emitEvent: emitEvent,
    );
  }

  void groupListClear({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    groupListGroupForm.clear();
    groupListControl.clear(updateParent: updateParent, emitEvent: emitEvent);
  }

  void groupListValuePatch(
    List<Group> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    final keys = groupListGroupForm.asMap().keys;

    final toPatch = <Group>[];
    (value).asMap().forEach(
      (k, v) {
        if (keys.contains(k)) {
          toPatch.add(v);
        }
      },
    );

    groupListControl.patchValue(
        toPatch.map((e) => GroupForm.formElements(e).rawValue).toList(),
        updateParent: updateParent,
        emitEvent: emitEvent);
  }

  void groupListValueReset(
    List<Group> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      groupListControl.reset(
          value: value.map((e) => GroupForm.formElements(e).rawValue).toList(),
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormArray<Map<String, Object?>> get groupListControl =>
      form.control(groupListControlPath()) as FormArray<Map<String, Object?>>;

  List<GroupForm> get groupListGroupForm {
    final values = groupListControl.controls.map((e) => e.value).toList();

    return values
        .asMap()
        .map(
            (k, v) => MapEntry(k, GroupForm(form, pathBuilder("groupList.$k"))))
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

  ExtendedControl<List<Map<String, Object?>?>, List<GroupForm>>
      get groupListExtendedControl =>
          ExtendedControl<List<Map<String, Object?>?>, List<GroupForm>>(
              form.control(groupListControlPath())
                  as FormArray<Map<String, Object?>>,
              () => groupListGroupForm);

  void addGroupListItem(Group value) {
    groupListControl.add(GroupForm.formElements(value));
  }

  void removeGroupListItemAtIndex(int i) {
    if ((groupListControl.value ?? []).length > i) {
      groupListControl.removeAt(i);
    }
  }

  void addGroupListItemList(List<Group> value) {
    value.forEach((e) => addGroupListItem(e));
  }

  @override
  Nested get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logNestedForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return Nested(groupList: _groupListValue);
  }

  @override
  Nested get rawModel {
    return Nested(groupList: _groupListRawValue);
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

      groupListGroupForm.forEach((e) => e.toggleDisabled());

      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      groupListGroupForm.forEach((e) => e.toggleDisabled());

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
  bool equalsTo(Nested? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      NestedForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(Nested model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logNestedForm.info('Errors');
      _logNestedForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Nested? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(NestedForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Nested? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(Nested? nested) => FormGroup({
        groupListControlName: FormArray(
            (nested?.groupList ?? [])
                .map((e) => GroupForm.formElements(e))
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

class ReactiveNestedFormArrayBuilder<ReactiveNestedFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveNestedFormArrayBuilder({
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

  final FormArray<ReactiveNestedFormArrayBuilderT>? formControl;

  final FormArray<ReactiveNestedFormArrayBuilderT>? Function(
      NestedForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, NestedForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveNestedFormArrayBuilderT> control,
      ReactiveNestedFormArrayBuilderT? item,
      NestedForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveNestedFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNestedForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveNestedFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveNestedFormArrayBuilderT>,
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
                      as FormControl<ReactiveNestedFormArrayBuilderT>,
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

class ReactiveNestedFormArrayBuilder2<ReactiveNestedFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveNestedFormArrayBuilder2({
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

  final FormArray<ReactiveNestedFormArrayBuilderT>? formControl;

  final FormArray<ReactiveNestedFormArrayBuilderT>? Function(
      NestedForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        NestedForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveNestedFormArrayBuilderT> control,
        ReactiveNestedFormArrayBuilderT? item,
        NestedForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveNestedFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNestedForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveNestedFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveNestedFormArrayBuilderT>,
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
                      as FormControl<ReactiveNestedFormArrayBuilderT>,
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

class ReactiveNestedFormFormGroupArrayBuilder<
    ReactiveNestedFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveNestedFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveNestedFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveNestedFormFormGroupArrayBuilderT>>
      Function(NestedForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, NestedForm formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveNestedFormFormGroupArrayBuilderT? item,
      NestedForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNestedForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveNestedFormFormGroupArrayBuilderT>[])
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
