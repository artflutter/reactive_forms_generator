import 'package:example/docs/annotateless/annotateless.dart';
import 'package:example/docs/annotateless/labels.dart';
import 'package:example/docs/conditional_form/mocks.dart';
import 'package:example/docs/login/login.dart';
import 'package:example/sample_screen.dart';
import 'package:flutter/material.dart' hide ProgressIndicator;
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';

class ConditionalFormWidget extends StatefulWidget {
  final ValueChanged<Login>? onChange;

  const ConditionalFormWidget({super.key, this.onChange});

  @override
  State<ConditionalFormWidget> createState() => _ConditionalFormWidgetState();
}

class _ConditionalFormWidgetState extends State<ConditionalFormWidget> {
  final LoginForm _formModelLogin =
      LoginForm(LoginForm.formElements(mockedLogin), null);
  final AnnotatelessForm _formModelAnnotateless =
      AnnotatelessForm(AnnotatelessForm.formElements(mockedAnnotateless), null);
  AnnotatelessForm? _lifeCycleManagedFormModelAnnotateless;
  LoginForm? _lifeCycleManagedFormModelLogin;
  final Annotateless _modelAnnotateless = mockedAnnotateless;
  final Login _modelLogin = mockedLogin;
  bool _displayAnnotatelessForm = true;
  bool _formLoginDisposed = false;
  bool _formAnnotatelessDisposed = false;
  bool _lifeCycleManagedLoginDisposed = false;
  bool _lifeCycleManagedAnnotatelessDisposed = false;

  @override
  void initState() {
    super.initState();

    _formModelLogin.form.valueChanges
        .listen(null, onDone: () => _formLoginDisposed = true);

    _formModelAnnotateless.form.valueChanges
        .listen(null, onDone: () => _formAnnotatelessDisposed = true);
  }

