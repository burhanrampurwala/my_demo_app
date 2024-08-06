import 'package:flutter/material.dart';

class AppColor {
  //Color palette of the theme
  static Color colorPrimary = HexColor.fromHex("#003996");
  static Color colorSecondary = HexColor.fromHex("#475467");
  static Color colorSecondaryText = HexColor.fromHex("#636d7d");
  static Color colorAccent = HexColor.fromHex("#2E90FA");
  static Color colorPrimaryInverse = HexColor.fromHex("#FFFFFF");
  static Color colorTertiaryText = HexColor.fromHex("#7A7E89");
  static Color colorAbsent = Colors.transparent;
  static Color colorTextFieldBorders = HexColor.fromHex('#CFD4DC');

  static Color colorScaffold = HexColor.fromHex("#F0F7FC");

  static Color colorSuccess = HexColor.fromHex('#12B76A');
  static Color colorWarning = HexColor.fromHex('#F79009');
  static Color colorError = HexColor.fromHex('#F04438');
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
