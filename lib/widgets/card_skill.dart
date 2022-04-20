import 'package:flutter/material.dart';

import '../constants.dart';

class CardSkill extends StatelessWidget {

  final String title,subtitle;
  final bool isMedium;
  const CardSkill({Key? key,
    required this.title,
    required this.subtitle,
    required this.isMedium}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: kMainColor,
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColor,
                fontSize: isMedium ? 16 : 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: isMedium ? 10 : 15,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: isMedium ? 14 : 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
