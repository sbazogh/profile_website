import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_web/screens/base_screen.dart';
import 'package:personal_web/widgets/Contact_box.dart';
import 'package:personal_web/widgets/about_box.dart';
import 'package:personal_web/widgets/services_box.dart';


class HomeScreen extends StatelessWidget {
  static String id = '/home';

  HomeScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: BaseScreen(
        size: MediaQuery.of(context).size,
        myChild: Column(
          children: [
            AboutBox(size: size,),
            const SizedBox(height: 40,),
            ServicesBox(size: size,),
            const SizedBox(height: 40,),
            ContactBox(),
          ],
        ),
      ),
    );
  }
}