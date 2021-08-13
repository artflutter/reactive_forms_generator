import 'package:example/docs/array_group/delivery_route_form.dart';
import 'package:example/docs/arrays/mailing_list_form.dart';
import 'package:example/docs/group/user_profile_form.dart';
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

  static const mailingList = '/mailing-list';

  static const userProfile = '/user-profile';

  static const group = '/group';

  static const deliveryList = '/delivery-list';

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
        Routes.mailingList: (_) => MailingListFormWidget(),
        Routes.userProfile: (_) => UserProfileFormWidget(),
        Routes.loginNullable: (_) => LoginNullableFormWidget(),
        Routes.arrayNullable: (_) => ArrayNullableFormWidget(),
        Routes.group: (_) => GroupNullableFormWidget(),
        Routes.deliveryList: (_) => DeliveryListFormWidget(),
      },
      home: MailingListFormWidget(),
    );
  }
}
