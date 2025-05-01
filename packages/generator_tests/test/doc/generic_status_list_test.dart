@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'generic_status_list';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Generic status list',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            @Rf(output: false)
            class StatusList<T extends Enum> {
              final List<T?> list;
            
              StatusList({
                @RfArray<T>() this.list = const [],
              });
            }
          ''',
          generatedFile: generatedFile,
        );
      },
    );
  });
}

const generatedFile = r'''// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic_status_list.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveStatusListFormConsumer<T extends Enum> extends StatelessWidget {
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

class StatusListFormInheritedStreamer<T extends Enum>
    extends InheritedStreamer<dynamic> {
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

class ReactiveStatusListForm<T extends Enum> extends StatelessWidget {
  const ReactiveStatusListForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final StatusListForm<T> form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static StatusListForm<T>? of<T extends Enum>(
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
      child: ReactiveFormPopScope(
        canPop: canPop,
        onPopInvoked: onPopInvoked,
        child: child,
      ),
    );
  }
}

extension ReactiveReactiveStatusListFormExt on BuildContext {
  StatusListForm<T>? statusListFormWatch<T extends Enum>() =>
      ReactiveStatusListForm.of<T>(this);

  StatusListForm<T>? statusListFormRead<T extends Enum>() =>
      ReactiveStatusListForm.of<T>(this, listen: false);
}

class StatusListFormBuilder<T extends Enum> extends StatefulWidget {
  const StatusListFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final StatusList<T>? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, StatusListForm<T> formModel, Widget? child) builder;

  final void Function(BuildContext context, StatusListForm<T> formModel)?
      initState;

  @override
  _StatusListFormBuilderState<T> createState() =>
      _StatusListFormBuilderState<T>();
}

class _StatusListFormBuilderState<T extends Enum>
    extends State<StatusListFormBuilder<T>> {
  late StatusListForm<T> _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        StatusListForm<T>(StatusListForm.formElements<T>(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logStatusListForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant StatusListFormBuilder<T> oldWidget) {
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
    return ReactiveStatusListForm(
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

final _logStatusListForm = Logger.detached('StatusListForm<T>');

class StatusListForm<T extends Enum>
    implements FormModel<StatusList<T>, StatusList<T>> {
  StatusListForm(
    this.form,
    this.path,
  );

  static const String listControlName = "list";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String listControlPath() => pathBuilder(listControlName);

  List<T?> get _listValue => listControl.rawValue.whereType<T?>().toList();

  List<T?> get _listRawValue => listControl.rawValue.whereType<T?>().toList();

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsList {
    try {
      form.control(listControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object> get listErrors => listControl.errors;

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
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormArray<T> get listControl =>
      form.control(listControlPath()) as FormArray<T>;

  List<FormControl<T>> get listControlControls =>
      listControl.controls.cast<FormControl<T>>();

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
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logStatusListForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return StatusList<T>(list: _listValue);
  }

  @override
  StatusList<T> get rawModel {
    return StatusList<T>(list: _listRawValue);
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
  bool equalsTo(StatusList<T>? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      StatusListForm.formElements(other).rawValue,
    );
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
      _logStatusListForm.info('Errors');
      _logStatusListForm.info('┗━━ ${form.errors}');
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

  static FormGroup formElements<T extends Enum>(StatusList<T>? statusList) =>
      FormGroup({
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

class ReactiveStatusListFormArrayBuilder<ReactiveStatusListFormArrayBuilderT,
    T extends Enum> extends StatelessWidget {
  const ReactiveStatusListFormArrayBuilder({
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

  final FormArray<ReactiveStatusListFormArrayBuilderT>? formControl;

  final FormArray<ReactiveStatusListFormArrayBuilderT>? Function(
      StatusListForm<T> formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StatusListForm<T> formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveStatusListFormArrayBuilderT> control,
      ReactiveStatusListFormArrayBuilderT? item,
      StatusListForm<T> formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveStatusListFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStatusListForm.of<T>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveStatusListFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveStatusListFormArrayBuilderT>,
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
                      as FormControl<ReactiveStatusListFormArrayBuilderT>,
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

class ReactiveStatusListFormArrayBuilder2<ReactiveStatusListFormArrayBuilderT,
    T extends Enum> extends StatelessWidget {
  const ReactiveStatusListFormArrayBuilder2({
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

  final FormArray<ReactiveStatusListFormArrayBuilderT>? formControl;

  final FormArray<ReactiveStatusListFormArrayBuilderT>? Function(
      StatusListForm<T> formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        StatusListForm<T> formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveStatusListFormArrayBuilderT> control,
        ReactiveStatusListFormArrayBuilderT? item,
        StatusListForm<T> formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveStatusListFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveStatusListForm.of<T>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveStatusListFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveStatusListFormArrayBuilderT>,
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
                      as FormControl<ReactiveStatusListFormArrayBuilderT>,
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

class ReactiveStatusListFormFormGroupArrayBuilder<
    ReactiveStatusListFormFormGroupArrayBuilderT,
    T extends Enum> extends StatelessWidget {
  const ReactiveStatusListFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveStatusListFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveStatusListFormFormGroupArrayBuilderT>>
      Function(StatusListForm<T> formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      StatusListForm<T> formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveStatusListFormFormGroupArrayBuilderT? item,
      StatusListForm<T> formModel) itemBuilder;

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
        final itemList =
            (value.value() ?? <ReactiveStatusListFormFormGroupArrayBuilderT>[])
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
''';
