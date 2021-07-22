import 'package:example/login.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

void main() {
  runApp(MyApp());
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                  formControlName: formModel.emailControlName,
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
                  formControlName: formModel.passwordControlName,
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
                ElevatedButton(
                  onPressed: () {
                    if (formModel.form.valid) {
                      print(formModel.form.value);
                    } else {
                      formModel.form.markAllAsTouched();
                    }
                  },
                  child: const Text('Sign Up'),
                ),
              ],
            ),
          );
        },
        model: Login(password: '1234'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
