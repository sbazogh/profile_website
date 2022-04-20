import 'package:flutter/material.dart';
import 'package:personal_web/screens/about_screen.dart';
import 'package:personal_web/screens/contact_screen.dart';
import 'package:personal_web/screens/home_screen.dart';
import 'package:personal_web/screens/services_screen.dart';

import '../constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,
            color: Color(0xFF4756DF),
          ),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: const Text(
              'Home',
            ),
            onTap: () {
              kNavigator(
                HomeScreen.id,
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'About',
            ),
            onTap: () {
              kNavigator(
                AboutScreen.id,
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Services',
            ),
            onTap: () {
              kNavigator(
                ServicesScreen.id,
              );
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              'Contact',
            ),
            onTap: () {
              kNavigator(
                ContactScreen.id,
              );
            },
          ),
        ],
      ),
    );


  }
}
