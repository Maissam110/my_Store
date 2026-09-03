import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //  App Basic Color

  static Color primary = Color(0XFF4B68FF);
  static Color secondary = Color(0XFFFFE24B);
  static Color accent = Color(0XFFB0C7FF);

  //  Gradient Colors

  static Gradient linearGradient = LinearGradient(colors: []);

  //  Text Colors

  static Color textPrimary = Color(0XFF333333);
  static Color textSecondary = Color(0XFF6C757D);
  static Color textWhite = Colors.white;

  //  Background Color
  static Color light = Color(0XFFF6F6F6);
  static Color dark = Color(0XFF272727);
  static Color primaryBackground = Color(0XFFF3F5FF);

  //  Backgrond Conainer color
  static Color lightContainer = Color(0XFFF6F6F6);
  static Color darkContainer = TColors.white.withOpacity(0.1);

  // Buttons Colors
  static Color buttonPrimary = Color(0XFF4B68FF);
  static Color buttonSecondary = Color(0XFF6C757D);
  static Color buttonDisabled = Color(0XFFC4C4C4);

  // Borders COlors
  static Color borderPrimary = Color(0XFFD9D9D9);
  static Color borderSecondary = Color(0XFFE6E6E6);

  //  Error and validation colors
  static Color error = Color(0XFFD32F2F);
  static Color success = Color(0XFF388E3C);
  static Color warning = Color(0XFFF57C00);
  static Color info = Color(0XFF1976D2);

  //  Neutral Shades
  static Color black = Color(0XFF232323);
  static Color darkerGrey = Color(0XFF4F4F4F);
  static Color darkGrey = Color(0XFF939393);
  static Color grey = Color(0XFFE0E0E0);
  static Color softGrey = Color(0XFFF4F4F4);
  static Color lightGrey = Color(0XFFF9F9F9);
  static Color white = Color(0XFFffffff);
}
