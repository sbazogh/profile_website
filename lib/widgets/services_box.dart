import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_web/widgets/card_skill.dart';

import '../constants.dart';

class ServicesBox extends StatelessWidget {

  final Size size;
  const ServicesBox({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60),
      width: double.infinity,
      color: kMainColor,
      child: loadData(),
    );
  }

  loadData(){
    if (size.width < kMediumWidth) {
      return Column(
        children: const [
          Text(
            'My Skills',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: kTextColor,
            ),
          ),
          SizedBox(height: 15,),
          CardSkill(
              title: 'Flutter Development',
              subtitle: 'Level: Junior',
              isMedium: true,
          ),
          CardSkill(
            title: 'React Development',
            subtitle: 'Level: Junior',
            isMedium: true,
          ),
          CardSkill(
            title: 'UI/UX Designer',
            subtitle: 'Level: Junior',
            isMedium: true,
          ),
        ],
      );
    }
    else{
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(width: 15),
            Column(
              children: const [
                Text(
                  'My Skills',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: kTextColor,
                  ),
                ),
              ],
            ),
            const SizedBox(width: 15),
            Column(
              children: const [
                CardSkill(
                  title: 'Flutter Development',
                  subtitle: 'Level: Junior',
                  isMedium: false,
                ),
              ],
            ),
            Column(
              children: const [
                CardSkill(
                  title: 'React Development',
                  subtitle: 'Level: Junior',
                  isMedium: false,
                ),
              ],
            ),
            Column(
              children: const [
                CardSkill(
                  title: 'UI/UX Designer',
                  subtitle: 'Level: Junior',
                  isMedium: false,
                ),
              ],
            ),
          ],
        ),
      );
    }
  }

}
