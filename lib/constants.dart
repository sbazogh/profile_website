import 'package:flutter/material.dart';
import 'package:get/get.dart';

const kMainColor = Color(0xFFfad96c);
const kSymbolColor = Color(0xFF8773ee);
const kBgColor = Color(0xFFe2dde4);
const kTextColor = Color(0xFF37372e);
const kAditionColor = Color(0xFFb09841);

const kDefaultInputDecorationTheme = InputDecorationTheme(
  border: kDefaultOutlineInputBorder,
  enabledBorder: kDefaultOutlineInputBorder,
  focusedBorder: kDefaultOutlineInputBorder,
);
const kDefaultOutlineInputBorder = OutlineInputBorder(
  borderSide: BorderSide(
    color: kMainColor,
  ),
);

const double kSmallWidth = 360; // 360
const double kMediumWidth = 720; // 720
const double kLargeWidth = 1440; // 1440

const double kNavBarHeight = 60;

void kNavigator(String destination){
  Get.toNamed(destination);
}