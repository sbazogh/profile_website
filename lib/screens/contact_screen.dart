import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_web/screens/base_screen.dart';
import 'package:personal_web/widgets/Contact_box.dart';

import '../constants.dart';

class ContactScreen extends StatelessWidget {
  static String id = '/contact';

  ContactScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: BaseScreen(
        size: MediaQuery.of(context).size,
        myChild: Container(
          constraints: const BoxConstraints(maxWidth: 1110),
          margin: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Email: ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width < kLargeWidth ? 17 : 15,
                    ),
                  ),

                  Text(
                    's.bazogh89@gmail.com',
                    style: TextStyle(
                      fontSize: size.width < kLargeWidth ? 17 : 15,
                    ),
                  ),

                ],
              ),
              SizedBox(
                height: size.width < kLargeWidth ? 20 : 15,
              ),
              Row(
                children: [
                  Text(
                    'Github: ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: size.width < kLargeWidth ? 17 : 15,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'https://github.com/sbazogh',
                      recognizer: TapGestureRecognizer()..onTap = (){},
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: size.width < kLargeWidth ? 17 : 15,
                      ),
                    ),
                  ),
                ],
              ),
              ContactBox(),
            ],
          ),
        ),
      ),
    );
  }
}
