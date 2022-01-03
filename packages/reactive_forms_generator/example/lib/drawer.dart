import 'package:flutter/material.dart';

import 'main.dart';

class AppDrawer extends StatelessWidget {
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
              title: const Text('Login nullable'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.loginNullable,
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
              title: const Text('Tiny form'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.tiny,
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
              title: const Text('Remove form control test'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.removeControl,
              ),
            ),
            ListTile(
              title: const Text('Group contains test'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.groupContains,
              ),
            ),
            ListTile(
              title: const Text('Group remove test'),
              onTap: () => Navigator.of(context).pushReplacementNamed(
                Routes.groupRemove,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