  @override
  void dispose() {
    _formModelLogin.form.dispose();
    _formModelAnnotateless.form.dispose();
    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SampleScreen(
        title: const Text('Conditional Form'),
        body: Column(children: [
          Text(
            'Use FormModelBuilder to create a form that will not be disposed when toggling the displayed form.',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            'FormModelBuilder Form 1 disposed: $_formLoginDisposed',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            'FormModelBuilder Form 2 disposed: $_formAnnotatelessDisposed',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          formModelBuilderExample(),
          Text(
            'FormBuilder is not great for conditional forms, as it will be disposed when toggling the displayed form.',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            'FormBuilder Form 1 disposed: $_lifeCycleManagedLoginDisposed',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          Text(
            'FormBuilder Form 2 disposed: $_lifeCycleManagedAnnotatelessDisposed',
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.center,
          ),
          formBuilderExample(),
          ElevatedButton(
            key: updateModel.itemKey,
            onPressed: () {
              setState(
                  () => _displayAnnotatelessForm = !_displayAnnotatelessForm);
            },
            child: const Text('Toggle both displayed forms'),
          ),
        ]));
  }

  Widget formModelBuilderExample() => _displayAnnotatelessForm
      ? getAnnotatelessFormModelBuilder()
      : getLoginFormModelBuilder();

  Widget formBuilderExample() => _displayAnnotatelessForm
      ? getAnnotatelessFormBuilder()
      : getLoginFormBuilder();

  Widget getLoginFormModelBuilder() {
    return LoginFormModelBuilder(
      formModel: _formModelLogin,
      builder: (context, formModel, child) {
        return Column(
          children: [
            ReactiveTextField<String>(
              key: email.itemKey,
              formControl: formModel.emailControl,
              validationMessages: {
                ValidationMessage.required: (_) => errorRequired
              },
              decoration: InputDecoration(
                labelText: email.name,
                helperText: '',
                helperStyle: const TextStyle(height: 0.8),
                errorStyle: const TextStyle(height: 0.8),
              ),
            ),
            const SizedBox(height: 8.0),
            ReactiveTextField<String>(
              key: password.itemKey,
              formControl: formModel.passwordControl,
              obscureText: true,
              validationMessages: {
                ValidationMessage.required: (_) => errorRequired,
                'mustMatch': (_) => errorMustMatch,
              },
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: password.name,
                helperText: '',
                helperStyle: const TextStyle(height: 0.8),
                errorStyle: const TextStyle(height: 0.8),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget getAnnotatelessFormModelBuilder() {
    return AnnotatelessFormModelBuilder(
      formModel: _formModelAnnotateless,
      builder: (context, formModel, child) {
        return Column(
          children: [
            ReactiveTextField<String>(
              key: email.itemKey,
              formControl: formModel.emailControl,
              validationMessages: {
                ValidationMessage.required: (_) => errorRequired
              },
              decoration: InputDecoration(
                labelText: email.name,
                helperText: '',
                helperStyle: const TextStyle(height: 0.8),
                errorStyle: const TextStyle(height: 0.8),
              ),
            ),
            const SizedBox(height: 8.0),
            ReactiveTextField<String>(
              key: password.itemKey,
              formControl: formModel.passwordControl,
              obscureText: true,
              validationMessages: {
                ValidationMessage.required: (_) => errorRequired,
                'mustMatch': (_) => errorMustMatch,
              },
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: password.name,
                helperText: '',
                helperStyle: const TextStyle(height: 0.8),
                errorStyle: const TextStyle(height: 0.8),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget getAnnotatelessFormBuilder() {
    return AnnotatelessFormBuilder(
      model: _modelAnnotateless,
      builder: (context, formModel, child) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_lifeCycleManagedFormModelAnnotateless == null) {
            setState(() {
              _lifeCycleManagedFormModelAnnotateless = formModel;
            });

            _lifeCycleManagedFormModelAnnotateless!.form.valueChanges
                .listen(null, onDone: () {
              setState(() {
                _lifeCycleManagedAnnotatelessDisposed = true;
              });
            });
          }
        });

        return Column(
          children: [
            ReactiveTextField<String>(
              key: email.itemKey,
              formControl: formModel.emailControl,
              validationMessages: {
                ValidationMessage.required: (_) => errorRequired
              },
              decoration: InputDecoration(
                labelText: email.name,
                helperText: '',
                helperStyle: const TextStyle(height: 0.8),
                errorStyle: const TextStyle(height: 0.8),
              ),
            ),
            const SizedBox(height: 8.0),
            ReactiveTextField<String>(
              key: password.itemKey,
              formControl: formModel.passwordControl,
              obscureText: true,
              validationMessages: {
                ValidationMessage.required: (_) => errorRequired,
                'mustMatch': (_) => errorMustMatch,
              },
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: password.name,
                helperText: '',
                helperStyle: const TextStyle(height: 0.8),
                errorStyle: const TextStyle(height: 0.8),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget getLoginFormBuilder() {
    return LoginFormBuilder(
      model: _modelLogin,
      builder: (context, formModel, child) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (_lifeCycleManagedFormModelLogin == null) {
            setState(() {
              _lifeCycleManagedFormModelLogin = formModel;
            });

            _lifeCycleManagedFormModelLogin!.form.valueChanges.listen(null,
                onDone: () {
              setState(() {
                _lifeCycleManagedLoginDisposed = true;
              });
            });
          }
        });

        return Column(
          children: [
            ReactiveTextField<String>(
              key: email.itemKey,
              formControl: formModel.emailControl,
              validationMessages: {
                ValidationMessage.required: (_) => errorRequired
              },
              decoration: InputDecoration(
                labelText: email.name,
                helperText: '',
                helperStyle: const TextStyle(height: 0.8),
                errorStyle: const TextStyle(height: 0.8),
              ),
            ),
            const SizedBox(height: 8.0),
            ReactiveTextField<String>(
              key: password.itemKey,
              formControl: formModel.passwordControl,
              obscureText: true,
              validationMessages: {
                ValidationMessage.required: (_) => errorRequired,
                'mustMatch': (_) => errorMustMatch,
              },
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                labelText: password.name,
                helperText: '',
                helperStyle: const TextStyle(height: 0.8),
                errorStyle: const TextStyle(height: 0.8),
              ),
            ),
          ],
        );
      },
    );
  }
}
