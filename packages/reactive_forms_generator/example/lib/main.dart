import 'package:example/routes/login_form.dart';
import 'package:example/routes/login_nullable_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Routes {
  static const login = '/login';

  static const loginNullable = '/login-nullable';

  // static const simple = '/simple';
  //
  // static const addDynamicControls = '/add-dynamic-controls';
  //
  // static const disableFormSample = '/disable-form-sample';
  //
  // static const arraySample = '/array-sample';
  //
  // static const datePickerSample = '/date-picker-sample';
  //
  // static const reactiveFormWidgets = '/reactive-form-widgets';
  //
  // static const loginSample = '/login-sample';
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        Routes.login: (_) => LoginFormWidget(),
        Routes.loginNullable: (_) => LoginNullableFormWidget(),
        // Routes.simple: (_) => SimpleSample(),
        // Routes.addDynamicControls: (_) => AddDynamicControlsSample(),
        // Routes.disableFormSample: (_) => DisableFormSample(),
        // Routes.arraySample: (_) => ArraySample(),
        // Routes.loginSample: (_) => LoginSample(),
        // Routes.datePickerSample: (_) => DatePickerSample(),
        // Routes.reactiveFormWidgets: (_) => ReactiveFormWidgetsSample(),
      },
      home: LoginNullableFormWidget(),
    );
  }
}
