// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

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
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final SubGroupForm form;

  final WillPopCallback? onWillPop;

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
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class SubGroupFormBuilder extends StatefulWidget {
  const SubGroupFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final SubGroup? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, SubGroupForm formModel, Widget? child) builder;

  final void Function(BuildContext context, SubGroupForm formModel)? initState;

  @override
  _SubGroupFormBuilderState createState() => _SubGroupFormBuilderState();
}

class _SubGroupFormBuilderState extends State<SubGroupFormBuilder> {
  late SubGroupForm _formModel;

  @override
  void initState() {
    _formModel = SubGroupForm(SubGroupForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveSubGroupForm(
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

class SubGroupForm implements FormModel<SubGroup> {
  SubGroupForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  final FormGroup form;

  final String? path;

  String idControlPath() => pathBuilder(idControlName);

  String get _idValue => idControl.value as String;

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
          value: value, updateParent: updateParent, emitEvent: emitEvent);

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
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'SubGroupForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return SubGroup(id: _idValue);
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

class ReactiveSubGroupFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveSubGroupFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(SubGroupForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, SubGroupForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, SubGroupForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveSubGroupForm.of(context);

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

class ReactiveSubGroupFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveSubGroupFormFormGroupArrayBuilder({
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
      SubGroupForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, SubGroupForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, SubGroupForm formModel) itemBuilder;

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
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final GroupForm form;

  final WillPopCallback? onWillPop;

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
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class GroupFormBuilder extends StatefulWidget {
  const GroupFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Group? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, GroupForm formModel, Widget? child) builder;

  final void Function(BuildContext context, GroupForm formModel)? initState;

  @override
  _GroupFormBuilderState createState() => _GroupFormBuilderState();
}

class _GroupFormBuilderState extends State<GroupFormBuilder> {
  late GroupForm _formModel;

  @override
  void initState() {
    _formModel = GroupForm(GroupForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveGroupForm(
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

class GroupForm implements FormModel<Group> {
  GroupForm(
    this.form,
    this.path,
  );

  static const String idControlName = "id";

  static const String subGroupListControlName = "subGroupList";

  final FormGroup form;

  final String? path;

  String idControlPath() => pathBuilder(idControlName);

  String subGroupListControlPath() => pathBuilder(subGroupListControlName);

  String get _idValue => idControl.value as String;

  List<SubGroup> get _subGroupListValue =>
      subGroupListSubGroupForm.map((e) => e.model).toList();

  bool get containsId {
    try {
      form.control(idControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsSubGroupList {
    try {
      form.control(subGroupListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get idErrors => idControl.errors;

  Object? get subGroupListErrors => subGroupListControl.errors;

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
      if (subGroupListSubGroupForm.asMap().containsKey(k) &&
          (subGroupListControl.value ?? []).asMap().containsKey(k)) {
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
    if ((subGroupListControl.value ?? []).length < i) {
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
          value: value, updateParent: updateParent, emitEvent: emitEvent);

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

  List<SubGroupForm> get subGroupListSubGroupForm =>
      (subGroupListControl.value ?? [])
          .asMap()
          .map((k, v) =>
              MapEntry(k, SubGroupForm(form, pathBuilder("subGroupList.$k"))))
          .values
          .toList();

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
    value.map((e) => addSubGroupListItem(e));
  }

  @override
  Group get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'GroupForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Group(id: _idValue, subGroupList: _subGroupListValue);
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

class ReactiveGroupFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveGroupFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(GroupForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, GroupForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveGroupForm.of(context);

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

class ReactiveGroupFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveGroupFormFormGroupArrayBuilder({
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
      GroupForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, GroupForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, GroupForm formModel) itemBuilder;

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
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final NestedForm form;

  final WillPopCallback? onWillPop;

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
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class NestedFormBuilder extends StatefulWidget {
  const NestedFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Nested? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, NestedForm formModel, Widget? child) builder;

  final void Function(BuildContext context, NestedForm formModel)? initState;

  @override
  _NestedFormBuilderState createState() => _NestedFormBuilderState();
}

class _NestedFormBuilderState extends State<NestedFormBuilder> {
  late NestedForm _formModel;

  @override
  void initState() {
    _formModel = NestedForm(NestedForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveNestedForm(
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

class NestedForm implements FormModel<Nested> {
  NestedForm(
    this.form,
    this.path,
  );

  static const String groupListControlName = "groupList";

  final FormGroup form;

  final String? path;

  String groupListControlPath() => pathBuilder(groupListControlName);

  List<Group> get _groupListValue =>
      groupListGroupForm.map((e) => e.model).toList();

  bool get containsGroupList {
    try {
      form.control(groupListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get groupListErrors => groupListControl.errors;

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
      if (groupListGroupForm.asMap().containsKey(k) &&
          (groupListControl.value ?? []).asMap().containsKey(k)) {
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
    if ((groupListControl.value ?? []).length < i) {
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

  List<GroupForm> get groupListGroupForm => (groupListControl.value ?? [])
      .asMap()
      .map((k, v) => MapEntry(k, GroupForm(form, pathBuilder("groupList.$k"))))
      .values
      .toList();

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
    value.map((e) => addGroupListItem(e));
  }

  @override
  Nested get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'NestedForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return Nested(groupList: _groupListValue);
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

class ReactiveNestedFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveNestedFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(NestedForm formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, NestedForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, NestedForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveNestedForm.of(context);

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

class ReactiveNestedFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveNestedFormFormGroupArrayBuilder({
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
      NestedForm formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, NestedForm formModel)?
      builder;

  final Widget Function(
      BuildContext context, int i, T? item, NestedForm formModel) itemBuilder;

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
