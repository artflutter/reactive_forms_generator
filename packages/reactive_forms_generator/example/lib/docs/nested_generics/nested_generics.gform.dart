// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'nested_generics.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveProductDetailsFormConsumer<P extends Product, C extends Cart>
    extends StatelessWidget {
  const ReactiveProductDetailsFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(BuildContext context,
      ProductDetailsForm<P, C> formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductDetailsForm.of<P, C>(context);

    if (formModel is! ProductDetailsForm<P, C>) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class ProductDetailsFormInheritedStreamer<P extends Product, C extends Cart>
    extends InheritedStreamer<dynamic> {
  const ProductDetailsFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final ProductDetailsForm<P, C> form;
}

class ReactiveProductDetailsForm<P extends Product, C extends Cart>
    extends StatelessWidget {
  const ReactiveProductDetailsForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final ProductDetailsForm<P, C> form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static ProductDetailsForm<P, C>? of<P extends Product, C extends Cart>(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ProductDetailsFormInheritedStreamer<P, C>>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ProductDetailsFormInheritedStreamer<P, C>>();
    return element == null
        ? null
        : (element.widget as ProductDetailsFormInheritedStreamer<P, C>).form;
  }

  @override
  Widget build(BuildContext context) {
    return ProductDetailsFormInheritedStreamer(
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

extension ReactiveReactiveProductDetailsFormExt on BuildContext {
  ProductDetailsForm<P, C>?
      productDetailsFormWatch<P extends Product, C extends Cart>() =>
          ReactiveProductDetailsForm.of<P, C>(this);

  ProductDetailsForm<P, C>?
      productDetailsFormRead<P extends Product, C extends Cart>() =>
          ReactiveProductDetailsForm.of<P, C>(this, listen: false);
}

class ProductDetailsFormBuilder<P extends Product, C extends Cart>
    extends StatefulWidget {
  const ProductDetailsFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final ProductDetails<P, C>? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(BuildContext context,
      ProductDetailsForm<P, C> formModel, Widget? child) builder;

  final void Function(BuildContext context, ProductDetailsForm<P, C> formModel)?
      initState;

  @override
  _ProductDetailsFormBuilderState<P, C> createState() =>
      _ProductDetailsFormBuilderState<P, C>();
}

class _ProductDetailsFormBuilderState<P extends Product, C extends Cart>
    extends State<ProductDetailsFormBuilder<P, C>> {
  late ProductDetailsForm<P, C> _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = ProductDetailsForm<P, C>(
        ProductDetailsForm.formElements<P, C>(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logProductDetailsForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant ProductDetailsFormBuilder<P, C> oldWidget) {
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
    return ReactiveProductDetailsForm(
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

final _logProductDetailsForm = Logger.detached('ProductDetailsForm<P, C>');

class ProductDetailsForm<P extends Product, C extends Cart>
    implements FormModel<ProductDetails<P, C>, ProductDetails<P, C>> {
  ProductDetailsForm(
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

  Id<P, C>? get _idValue => idForm.model;

  String? get _descriptionRawValue => descriptionControl.value;

  Id<P, C>? get _idRawValue => idForm.rawModel;

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
    Id<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(IdForm.formElements(value).rawValue,
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
    Id<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) {
    idControl.updateValue(IdForm.formElements(value).rawValue,
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
    Id<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
    bool removeFocus = false,
    bool? disabled,
  }) =>
      idControl.reset(
          value: IdForm.formElements(value).rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);

  FormControl<String> get descriptionControl =>
      form.control(descriptionControlPath()) as FormControl<String>;

  FormGroup get idControl => form.control(idControlPath()) as FormGroup;

  IdForm<P, C> get idForm => IdForm(form, pathBuilder('id'));

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
  ProductDetails<P, C> get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logProductDetailsForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return ProductDetails<P, C>(description: _descriptionValue, id: _idValue);
  }

  @override
  ProductDetails<P, C> get rawModel {
    return ProductDetails<P, C>(
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
  bool equalsTo(ProductDetails<P, C>? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      ProductDetailsForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(ProductDetails<P, C> model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logProductDetailsForm.info('Errors');
      _logProductDetailsForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    ProductDetails<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(ProductDetailsForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    ProductDetails<P, C>? value,
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
          ProductDetails<P, C>? productDetails) =>
      FormGroup({
        descriptionControlName: FormControl<String>(
            value: productDetails?.description,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        idControlName: IdForm.formElements(productDetails?.id)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}

final _logIdForm = Logger.detached('IdForm<P, C>');

class IdForm<P extends Product, C extends Cart>
    implements FormModel<Id<P, C>, Id<P, C>> {
  IdForm(
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
  Id<P, C> get model {
    final isValid = !currentForm.hasErrors && currentForm.errors.isEmpty;

    if (!isValid) {
      _logIdForm.warning(
        'Avoid calling `model` on invalid form.Possible exceptions for non-nullable fields which should be guarded by `required` validator.',
        null,
        StackTrace.current,
      );
    }
    return Id<P, C>(companyName: _companyNameValue, name: _nameValue);
  }

  @override
  Id<P, C> get rawModel {
    return Id<P, C>(companyName: _companyNameRawValue, name: _nameRawValue);
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
  bool equalsTo(Id<P, C>? other) {
    final currentForm = this.currentForm;

    return const DeepCollectionEquality().equals(
      currentForm is FormControlCollection<dynamic>
          ? currentForm.rawValue
          : currentForm.value,
      IdForm.formElements(other).rawValue,
    );
  }

  @override
  void submit({
    required void Function(Id<P, C> model) onValid,
    void Function()? onNotValid,
  }) {
    currentForm.markAllAsTouched();
    if (currentForm.valid) {
      onValid(model);
    } else {
      _logIdForm.info('Errors');
      _logIdForm.info('┗━━ ${form.errors}');
      onNotValid?.call();
    }
  }

  AbstractControl<dynamic> get currentForm {
    return path == null ? form : form.control(path!);
  }

  @override
  void updateValue(
    Id<P, C>? value, {
    bool updateParent = true,
    bool emitEvent = true,
  }) =>
      form.updateValue(IdForm.formElements(value).rawValue,
          updateParent: updateParent, emitEvent: emitEvent);

  @override
  void reset({
    Id<P, C>? value,
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
          Id<P, C>? id) =>
      FormGroup({
        companyNameControlName: FormControl<String>(
            value: id?.companyName,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        nameControlName: FormControl<String>(
            value: id?.name,
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

class ReactiveProductDetailsFormArrayBuilder<
    ReactiveProductDetailsFormArrayBuilderT,
    P extends Product,
    C extends Cart> extends StatelessWidget {
  const ReactiveProductDetailsFormArrayBuilder({
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

  final FormArray<ReactiveProductDetailsFormArrayBuilderT>? formControl;

  final FormArray<ReactiveProductDetailsFormArrayBuilderT>? Function(
      ProductDetailsForm<P, C> formModel)? control;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProductDetailsForm<P, C> formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveProductDetailsFormArrayBuilderT> control,
      ReactiveProductDetailsFormArrayBuilderT? item,
      ProductDetailsForm<P, C> formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveProductDetailsFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductDetailsForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveProductDetailsFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveProductDetailsFormArrayBuilderT>,
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
                      as FormControl<ReactiveProductDetailsFormArrayBuilderT>,
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

class ReactiveProductDetailsFormArrayBuilder2<
    ReactiveProductDetailsFormArrayBuilderT,
    P extends Product,
    C extends Cart> extends StatelessWidget {
  const ReactiveProductDetailsFormArrayBuilder2({
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

  final FormArray<ReactiveProductDetailsFormArrayBuilderT>? formControl;

  final FormArray<ReactiveProductDetailsFormArrayBuilderT>? Function(
      ProductDetailsForm<P, C> formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        ProductDetailsForm<P, C> formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveProductDetailsFormArrayBuilderT> control,
        ReactiveProductDetailsFormArrayBuilderT? item,
        ProductDetailsForm<P, C> formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(
          FormControl<ReactiveProductDetailsFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductDetailsForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveProductDetailsFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveProductDetailsFormArrayBuilderT>,
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
                      as FormControl<ReactiveProductDetailsFormArrayBuilderT>,
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

class ReactiveProductDetailsFormFormGroupArrayBuilder<
    ReactiveProductDetailsFormFormGroupArrayBuilderT,
    P extends Product,
    C extends Cart> extends StatelessWidget {
  const ReactiveProductDetailsFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveProductDetailsFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveProductDetailsFormFormGroupArrayBuilderT>>
      Function(ProductDetailsForm<P, C> formModel)? getExtended;

  final Widget Function(BuildContext context, List<Widget> itemList,
      ProductDetailsForm<P, C> formModel)? builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveProductDetailsFormFormGroupArrayBuilderT? item,
      ProductDetailsForm<P, C> formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveProductDetailsForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList = (value.value() ??
                <ReactiveProductDetailsFormFormGroupArrayBuilderT>[])
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

class ReactiveIdFormConsumer<P extends Product, C extends Cart>
    extends StatelessWidget {
  const ReactiveIdFormConsumer({
    Key? key,
    required this.builder,
    this.child,
  }) : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, IdForm<P, C> formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdForm.of<P, C>(context);

    if (formModel is! IdForm<P, C>) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class IdFormInheritedStreamer<P extends Product, C extends Cart>
    extends InheritedStreamer<dynamic> {
  const IdFormInheritedStreamer({
    Key? key,
    required this.form,
    required Stream<dynamic> stream,
    required Widget child,
  }) : super(
          stream,
          child,
          key: key,
        );

  final IdForm<P, C> form;
}

class ReactiveIdForm<P extends Product, C extends Cart>
    extends StatelessWidget {
  const ReactiveIdForm({
    Key? key,
    required this.form,
    required this.child,
    this.canPop,
    this.onPopInvoked,
  }) : super(key: key);

  final Widget child;

  final IdForm<P, C> form;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  static IdForm<P, C>? of<P extends Product, C extends Cart>(
    BuildContext context, {
    bool listen = true,
  }) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<IdFormInheritedStreamer<P, C>>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        IdFormInheritedStreamer<P, C>>();
    return element == null
        ? null
        : (element.widget as IdFormInheritedStreamer<P, C>).form;
  }

  @override
  Widget build(BuildContext context) {
    return IdFormInheritedStreamer(
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

extension ReactiveReactiveIdFormExt on BuildContext {
  IdForm<P, C>? idFormWatch<P extends Product, C extends Cart>() =>
      ReactiveIdForm.of<P, C>(this);

  IdForm<P, C>? idFormRead<P extends Product, C extends Cart>() =>
      ReactiveIdForm.of<P, C>(this, listen: false);
}

class IdFormBuilder<P extends Product, C extends Cart> extends StatefulWidget {
  const IdFormBuilder({
    Key? key,
    this.model,
    this.child,
    this.canPop,
    this.onPopInvoked,
    required this.builder,
    this.initState,
  }) : super(key: key);

  final Id<P, C>? model;

  final Widget? child;

  final bool Function(FormGroup formGroup)? canPop;

  final void Function(FormGroup formGroup, bool didPop)? onPopInvoked;

  final Widget Function(
      BuildContext context, IdForm<P, C> formModel, Widget? child) builder;

  final void Function(BuildContext context, IdForm<P, C> formModel)? initState;

  @override
  _IdFormBuilderState<P, C> createState() => _IdFormBuilderState<P, C>();
}

class _IdFormBuilderState<P extends Product, C extends Cart>
    extends State<IdFormBuilder<P, C>> {
  late IdForm<P, C> _formModel;

  StreamSubscription<LogRecord>? _logSubscription;

  @override
  void initState() {
    _formModel = IdForm<P, C>(IdForm.formElements<P, C>(widget.model), null);

    if (_formModel.form.disabled) {
      _formModel.form.markAsDisabled();
    }

    widget.initState?.call(context, _formModel);

    _logSubscription = _logIdForm.onRecord.listen((LogRecord e) {
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
  void didUpdateWidget(covariant IdFormBuilder<P, C> oldWidget) {
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
    return ReactiveIdForm(
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

class ReactiveIdFormArrayBuilder<ReactiveIdFormArrayBuilderT, P extends Product,
    C extends Cart> extends StatelessWidget {
  const ReactiveIdFormArrayBuilder({
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

  final FormArray<ReactiveIdFormArrayBuilderT>? formControl;

  final FormArray<ReactiveIdFormArrayBuilderT>? Function(
      IdForm<P, C> formModel)? control;

  final Widget Function(
          BuildContext context, List<Widget> itemList, IdForm<P, C> formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      FormControl<ReactiveIdFormArrayBuilderT> control,
      ReactiveIdFormArrayBuilderT? item,
      IdForm<P, C> formModel) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveIdFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveIdFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveIdFormArrayBuilderT>,
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
                      as FormControl<ReactiveIdFormArrayBuilderT>,
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

class ReactiveIdFormArrayBuilder2<ReactiveIdFormArrayBuilderT,
    P extends Product, C extends Cart> extends StatelessWidget {
  const ReactiveIdFormArrayBuilder2({
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

  final FormArray<ReactiveIdFormArrayBuilderT>? formControl;

  final FormArray<ReactiveIdFormArrayBuilderT>? Function(
      IdForm<P, C> formModel)? control;

  final Widget Function(
      ({
        BuildContext context,
        List<Widget> itemList,
        IdForm<P, C> formModel
      }) params)? builder;

  final Widget Function(
      ({
        BuildContext context,
        int i,
        FormControl<ReactiveIdFormArrayBuilderT> control,
        ReactiveIdFormArrayBuilderT? item,
        IdForm<P, C> formModel
      }) params) itemBuilder;

  final Widget Function(BuildContext context)? emptyBuilder;

  final bool Function(FormControl<ReactiveIdFormArrayBuilderT> control)?
      controlFilter;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    return ReactiveFormArray<ReactiveIdFormArrayBuilderT>(
      formArray: formControl ?? control?.call(formModel),
      builder: (context, formArray, child) {
        final values = formArray.controls.indexed
            .where((e) =>
                controlFilter?.call(
                  e as FormControl<ReactiveIdFormArrayBuilderT>,
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
                      as FormControl<ReactiveIdFormArrayBuilderT>,
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

class ReactiveIdFormFormGroupArrayBuilder<ReactiveIdFormFormGroupArrayBuilderT,
    P extends Product, C extends Cart> extends StatelessWidget {
  const ReactiveIdFormFormGroupArrayBuilder({
    Key? key,
    this.extended,
    this.getExtended,
    this.builder,
    required this.itemBuilder,
  })  : assert(extended != null || getExtended != null,
            "You have to specify `control` or `formControl`!"),
        super(key: key);

  final ExtendedControl<List<Map<String, Object?>?>,
      List<ReactiveIdFormFormGroupArrayBuilderT>>? extended;

  final ExtendedControl<List<Map<String, Object?>?>,
          List<ReactiveIdFormFormGroupArrayBuilderT>>
      Function(IdForm<P, C> formModel)? getExtended;

  final Widget Function(
          BuildContext context, List<Widget> itemList, IdForm<P, C> formModel)?
      builder;

  final Widget Function(
      BuildContext context,
      int i,
      ReactiveIdFormFormGroupArrayBuilderT? item,
      IdForm<P, C> formModel) itemBuilder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveIdForm.of<P, C>(context);

    if (formModel == null) {
      throw FormControlParentNotFoundException(this);
    }

    final value = (extended ?? getExtended?.call(formModel))!;

    return StreamBuilder<List<Map<String, Object?>?>?>(
      stream: value.control.valueChanges,
      builder: (context, snapshot) {
        final itemList =
            (value.value() ?? <ReactiveIdFormFormGroupArrayBuilderT>[])
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
