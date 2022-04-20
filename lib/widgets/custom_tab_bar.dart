import 'package:flutter/material.dart';
import 'package:personal_web/screens/about_screen.dart';
import 'package:personal_web/screens/contact_screen.dart';
import 'package:personal_web/screens/home_screen.dart';
import 'package:personal_web/screens/services_screen.dart';
import 'package:personal_web/widgets/tab_bar_option.dart';

import '../constants.dart';


class CustomTabBar extends StatelessWidget {
  final bool isLarge;

  const CustomTabBar({Key? key, required this.isLarge}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        customWidthDivider(),
        TabBarOption(
          onTapped: () {
            kNavigator(
              HomeScreen.id,
            );
          },
          option: 'Home',
          isLarge: isLarge,
        ),
        customWidthDivider(),
        TabBarOption(
          onTapped: () {
            kNavigator(
              AboutScreen.id,
            );
          },
          option: 'About',
          isLarge: isLarge,
        ),
        customWidthDivider(),
        TabBarOption(
          onTapped: () {
            kNavigator(
              ServicesScreen.id,
            );
          },
          option: 'Services',
          isLarge: isLarge,
        ),
        customWidthDivider(),
        TabBarOption(
          onTapped: () {
            kNavigator(
              ContactScreen.id,
            );
          },
          option: 'Contact',
          isLarge: isLarge,
        ),
        customWidthDivider(),
      ],
    );
  }

  customWidthDivider() {
    return SizedBox(
      width: isLarge ? 20 : 10,
    );
  }
}
