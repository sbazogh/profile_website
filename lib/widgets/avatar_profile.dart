import 'package:flutter/material.dart';

class AvatarProfile extends StatelessWidget {

  final bool isMedium;

  const AvatarProfile({Key? key, required this.isMedium}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: CircleAvatar(
            backgroundImage: const AssetImage(
              'images/personalpic.jpg',
            ),
            backgroundColor: Colors.white,
            radius: isMedium ? 110 : 80,
          ),
        ),

      ],
    );
  }
}
