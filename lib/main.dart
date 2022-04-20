import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personal_web/screens/about_screen.dart';
import 'package:personal_web/screens/contact_screen.dart';
import 'package:personal_web/screens/home_screen.dart';
import 'package:personal_web/screens/services_screen.dart';

import 'constants.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: HomeScreen.id,
          page: () => HomeScreen(),
        ),
        GetPage(
          name: AboutScreen.id,
          page: () => AboutScreen(),
        ),
        GetPage(
          name: ServicesScreen.id,
          page: () => ServicesScreen(),
        ),
        GetPage(
          name: ContactScreen.id,
          page: () => ContactScreen(),
        ),
      ],
      theme: ThemeData(
        inputDecorationTheme: kDefaultInputDecorationTheme,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      defaultTransition: Transition.fade,
      initialRoute: HomeScreen.id,
    );
  }
}

