// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mailing_list.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveMailingListFormConsumer extends StatelessWidget {
  const ReactiveMailingListFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, MailingListForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListForm.of(context);

    if (formModel is! MailingListForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class MailingListFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const MailingListFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final MailingListForm form;
}

class ReactiveMailingListForm extends StatelessWidget {
  const ReactiveMailingListForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final MailingListForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static MailingListForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              MailingListFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        MailingListFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as MailingListFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return MailingListFormInheritedStreamer(
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

extension ReactiveReactiveMailingListFormExt on BuildContext {
  MailingListForm? mailingListFormWatch() => ReactiveMailingListForm.of(this);

  MailingListForm? mailingListFormRead() =>
      ReactiveMailingListForm.of(this, listen: false);
}

class MailingListFormBuilder extends StatefulWidget {
  const MailingListFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final MailingList? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, MailingListForm formModel, Widget? child) builder;

  final void Function(BuildContext context, MailingListForm formModel)?
      initState;

  @override
  _MailingListFormBuilderState createState() => _MailingListFormBuilderState();
}

class _MailingListFormBuilderState extends State<MailingListFormBuilder> {
  late MailingListForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        MailingListForm(MailingListForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logMailingListForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant MailingListFormBuilder oldWidget) {
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
    return ReactiveMailingListForm(
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

final _logMailingListForm = Logger.detached('MailingListForm');

class MailingListForm implements FormModel<MailingList, MailingList> {
  MailingListForm(
    this.form,
    this.path,
  );

  static const String emailListControlName = "emailList";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String emailListControlPath() => pathBuilder(emailListControlName);

  List<String?> get _emailListValue =>
      emailListControl.rawValue.whereType<String?>().toList();

  List<String?> get _emailListRawValue =>
      emailListControl.rawValue.whereType<String?>().toList();

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsEmailList {
    try {
      form.control(emailListControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get emailListErrors => emailListControl.errors;

  void get emailListFocus => form.focus(emailListControlPath());

  void emailListValueUpdate(
    List<String?> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailListControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailListValuePatch(
    List<String?> value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    emailListControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailListValueReset(
    List<String?> value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      emailListControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormArray<String> get emailListControl =>
      form.control(emailListControlPath()) as FormArray<String>;

  List<FormControl<String>> get emailListControlControls =>
      emailListControl.controls.cast<FormControl<String>>();

  void emailListSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      emailListControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      emailListControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void addEmailListItem(
    String? value, {
    List<AsyncValidator<dynamic>>? asyncValidators,
    List<Validator<dynamic>>? validators,
    int? asyncValidatorsDebounceTime,
    bool? disabled,
    ValidatorsApplyMode validatorsApplyMode = ValidatorsApplyMode.merge,
  }) {
    List<Validator<dynamic>> resultingValidators = [EmailValidator()];
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

    emailListControl.add(FormControl<String>(
      value: value,
      validators: resultingValidators,
      asyncValidators: resultingAsyncValidators,
      asyncValidatorsDebounceTime: asyncValidatorsDebounceTime ?? 250,
      disabled: disabled ?? false,
    ));
  }

  @override
  MailingList get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logMailingListForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return MailingList(emailList: _emailListValue);
  }

  @override
  MailingList get rawModel {
    return MailingList(emailList: _emailListRawValue);
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
  bool equalsTo(MailingList? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      MailingListForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(MailingList model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logMailingListForm.info('Errors');
      _logMailingListForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    MailingList? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(MailingListForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    MailingList? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(MailingList? mailingList) => FormGroup({
        emailListControlName: FormArray<String>(
            (mailingList?.emailList ?? [])
                .map((e) => FormControl<String>(
                      value: e,
                      validators: [EmailValidator()],
                      asyncValidators: [],
                      asyncValidatorsDebounceTime: 250,
                      disabled: false,
                    ))
                .toList(),
            validators: [MailingListValidator()],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

class ReactiveMailingListFormArrayBuilder<ReactiveMailingListFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveMailingListFormArrayBuilder({
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

  final FormArray<ReactiveMailingListFormArrayBuilderT>? formControl;

  final FormArray<ReactiveMailingListFormArrayBuilderT>? Function(
      MailingListForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MailingListForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveMailingListFormArrayBuilderT> control,
      ReactiveMailingListFormArrayBuilderT? item,
      MailingListForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
      FormControl<ReactiveMailingListFormArrayBuilderT> control)? controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveMailingListFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveMailingListFormArrayBuilderT>,
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
                      as FormControl<ReactiveMailingListFormArrayBuilderT>,
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

class ReactiveMailingListFormArrayBuilder2<ReactiveMailingListFormArrayBuilderT>
    extends StatelessWidget {
  const ReactiveMailingListFormArrayBuilder2({
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

  final FormArray<ReactiveMailingListFormArrayBuilderT>? formControl;

  final FormArray<ReactiveMailingListFormArrayBuilderT>? Function(
      MailingListForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        MailingListForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveMailingListFormArrayBuilderT> control,
        ReactiveMailingListFormArrayBuilderT? item,
        MailingListForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
      FormControl<ReactiveMailingListFormArrayBuilderT> control)? controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveMailingListFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveMailingListFormArrayBuilderT>,
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
                      as FormControl<ReactiveMailingListFormArrayBuilderT>,
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

class ReactiveMailingListFormFormGroupArrayBuilder<
    ReactiveMailingListFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveMailingListFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveMailingListFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveMailingListFormFormGroupArrayBuilderT>>
      Function(MailingListForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MailingListForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveMailingListFormFormGroupArrayBuilderT? item,
      MailingListForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveMailingListFormFormGroupArrayBuilderT>[])
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
