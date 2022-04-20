import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_web/widgets/avatar_profile.dart';
import 'package:personal_web/widgets/info_profile.dart';

import '../constants.dart';

class AboutBox extends StatelessWidget {

  final Size size;
  const AboutBox({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: loadData(),
    );
  }

  loadData(){
    if (size.width < kMediumWidth) {
      return Column(
        children: const [
          InfoProfile(isMedium: false,),
          AvatarProfile(isMedium: false,),
        ],
      );
    }
    else{
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
              children:const [
                InfoProfile(isMedium: true,),
              ],
          ),
          Column(
              children:const [
                AvatarProfile(isMedium: true,),
              ],
          ),
        ],
      );
    }
  }

}
