
import 'package:flutter/material.dart';
import 'package:my_demo_app/common/dimensions/font_size.dart';
import 'package:my_demo_app/common/resources/app_color.dart';

import '../../imports/common.dart';


class Style {
  // Bars
  static TextStyle appBarTitleStyle({Color? color}) {
    return TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: title,
      color: color ?? AppColor.colorPrimary,
    );
  }
  static TextStyle extraLargeTitleStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: titleLarge,
      color: color ?? AppColor.colorPrimary,
    );
  }

  static TextStyle navBarTitleStyle({required bool isSelected}) {
    return TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: normal,
      color: isSelected ? AppColor.colorPrimary : AppColor.colorTertiaryText,
    );
  }

  static TextStyle tabBarTitleStyle({required bool isSelected}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: subHeaderTitle,
      color: isSelected ? AppColor.colorPrimaryInverse : AppColor.colorPrimary,
    );
  }

  // Header, Sub-header, and body
  static TextStyle titleStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: headerTitle,
      color: color ?? AppColor.colorPrimary,
    );
  }

  static TextStyle titleBoldStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.bold,
      fontSize: headerTitle,
      color: color ?? AppColor.colorPrimary,
    );
  }

  static TextStyle subTitleStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: subHeaderTitle,
      color: color ?? AppColor.colorAccent,
    );
  }

  static TextStyle subTitleBoldStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.bold,
      fontSize: subHeaderTitle,
      color: color ?? AppColor.colorAccent,
    );
  }


  //Textfields
  static TextStyle hintStyle() {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: normal,
      color: AppColor.colorTertiaryText,
    );
  }

  static TextStyle errorStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: normal,
      color: color ?? AppColor.colorError,
    );
  }

  static TextStyle textFieldInputStyle() {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: normal,
      color: AppColor.colorPrimary,
    );
  }

  static TextStyle labelStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: regular,
      color: color ?? AppColor.colorPrimary,
    );
  }

  // buttonLabel
  static TextStyle buttonLabel({required ButtonSize buttonSize, Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: buttonSize == ButtonSize.large
          ? headerTitle
          : buttonSize == ButtonSize.medium
          ? subHeaderTitle
          : regular,
      color: color ?? AppColor.colorPrimaryInverse,
    );
  }

  static TextStyle textButtonStyle({Color? color}) {
    return TextStyle(

      fontWeight: FontWeight.w400,
      fontSize: subHeaderTitle,
      color: color ?? AppColor.colorSecondaryText,
    );
  }
}