import 'package:flutter/material.dart';

import '../constants.dart';

class TabBarOption extends StatelessWidget {

  final String option;
  final VoidCallback onTapped;
  final bool isLarge;

  const TabBarOption({
    Key? key,
    required this.option,
    required this.onTapped,
    required this.isLarge
  }) :  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.black,
      child: InkWell(
        onTap: onTapped,
        child: Text(
          option,
          style: TextStyle(
            color: kTextColor,
            fontSize: isLarge ? 20 : 15,
          ),
        ),
      ),
    );
  }
}
