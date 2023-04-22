import 'package:flutter/material.dart';

import '../screens/auth_screens/login_screen.dart';

Future<dynamic> showPopUpMenu(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: [
          const ListTile(
            leading: Icon(Icons.explore),
            title: Text('Explore'),
          ),
          ListTile(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LoginScreen(),
              ),
            ),
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
          ),
          const ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Favourites'),
          ),
        ],
      );
    },
  );
}
