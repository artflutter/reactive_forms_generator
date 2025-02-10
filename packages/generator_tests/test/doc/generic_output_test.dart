@Timeout(Duration(seconds: 145))
import 'package:test/test.dart';

import '../helpers.dart';

const fileName = 'generic_output';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Generic',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:freezed_annotation/freezed_annotation.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.freezed.dart';
            part '$fileName.gform.dart';
            
            @freezed
            @Rf(output: true)
            class TagsO<T> with _\$TagsO<T> {
              factory TagsO({
                @RfControl() required List<T>? tags,
              }) = _TagsO;
            
              const TagsO._();
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

part of 'generic_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveTagsOFormConsumer<T> extends StatelessWidget {
  const ReactiveTagsOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, TagsOForm<T> formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTagsOForm.of<T>(context);

    if (formModel is! TagsOForm<T>) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class TagsOFormInheritedStreamer<T> extends InheritedStreamer<dynamic> {
  const TagsOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final TagsOForm<T> form;
}

class ReactiveTagsOForm<T> extends StatelessWidget {
  const ReactiveTagsOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final TagsOForm<T> form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static TagsOForm<T>? of<T>(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<TagsOFormInheritedStreamer<T>>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        TagsOFormInheritedStreamer<T>>();
    return element == null
        ? null
        : (element.widget as TagsOFormInheritedStreamer<T>).form;
  }

  @override
  Widget build(BuildContext context) {
    return TagsOFormInheritedStreamer(
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

extension ReactiveReactiveTagsOFormExt on BuildContext {
  TagsOForm<T>? tagsOFormWatch<T>() => ReactiveTagsOForm.of<T>(this);

  TagsOForm<T>? tagsOFormRead<T>() =>
      ReactiveTagsOForm.of<T>(this, listen: false);
}

class TagsOFormBuilder<T> extends StatefulWidget {
  const TagsOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final TagsO<T>? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, TagsOForm<T> formModel, Widget? child) builder;

  final void Function(BuildContext context, TagsOForm<T> formModel)? initState;

  @override
  _TagsOFormBuilderState<T> createState() => _TagsOFormBuilderState<T>();
}

class _TagsOFormBuilderState<T> extends State<TagsOFormBuilder<T>> {
  late TagsOForm<T> _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = TagsOForm<T>(TagsOForm.formElements<T>(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logTagsOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant TagsOFormBuilder<T> oldWidget) {
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
    return ReactiveTagsOForm(
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

final _logTagsOForm = Logger.detached('TagsOForm<T>');

class TagsOForm<T> implements FormModel<TagsO<T>, TagsOOutput<T>> {
  TagsOForm(
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
  @protected
  TagsOOutput<T> get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logTagsOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return TagsOOutput<T>(tags: _tagsValue);
  }

  @override
  TagsO<T> get rawModel {
    return TagsO<T>(tags: _tagsRawValue);
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
  bool equalsTo(TagsO<T>? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      TagsOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(TagsOOutput<T> model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logTagsOForm.info('Errors');
      _logTagsOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    TagsO<T>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(TagsOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    TagsO<T>? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements<T>(TagsO<T>? tagsO) => FormGroup({
        tagsControlName: FormControl<List<T>>(
            value: tagsO?.tags,
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

@freezed
@Rf(output: true)
class TagsOOutput<T> with _$TagsOOutput<T> {
  factory TagsOOutput({@RfControl() required List<T>? tags}) = _TagsOOutput;
  const TagsOOutput._();
}

class ReactiveTagsOFormArrayBuilder<ReactiveTagsOFormArrayBuilderT, T>
    extends StatelessWidget {
  const ReactiveTagsOFormArrayBuilder({
    Key? key,
    this.control,
    this.formControl,
    this.builder,
    required this.itemBuilder,
  })  : assert(control != null || formControl != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final FormArray<ReactiveTagsOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveTagsOFormArrayBuilderT>? Function(
      TagsOForm<T> formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, TagsOForm<T> formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveTagsOFormArrayBuilderT> control,
      ReactiveTagsOFormArrayBuilderT? item,
      TagsOForm<T> formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTagsOForm.of<T>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveTagsOFormArrayBuilderT>(
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
                      as FormControl<ReactiveTagsOFormArrayBuilderT>,
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

class ReactiveTagsOFormFormGroupArrayBuilder<
    ReactiveTagsOFormFormGroupArrayBuilderT, T> extends StatelessWidget {
  const ReactiveTagsOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveTagsOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveTagsOFormFormGroupArrayBuilderT>>
      Function(TagsOForm<T> formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, TagsOForm<T> formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveTagsOFormFormGroupArrayBuilderT? item,
      TagsOForm<T> formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveTagsOForm.of<T>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveTagsOFormFormGroupArrayBuilderT>[])
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
