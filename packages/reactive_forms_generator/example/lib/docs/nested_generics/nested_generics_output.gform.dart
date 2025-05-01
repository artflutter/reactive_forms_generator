// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested_generics_output.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveProductDetailsOFormConsumer<P extends Product, C extends Cart>
    extends StatelessWidget {
  const ReactiveProductDetailsOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ProductDetailsOForm<P, C> formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductDetailsOForm.of<P, C>(context);

    if (formModel is! ProductDetailsOForm<P, C>) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ProductDetailsOFormInheritedStreamer<P extends Product, C extends Cart>
    extends InheritedStreamer<dynamic> {
  const ProductDetailsOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ProductDetailsOForm<P, C> form;
}

class ReactiveProductDetailsOForm<P extends Product, C extends Cart>
    extends StatelessWidget {
  const ReactiveProductDetailsOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final ProductDetailsOForm<P, C> form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static ProductDetailsOForm<P, C>? of<P extends Product, C extends Cart>(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ProductDetailsOFormInheritedStreamer<P, C>>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ProductDetailsOFormInheritedStreamer<P, C>>();
    return element == null
        ? null
        : (element.widget as ProductDetailsOFormInheritedStreamer<P, C>).form;
  }

  @override
  Widget build(BuildContext context) {
    return ProductDetailsOFormInheritedStreamer(
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

extension ReactiveReactiveProductDetailsOFormExt on BuildContext {
  ProductDetailsOForm<P, C>?
      productDetailsOFormWatch<P extends Product, C extends Cart>() =>
          ReactiveProductDetailsOForm.of<P, C>(this);

  ProductDetailsOForm<P, C>?
      productDetailsOFormRead<P extends Product, C extends Cart>() =>
          ReactiveProductDetailsOForm.of<P, C>(this, listen: false);
}

class ProductDetailsOFormBuilder<P extends Product, C extends Cart>
    extends StatefulWidget {
  const ProductDetailsOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ProductDetailsO<P, C>? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context,
      ProductDetailsOForm<P, C> formModel, Widget? child) builder;

  final void Function(
      BuildContext context, ProductDetailsOForm<P, C> formModel)? initState;

  @override
  _ProductDetailsOFormBuilderState<P, C> createState() =>
      _ProductDetailsOFormBuilderState<P, C>();
}

class _ProductDetailsOFormBuilderState<P extends Product, C extends Cart>
    extends State<ProductDetailsOFormBuilder<P, C>> {
  late ProductDetailsOForm<P, C> _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = ProductDetailsOForm<P, C>(
        ProductDetailsOForm.formElements<P, C>(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logProductDetailsOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant ProductDetailsOFormBuilder<P, C> oldWidget) {
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
    return ReactiveProductDetailsOForm(
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

final _logProductDetailsOForm = Logger.detached('ProductDetailsOForm<P, C>');

class ProductDetailsOForm<P extends Product, C extends Cart>
    implements FormModel<ProductDetailsO<P, C>, ProductDetailsOOutput<P, C>> {
  ProductDetailsOForm(
    this.form,
    this.path,
  );

  static const String descriptionControlName = "description";

  static const String idControlName = "id";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String descriptionControlPath() => pathBuilder(descriptionControlName);

  String idControlPath() => pathBuilder(idControlName);

  String? get _descriptionValue => descriptionControl.value;

  IdOOutput<P, C>? get _idValue => idForm.model;

  String? get _descriptionRawValue => descriptionControl.value;

  IdO<P, C>? get _idRawValue => idForm.rawModel;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsDescription {
    try {
      form.control(descriptionControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

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

  Map<String, Object>? get descriptionErrors => descriptionControl.errors;

  Map<String, Object>? get idErrors => idControl.errors;

  void get descriptionFocus => form.focus(descriptionControlPath());

  void get idFocus => form.focus(idControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void descriptionRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsDescription) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          descriptionControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            descriptionControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void idRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsId) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          idControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            idControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void descriptionValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValueUpdate(
    IdO<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(IdOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    descriptionControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void idValuePatch(
    IdO<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(IdOForm.formElements(value).rawValue,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void descriptionValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      descriptionControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void idValueReset(
    IdO<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: IdOForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String> get descriptionControl =>
      form.control(descriptionControlPath()) as FormControl<String>;

  FormGroup get idControl => form.control(idControlPath()) as FormGroup;

  IdOForm<P, C> get idForm => IdOForm(form, pathBuilder('id'));

  void descriptionSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      descriptionControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      descriptionControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
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

  @override
  @protected
  ProductDetailsOOutput<P, C> get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logProductDetailsOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ProductDetailsOOutput<P, C>(
        description: _descriptionValue, id: _idValue);
  }

  @override
  ProductDetailsO<P, C> get rawModel {
    return ProductDetailsO<P, C>(
        description: _descriptionRawValue, id: _idRawValue);
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

      idForm.toggleDisabled();
      currentForm.markAsDisabled(
          updateParent: updateParent, emitEvent: emitEvent);
    } else {
      idForm.toggleDisabled();
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
  bool equalsTo(ProductDetailsO<P, C>? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      ProductDetailsOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ProductDetailsOOutput<P, C> model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logProductDetailsOForm.info('Errors');
      _logProductDetailsOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ProductDetailsO<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ProductDetailsOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ProductDetailsO<P, C>? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements<P extends Product, C extends Cart>(
          ProductDetailsO<P, C>? productDetailsO) =>
      FormGroup({
        descriptionControlName: FormControl<String>(
            value: productDetailsO?.description,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        idControlName: IdOForm.formElements(productDetailsO?.id)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

final _logIdOForm = Logger.detached('IdOForm<P, C>');

class IdOForm<P extends Product, C extends Cart>
    implements FormModel<IdO<P, C>, IdOOutput<P, C>> {
  IdOForm(
    this.form,
    this.path,
  );

  static const String companyNameControlName = "companyName";

  static const String nameControlName = "name";

  final FormGroup form;

  final String? path;

  final Map<String, bool> _disabled = {};

  String companyNameControlPath() => pathBuilder(companyNameControlName);

  String nameControlPath() => pathBuilder(nameControlName);

  String? get _companyNameValue => companyNameControl.value;

  String? get _nameValue => nameControl.value;

  String? get _companyNameRawValue => companyNameControl.value;

  String? get _nameRawValue => nameControl.value;

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsCompanyName {
    try {
      form.control(companyNameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  @Deprecated(
      'Generator completely wraps the form and ensures at startup that all controls are present inside the form so we do not need this additional step')
  bool get containsName {
    try {
      form.control(nameControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Map<String, Object>? get companyNameErrors => companyNameControl.errors;

  Map<String, Object>? get nameErrors => nameControl.errors;

  void get companyNameFocus => form.focus(companyNameControlPath());

  void get nameFocus => form.focus(nameControlPath());

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void companyNameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsCompanyName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          companyNameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            companyNameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  @Deprecated(
      'Generator completely wraps the form so manual fields removal could lead to unexpected crashes')
  void nameRemove({
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (containsName) {
      final controlPath = path;
      if (controlPath == null) {
        form.removeControl(
          nameControlName,
          updateParent: updateParent,
          emitEvent: emitEvent,
        );
      } else {
        final formGroup = form.control(controlPath);

        if (formGroup is FormGroup) {
          formGroup.removeControl(
            nameControlName,
            updateParent: updateParent,
            emitEvent: emitEvent,
          );
        }
      }
    }
  }

  void companyNameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyNameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValueUpdate(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void companyNameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    companyNameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void nameValuePatch(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    nameControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void companyNameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      companyNameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  void nameValueReset(
    String? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      nameControl.reset(
        value: value,
        updateParent: updateParent,
        emitEvent: emitEvent,
        removeFocus: removeFocus,
        disabled: disabled,
      );

  FormControl<String> get companyNameControl =>
      form.control(companyNameControlPath()) as FormControl<String>;

  FormControl<String> get nameControl =>
      form.control(nameControlPath()) as FormControl<String>;

  void companyNameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      companyNameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      companyNameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  void nameSetDisabled(
    bool disabled, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    if (disabled) {
      nameControl.markAsDisabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    } else {
      nameControl.markAsEnabled(
        updateParent: updateParent,
        emitEvent: emitEvent,
      );
    }
  }

  @override
  @protected
  IdOOutput<P, C> get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logIdOForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return IdOOutput<P, C>(companyName: _companyNameValue, name: _nameValue);
  }

  @override
  IdO<P, C> get rawModel {
    return IdO<P, C>(companyName: _companyNameRawValue, name: _nameRawValue);
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
  bool equalsTo(IdO<P, C>? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      IdOForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(IdOOutput<P, C> model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logIdOForm.info('Errors');
      _logIdOForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    IdO<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(IdOForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    IdO<P, C>? value,
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.reset(
          value: value != null ? formElements(value).rawValue : null,
          updateParent: updateParent,
          emitEvent: emitEvent);

  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");

  static FormGroup formElements<P extends Product, C extends Cart>(
          IdO<P, C>? idO) =>
      FormGroup({
        companyNameControlName: FormControl<String>(
            value: idO?.companyName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: idO?.name,
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
abstract class ProductDetailsOOutput<P extends Product, C extends Cart>
    with _$ProductDetailsOOutput<P, C> {
  factory ProductDetailsOOutput(
      {@RfControl() String? description,
      @Rf(output: false) IdOOutput<P, C>? id}) = _ProductDetailsOOutput;

  ProductDetailsOOutput._();
}

@freezed
@Rf(output: false)
@RfGroup()
abstract class IdOOutput<P extends Product, C extends Cart>
    with _$IdOOutput<P, C> {
  factory IdOOutput(
      {@RfControl() String? companyName,
      @RfControl() String? name}) = _IdOOutput;

  IdOOutput._();
}

class ReactiveProductDetailsOFormArrayBuilder<
    ReactiveProductDetailsOFormArrayBuilderT,
    P extends Product,
    C extends Cart> extends StatelessWidget {
  const ReactiveProductDetailsOFormArrayBuilder({
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

  final FormArray<ReactiveProductDetailsOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveProductDetailsOFormArrayBuilderT>? Function(
      ProductDetailsOForm<P, C> formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProductDetailsOForm<P, C> formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveProductDetailsOFormArrayBuilderT> control,
      ReactiveProductDetailsOFormArrayBuilderT? item,
      ProductDetailsOForm<P, C> formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveProductDetailsOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductDetailsOForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveProductDetailsOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveProductDetailsOFormArrayBuilderT>,
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
                      as FormControl<ReactiveProductDetailsOFormArrayBuilderT>,
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

class ReactiveProductDetailsOFormArrayBuilder2<
    ReactiveProductDetailsOFormArrayBuilderT,
    P extends Product,
    C extends Cart> extends StatelessWidget {
  const ReactiveProductDetailsOFormArrayBuilder2({
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

  final FormArray<ReactiveProductDetailsOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveProductDetailsOFormArrayBuilderT>? Function(
      ProductDetailsOForm<P, C> formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        ProductDetailsOForm<P, C> formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveProductDetailsOFormArrayBuilderT> control,
        ReactiveProductDetailsOFormArrayBuilderT? item,
        ProductDetailsOForm<P, C> formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveProductDetailsOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductDetailsOForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveProductDetailsOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveProductDetailsOFormArrayBuilderT>,
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
                      as FormControl<ReactiveProductDetailsOFormArrayBuilderT>,
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

class ReactiveProductDetailsOFormFormGroupArrayBuilder<
    ReactiveProductDetailsOFormFormGroupArrayBuilderT,
    P extends Product,
    C extends Cart> extends StatelessWidget {
  const ReactiveProductDetailsOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveProductDetailsOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveProductDetailsOFormFormGroupArrayBuilderT>>
      Function(ProductDetailsOForm<P, C> formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProductDetailsOForm<P, C> formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveProductDetailsOFormFormGroupArrayBuilderT? item,
      ProductDetailsOForm<P, C> formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductDetailsOForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveProductDetailsOFormFormGroupArrayBuilderT>[])
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

class ReactiveIdOFormConsumer<P extends Product, C extends Cart>
    extends StatelessWidget {
  const ReactiveIdOFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, IdOForm<P, C> formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdOForm.of<P, C>(context);

    if (formModel is! IdOForm<P, C>) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class IdOFormInheritedStreamer<P extends Product, C extends Cart>
    extends InheritedStreamer<dynamic> {
  const IdOFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final IdOForm<P, C> form;
}

class ReactiveIdOForm<P extends Product, C extends Cart>
    extends StatelessWidget {
  const ReactiveIdOForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final IdOForm<P, C> form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static IdOForm<P, C>? of<P extends Product, C extends Cart>(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<IdOFormInheritedStreamer<P, C>>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        IdOFormInheritedStreamer<P, C>>();
    return element == null
        ? null
        : (element.widget as IdOFormInheritedStreamer<P, C>).form;
  }

  @override
  Widget build(BuildContext context) {
    return IdOFormInheritedStreamer(
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

extension ReactiveReactiveIdOFormExt on BuildContext {
  IdOForm<P, C>? idOFormWatch<P extends Product, C extends Cart>() =>
      ReactiveIdOForm.of<P, C>(this);

  IdOForm<P, C>? idOFormRead<P extends Product, C extends Cart>() =>
      ReactiveIdOForm.of<P, C>(this, listen: false);
}

class IdOFormBuilder<P extends Product, C extends Cart> extends StatefulWidget {
  const IdOFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final IdO<P, C>? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, IdOForm<P, C> formModel, Widget? child) builder;

  final void Function(BuildContext context, IdOForm<P, C> formModel)? initState;

  @override
  _IdOFormBuilderState<P, C> createState() => _IdOFormBuilderState<P, C>();
}

class _IdOFormBuilderState<P extends Product, C extends Cart>
    extends State<IdOFormBuilder<P, C>> {
  late IdOForm<P, C> _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = IdOForm<P, C>(IdOForm.formElements<P, C>(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logIdOForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant IdOFormBuilder<P, C> oldWidget) {
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
    return ReactiveIdOForm(
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

class ReactiveIdOFormArrayBuilder<ReactiveIdOFormArrayBuilderT,
    P extends Product, C extends Cart> extends StatelessWidget {
  const ReactiveIdOFormArrayBuilder({
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

  final FormArray<ReactiveIdOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveIdOFormArrayBuilderT>? Function(
      IdOForm<P, C> formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, IdOForm<P, C> formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveIdOFormArrayBuilderT> control,
      ReactiveIdOFormArrayBuilderT? item,
      IdOForm<P, C> formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveIdOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdOForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveIdOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveIdOFormArrayBuilderT>,
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
                      as FormControl<ReactiveIdOFormArrayBuilderT>,
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

class ReactiveIdOFormArrayBuilder2<ReactiveIdOFormArrayBuilderT,
    P extends Product, C extends Cart> extends StatelessWidget {
  const ReactiveIdOFormArrayBuilder2({
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

  final FormArray<ReactiveIdOFormArrayBuilderT>? formControl;

  final FormArray<ReactiveIdOFormArrayBuilderT>? Function(
      IdOForm<P, C> formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        IdOForm<P, C> formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveIdOFormArrayBuilderT> control,
        ReactiveIdOFormArrayBuilderT? item,
        IdOForm<P, C> formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveIdOFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdOForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveIdOFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveIdOFormArrayBuilderT>,
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
                      as FormControl<ReactiveIdOFormArrayBuilderT>,
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

class ReactiveIdOFormFormGroupArrayBuilder<
    ReactiveIdOFormFormGroupArrayBuilderT,
    P extends Product,
    C extends Cart> extends StatelessWidget {
  const ReactiveIdOFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveIdOFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveIdOFormFormGroupArrayBuilderT>>
      Function(IdOForm<P, C> formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, IdOForm<P, C> formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveIdOFormFormGroupArrayBuilderT? item,
      IdOForm<P, C> formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdOForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveIdOFormFormGroupArrayBuilderT>[])
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
