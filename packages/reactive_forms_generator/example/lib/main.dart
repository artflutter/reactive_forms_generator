import 'package:example/routes/array_nullable_form.dart';
import 'package:example/routes/group_nullable_group.dart';
import 'package:example/routes/login_form.dart';
import 'package:example/routes/login_nullable_form.dart';
import 'package:example/docs/basics/tiny_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Routes {
  static const login = '/login';

  static const tiny = '/tiny';

  static const group = '/group';

  static const loginNullable = '/login-nullable';

  static const arrayNullable = '/array-nullable';
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
        Routes.tiny: (_) => TinyFormWidget(),
        Routes.loginNullable: (_) => LoginNullableFormWidget(),
        Routes.arrayNullable: (_) => ArrayNullableFormWidget(),
        Routes.group: (_) => GroupNullableFormWidget(),
      },
      home: GroupNullableFormWidget(),
    );
  }
}
