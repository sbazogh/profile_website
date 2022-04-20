import 'package:flutter/material.dart';

import '../constants.dart';

class InfoProfile extends StatelessWidget {

  final bool isMedium;

  const InfoProfile({Key? key, required this.isMedium}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: isMedium ? 30 : 25,
          ),
          Text(
            'Hi, my name is Somayeh bazogh.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kTextColor,
              fontSize: isMedium ? 24 : 20,
            ),
          ),
          SizedBox(
            height: isMedium ? 22 : 18,
          ),
          Text(
            'I am Frontend Developer',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kTextColor,
              fontSize: isMedium ? 25 : 20,
            ),
          ),
          SizedBox(
            height: isMedium ? 22 : 18,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kSymbolColor,
            ),
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "Let's Talk",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: isMedium ? 40 : 30,
          ),
          Row(
            children: [
              CircleAvatar(
                radius: isMedium ? 20 : 17,
                backgroundColor: kBgColor,
                child: Image.asset(
                  'images/github.png',
                  fit: BoxFit.cover,
                  width: isMedium ? 20 : 15,
                  height: isMedium ? 20 : 15,
                ),
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                radius: isMedium ? 20 : 17,
                backgroundColor: kBgColor,
                child: Image.asset(
                  'images/linkedin.png',
                  fit: BoxFit.cover,
                  width: isMedium ? 20 : 17,
                  height: isMedium ? 20 : 17,
                ),
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                radius: isMedium ? 20 : 17,
                backgroundColor: kBgColor,
                child: Image.asset(
                  'images/telegram.png',
                  fit: BoxFit.cover,
                  width: isMedium ? 20 : 17,
                  height: isMedium ? 20 : 17,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
