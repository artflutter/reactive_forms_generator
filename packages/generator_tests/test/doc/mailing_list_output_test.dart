@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'mailing_list_output';

void main() {
  group('doc', () {
    test(
      'Mailing list Output',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms/src/validators/email_validator.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
            
            class MailingListValidator extends Validator<dynamic> {
              const MailingListValidator() : super();
            
              @override
              Map<String, dynamic>? validate(AbstractControl control) {
                return null;
              }
            }
            
            @Rf(output: true)
            class MailingListO {
              final List<String?> emailList;
            
              MailingListO({
                @RfArray(
                  validators: [MailingListValidator()],
                  itemValidators: [EmailValidator()],
                )
                this.emailList = const [],
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

part of 'mailing_list_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveMailingListOFormConsumer extends StatelessWidget {
  const ReactiveMailingListOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, MailingListOForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListOForm.of(context);

    if (formModel is! MailingListOForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class MailingListOFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const MailingListOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final MailingListOForm form;
}

class ReactiveMailingListOForm extends StatelessWidget {
  const ReactiveMailingListOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final MailingListOForm form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static MailingListOForm? of(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              MailingListOFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        MailingListOFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as MailingListOFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return MailingListOFormInheritedStreamer(
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

extension ReactiveReactiveMailingListOFormExt on BuildContext {
  MailingListOForm? mailingListOFormWatch() =>
      ReactiveMailingListOForm.of(this);

  MailingListOForm? mailingListOFormRead() =>
      ReactiveMailingListOForm.of(this, listen: false);
}

class MailingListOFormBuilder extends StatefulWidget {
  const MailingListOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final MailingListO? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, MailingListOForm formModel, Widget? child) builder;

  final void Function(BuildContext context, MailingListOForm formModel)?
      initState;

  @override
  _MailingListOFormBuilderState createState() =>
      _MailingListOFormBuilderState();
}

class _MailingListOFormBuilderState extends State<MailingListOFormBuilder> {
  late MailingListOForm _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel =
        MailingListOForm(MailingListOForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logMailingListOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant MailingListOFormBuilder oldWidget) {
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
    return ReactiveMailingListOForm(
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

final _logMailingListOForm = Logger.detached('MailingListOForm');

class MailingListOForm implements FormModel<MailingListO, MailingListOOutput> {
  MailingListOForm(
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
  @protected
  MailingListOOutput get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logMailingListOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return MailingListOOutput(emailList: _emailListValue);
  }

  @override
  MailingListO get rawModel {
    return MailingListO(emailList: _emailListRawValue);
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
  bool equalsTo(MailingListO? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      MailingListOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(MailingListOOutput model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logMailingListOForm.info('Errors');
      _logMailingListOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    MailingListO? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(MailingListOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    MailingListO? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements(MailingListO? mailingListO) => FormGroup({
        emailListControlName: FormArray<String>(
            (mailingListO?.emailList ?? [])
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

@Rf(output: true)
class MailingListOOutput {
  final List<String?> emailList;
  MailingListOOutput(
      {@RfArray(
          validators: [MailingListValidator()],
          itemValidators: [EmailValidator()])
      this.emailList = const []});
}

class ReactiveMailingListOFormArrayBuilder<
    ReactiveMailingListOFormArrayBuilderT> extends StatelessWidget {
  const ReactiveMailingListOFormArrayBuilder({
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

  final FormArray<ReactiveMailingListOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveMailingListOFormArrayBuilderT>? Function(
      MailingListOForm formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MailingListOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveMailingListOFormArrayBuilderT> control,
      ReactiveMailingListOFormArrayBuilderT? item,
      MailingListOForm formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveMailingListOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveMailingListOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveMailingListOFormArrayBuilderT>,
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
                      as FormControl<ReactiveMailingListOFormArrayBuilderT>,
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

class ReactiveMailingListOFormArrayBuilder2<
    ReactiveMailingListOFormArrayBuilderT> extends StatelessWidget {
  const ReactiveMailingListOFormArrayBuilder2({
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

  final FormArray<ReactiveMailingListOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveMailingListOFormArrayBuilderT>? Function(
      MailingListOForm formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        MailingListOForm formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveMailingListOFormArrayBuilderT> control,
        ReactiveMailingListOFormArrayBuilderT? item,
        MailingListOForm formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveMailingListOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveMailingListOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e.$2 as FormControl<ReactiveMailingListOFormArrayBuilderT>,
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
                      as FormControl<ReactiveMailingListOFormArrayBuilderT>,
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

class ReactiveMailingListOFormFormGroupArrayBuilder<
    ReactiveMailingListOFormFormGroupArrayBuilderT> extends StatelessWidget {
  const ReactiveMailingListOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveMailingListOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveMailingListOFormFormGroupArrayBuilderT>>
      Function(MailingListOForm formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      MailingListOForm formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveMailingListOFormFormGroupArrayBuilderT? item,
      MailingListOForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListOForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveMailingListOFormFormGroupArrayBuilderT>[])
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
