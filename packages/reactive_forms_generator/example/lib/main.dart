import 'package:example/forms/login.dart';
import 'package:example/forms/login.gform.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:reactive_dropdown_search/reactive_dropdown_search.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_touch_spin/reactive_touch_spin.dart';

void main() {
  runApp(MyApp());
}

class NumValueAccessor extends ControlValueAccessor<int, num> {
  final int fractionDigits;

  NumValueAccessor({
    this.fractionDigits = 2,
  });

  @override
  num? modelToViewValue(int? modelValue) {
    return modelValue;
  }

  @override
  int? viewToModelValue(num? viewValue) {
    return viewValue?.toInt();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: LoginFormBuilder(
        builder: (context, formModel, child) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ReactiveTextField<String>(
                  formControlName: formModel.email,
                  validationMessages: (control) => {
                    ValidationMessage.required: 'The email must not be empty',
                    ValidationMessage.email:
                        'The email value must be a valid email',
                    'unique': 'This email is already in use',
                  },
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    helperText: '',
                    helperStyle: TextStyle(height: 0.7),
                    errorStyle: TextStyle(height: 0.7),
                  ),
                ),
                const SizedBox(height: 16.0),
                ReactiveTextField<String>(
                  formControlName: formModel.password,
                  obscureText: true,
                  validationMessages: (control) => {
                    ValidationMessage.required:
                        'The password must not be empty',
                    ValidationMessage.minLength:
                        'The password must be at least 8 characters',
                  },
                  textInputAction: TextInputAction.done,
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    helperText: '',
                    helperStyle: TextStyle(height: 0.7),
                    errorStyle: TextStyle(height: 0.7),
                  ),
                ),
                const SizedBox(height: 16.0),
                ReactiveDropdownSearch<String>(
                  formControlName: formModel.theme,
                  decoration: InputDecoration(
                    helperText: '',
                    contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                    border: OutlineInputBorder(),
                  ),
                  mode: Mode.MENU,
                  hint: "Select a theme",
                  showSelectedItem: true,
                  items: [
                    "light",
                    "dark",
                  ],
                  label: "Theme",
                  showClearButton: true,
                ),
                const SizedBox(height: 16.0),
                ReactiveDropdownSearch<UserMode>(
                  formControlName: formModel.mode,
                  decoration: InputDecoration(
                    helperText: '',
                    contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
                    border: OutlineInputBorder(),
                  ),
                  mode: Mode.MENU,
                  hint: "Select a theme",
                  showSelectedItem: true,
                  items: [
                    UserMode.admin,
                    UserMode.user,
                  ],
                  compareFn: (item, selectedItem) => item == selectedItem,
                  label: "Theme",
                  showClearButton: true,
                ),
                ReactiveTouchSpin<int>(
                  formControlName: formModel.timeout,
                  decoration: InputDecoration(
                    labelText: 'Logout timeout mins.',
                  ),
                  valueAccessor: NumValueAccessor(),
                  displayFormat: NumberFormat()..minimumFractionDigits = 0,
                  min: 0,
                  max: 10,
                ),
                ReactiveSwitchListTile(
                  formControlName: formModel.rememberMe,
                  title: Text('remember me'),
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
                ReactiveSlider(
                  formControlName: formModel.height,
                  min: 120,
                  max: 220,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (formModel.form.valid) {
                      print(formModel.model);
                      print(formModel.model.email);
                    } else {
                      formModel.form.markAllAsTouched();
                    }
                  },
                  child: const Text('Sign Up'),
                ),
                ReactiveLoginFormConsumer(
                  builder: (context, form, child) {
                    return ElevatedButton(
                      child: Text('Submit'),
                      onPressed: form.form.valid ? () {} : null,
                    );
                  },
                ),
              ],
            ),
          );
        },
        model: Login(
          password: '1234',
          timeout: 3,
          theme: 'dark',
          height: 150,
          mode: UserMode.admin,
          rememberMe: false,
        ),
      ),
    );
  }
}
