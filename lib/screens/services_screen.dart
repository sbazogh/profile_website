import 'package:flutter/material.dart';
import 'package:personal_web/screens/base_screen.dart';
import 'package:personal_web/widgets/services_box.dart';

import '../constants.dart';

class ServicesScreen extends StatelessWidget {
  static String id = '/services';

  ServicesScreen({Key? key}) : super(key: key);

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
              Center(
                child: Text(
                  'Services',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: size.width < kMediumWidth ? 26 : 32
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              ServicesBox(size: MediaQuery.of(context).size,),
            ],
          ),
        ),
      ),
    );
  }
}