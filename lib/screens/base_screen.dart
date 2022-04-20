import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_nav_bar.dart';

class BaseScreen extends StatelessWidget {

  final Widget myChild;
  final Size size;

  const BaseScreen({Key? key, required this.myChild, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomNavBar(
          size: size,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                myChild,
              ],
            ),
          ),
        ),
      ],
    );
  }
}