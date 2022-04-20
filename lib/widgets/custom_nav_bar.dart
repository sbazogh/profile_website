import 'package:flutter/material.dart';
import 'package:personal_web/constants.dart';
import 'package:personal_web/widgets/custom_drawer.dart';
import 'package:personal_web/widgets/custom_tab_bar.dart';

class CustomNavBar extends StatelessWidget {
  final Size size;

  const CustomNavBar({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: kNavBarHeight,
      width: size.width,
      child: loadNavBar(context),
    );
  }

  loadNavBar(BuildContext context) {

    if (size.width < kMediumWidth) {
      return Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          const Text(
            'Somayeh Bazogh',
            style: TextStyle(
              fontFamily: 'Dancing',
              color: kAditionColor,
              fontSize: 20,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const CustomDrawer();
                  },
                ),
              );
            },
            icon: const Icon(
              Icons.menu,
              // color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
        ],
      );
    } //
    else if (size.width < kLargeWidth) {
      return Row(
        children: const [
          SizedBox(
            width: 20,
          ),
          Text(
            'Somayeh Bazogh',

            style: TextStyle(
              fontFamily: 'Dancing',
              color: kAditionColor,
              fontSize: 25,
            ),
          ),
          Spacer(),
          CustomTabBar(
            isLarge: false,
          ),
          Spacer(),
          SizedBox(
            width: 20,
          ),
        ],
      );
    } //
    else {
      return Row(
        children: const [
          SizedBox(
            width: 20,
          ),
          Spacer(
            flex: 1,
          ),
          Text(
            'Somayeh Bazogh',

            style: TextStyle(
              fontFamily: 'Dancing',
              color: kAditionColor,
              fontSize: 30,
            ),
          ),
          Spacer(
            flex: 2,
          ),
          CustomTabBar(
            isLarge: true,
          ),
          Spacer(
            flex: 2,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      );
    }
  }
}
