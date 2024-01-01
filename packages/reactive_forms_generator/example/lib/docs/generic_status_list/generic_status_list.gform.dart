// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'generic_status_list.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveStatusListFormConsumer<T> extends StatelessWidget {
  const ReactiveStatusListFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, StatusListForm<T> formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStatusListForm.of<T>(context);

    if (formModel is! StatusListForm<T>) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class StatusListFormInheritedStreamer<T> extends InheritedStreamer<dynamic> {
  const StatusListFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final StatusListForm<T> form;
}

class ReactiveStatusListForm<T> extends StatelessWidget {
  const ReactiveStatusListForm({
    Key? key,
    required this.form,
    required this.child,
    this.onWillPop,
  }) : super(key: key);

  final Widget child;

  final StatusListForm<T> form;

  final WillPopCallback? onWillPop;

  static StatusListForm<T>? of<T>(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              StatusListFormInheritedStreamer<T>>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        StatusListFormInheritedStreamer<T>>();
    return element == null
        ? null
        : (element.widget as StatusListFormInheritedStreamer<T>).form;
  }

  @override
  Widget build(BuildContext context) {
    return StatusListFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class StatusListFormBuilder<T> extends StatefulWidget {
  const StatusListFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.onWillPop,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final StatusList<T>? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, StatusListForm<T> formModel, Widget? child) builder;

  final void Function(BuildContext context, StatusListForm<T> formModel)?
      initState;

  @override
  _StatusListFormBuilderState<T> createState() =>
      _StatusListFormBuilderState<T>();
}

class _StatusListFormBuilderState<T> extends State<StatusListFormBuilder<T>> {
  late StatusListForm<T> _formModel;

  @override
  void initState() {
    _formModel =
        StatusListForm<T>(StatusListForm.formElements<T>(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    super.initState();
  }

  @override
  void didUpdateWidget(covariant StatusListFormBuilder<T> oldWidget) {
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
    return ReactiveStatusListForm(
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

class StatusListForm<T> implements FormModel<StatusList<T>> {
  StatusListForm(
    this.form,
    this.path,
  );

  static const String listControlName = "list";

  final FormGroup form;

  final String? path;

  String listControlPath() => pathBuilder(listControlName);

  List<T?> get _listValue => listControl.value?.whereType<T?>().toList() ?? [];

  bool get containsList {
    try {
      form.control(listControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get listErrors => listControl.errors;

  void get listFocus => form.focus(listControlPath());

  void listValueUpdate(
    List<T?> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    listControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void listValuePatch(
    List<T?> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    listControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void listValueReset(
    List<T?> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      listControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormArray<T> get listControl =>
      form.control(listControlPath()) as FormArray<T>;

  void listSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      listControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      listControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addListItem(
    T? value, {
    List<AsyncValidator<dynamic>>? asyncValidators,
    List<Validator<dynamic>>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<Validator<dynamic>> resultingValidators = [];
    List<AsyncValidator<dynamic>> resultingAsyncValidators = [];

    switch (validatorsApplyMode) {
      case ValidatorsApplyMode.merge:
        if (validators != null) {
          resultingValidators.addAll(validators);
        }
        if (asyncValidators != null) {
          resultingAsyncValidators.addAll(asyncValidators);
        }
        break;
      case ValidatorsApplyMode.override:
        if (validators != null) {
          resultingValidators = validators;
        }

        if (asyncValidators != null) {
          resultingAsyncValidators = asyncValidators;
        }
        break;
    }

    listControl.add(FormControl<T>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  StatusList<T> get model {
    if (!currentForm.valid) {
      debugPrint(
          '[${path ?? 'StatusListForm<T>'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return StatusList<T>(list: _listValue);
  }

  @override
  void submit({
    required void Function(StatusList<T> model) onValid,
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
    StatusList<T>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(StatusListForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    StatusList<T>? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements<T>(StatusList<T>? statusList) => FormGroup({
        listControlName: FormArray<T>(
            (statusList?.list ?? [])
                .map((e) => FormControl<T>(
                      value: e,
                      validators: [],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
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

class ReactiveStatusListFormArrayBuilder<T> extends StatelessWidget {
  const ReactiveStatusListFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<T>? formControl;

  final FormArray<T>? Function(StatusListForm<T> formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StatusListForm<T> formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, StatusListForm<T> formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStatusListForm.of<T>(context);

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

class ReactiveStatusListFormFormGroupArrayBuilder<T> extends StatelessWidget {
  const ReactiveStatusListFormFormGroupArrayBuilder({
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
      StatusListForm<T> formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StatusListForm<T> formModel)? builder;

  final Widget Function(
          BuildContext context, int i, T? item, StatusListForm<T> formModel)
      itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStatusListForm.of<T>(context);

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
