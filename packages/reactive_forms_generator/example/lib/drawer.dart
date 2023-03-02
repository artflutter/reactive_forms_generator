import 'package:flutter/material.dart';

import 'main.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Login'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.login,
              ),
            ),
            ListTile(
              title: const Text('Login extended nullable'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.loginExtendedNullable,
              ),
            ),
            ListTile(
              title: const Text('Array nullable'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.arrayNullable,
              ),
            ),
            ListTile(
              title: const Text('Group'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.group,
              ),
            ),
            ListTile(
              title: const Text('Mailing list'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.mailingList,
              ),
            ),
            ListTile(
              title: const Text('User profile'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.userProfile,
              ),
            ),
            ListTile(
              title: const Text('Delivery list'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.deliveryList,
              ),
            ),
            ListTile(
              title: const Text('Delivery point'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.deliveryPoint,
              ),
            ),
            ListTile(
              title: const Text('Freezed form'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.freezed,
              ),
            ),
            ListTile(
              title: const Text('Generic form'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.generic,
              ),
            ),
            ListTile(
              title: const Text('Animated URL list form'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.animatedUrlList,
              ),
            ),
            ListTile(
              title: const Text('Model extends'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.modelExtends,
              ),
            ),
            ListTile(
              title: const Text('Model implements'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.modelImplements,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
