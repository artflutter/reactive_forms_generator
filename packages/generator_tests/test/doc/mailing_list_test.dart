@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'mailing_list';

void main() {
  group('doc', () {
    test(
      'Mailing list',
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
            
            @Rf()
            class MailingList {
              final List<String?> emailList;
            
              MailingList({
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
// ignore_for_file:

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

  @override
  void initState() {
    _formModel =
        MailingListForm(MailingListForm.formElements(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

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

/// Similar to the MailingListFormBuilder but opts out of automatic form lifecycle
/// management.
///
/// See `MailingListFormBuilder.initState` and `MailingListFormBuilder.dispose` for examples
/// of initializing/disposing the formModel.
class MailingListFormModelBuilder extends StatefulWidget {
  const MailingListFormModelBuilder({
    Key? key,
    required this.formModel,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final MailingListForm formModel;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, MailingListForm formModel, Widget? child) builder;

  final void Function(BuildContext context, MailingListForm formModel)?
      initState;

  @override
  _MailingListFormModelBuilderState createState() =>
      _MailingListFormModelBuilderState();
}

class _MailingListFormModelBuilderState
    extends State<MailingListFormModelBuilder> {
  late MailingListForm _formModel;

  @override
  void initState() {
    super.initState();

    _formModel = widget.formModel;

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);
  }

  @override
  void didUpdateWidget(covariant MailingListFormModelBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.formModel != oldWidget.formModel) {
      _formModel = widget.formModel;
    }
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

class MailingListForm implements FormModel<MailingList> {
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
      emailListControl.value?.whereType<String?>().toList() ?? [];

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
          value: value, updateParent: updateParent, emitEvent: emitEvent);

  FormArray<String> get emailListControl =>
      form.control(emailListControlPath()) as FormArray<String>;

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
      debugPrintStack(
          label:
              '[${path ?? 'MailingListForm'}]\n┗━ Avoid calling `model` on invalid form. Possible exceptions for non-nullable fields which should be guarded by `required` validator.');
    }
    return MailingList(emailList: _emailListValue);
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
  void submit({
    required void Function(MailingList model) onValid,
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
      ReactiveMailingListFormArrayBuilderT? item,
      MailingListForm formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveMailingListForm.of(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveMailingListFormArrayBuilderT>(
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
''';
