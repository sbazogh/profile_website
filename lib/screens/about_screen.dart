import 'package:flutter/material.dart';
import 'package:personal_web/screens/base_screen.dart';
import 'package:personal_web/widgets/about_box.dart';

import '../constants.dart';

class AboutScreen extends StatelessWidget {
  static String id = '/about';

  AboutScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: BaseScreen(
        size: MediaQuery.of(context).size,
        myChild: Container(
          margin: const EdgeInsets.only(top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: size.width < kMediumWidth ? const EdgeInsets.only(left: 15) : const EdgeInsets.only(left: 100),
                    child: Text(
                      'About Me',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: size.width < kMediumWidth ? 26 : 32
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              AboutBox(size: MediaQuery.of(context).size,),
            ],
          ),
        ),
      ),
    );
  }
}
