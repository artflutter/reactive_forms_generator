// import 'package:example/docs/delivery_list/delivery_point_route_form.dart';
// import 'package:example/docs/delivery_list/delivery_route_form.dart';
// import 'package:example/docs/mailing_list/mailing_list_form.dart';
// import 'package:example/docs/freezed/freezed_form.dart';
// import 'package:example/docs/user_profile/user_profile_form.dart';
// import 'package:example/docs/array_nullable/array_nullable_form.dart';
// import 'package:example/docs/group/group_form.dart';
import 'package:example/docs/login/login_form.dart';

// import 'package:example/docs/login_nullable/login_nullable_form.dart';
// import 'package:example/docs/basic/basic_form.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Routes {
  static const login = '/login';

  static const basic = '/basic';

  static const mailingList = '/mailing-list';

  static const userProfile = '/user-profile';

  static const group = '/group';

  static const deliveryList = '/delivery-list';

  static const deliveryPoint = '/delivery-point';

  static const loginNullable = '/login-nullable';

  static const arrayNullable = '/array-nullable';

  static const freezed = '/freezed';
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: <String, WidgetBuilder>{
        Routes.login: (_) => const LoginFormWidget(),
        // Routes.basic: (_) => const BasicFormWidget(),
        // Routes.mailingList: (_) => const MailingListFormWidget(),
        // Routes.userProfile: (_) => const UserProfileFormWidget(),
        // Routes.loginNullable: (_) => const LoginNullableFormWidget(),
        // Routes.arrayNullable: (_) => ArrayNullableFormWidget(),
        // Routes.group: (_) => const GroupFormWidget(),
        // Routes.deliveryList: (_) => const DeliveryListFormWidget(),
        // Routes.deliveryPoint: (_) => const DeliveryPointWidget(),
        // Routes.freezed: (_) => const FreezedFormWidget(),
      },
      home: const LoginFormWidget(),
    );
  }
}
