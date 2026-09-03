import 'package:flutter/material.dart';
import 'package:shopping_app/util/theme/custom_themes/appbar_theme.dart';
import 'package:shopping_app/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:shopping_app/util/theme/custom_themes/check_box_theme.dart';
import 'package:shopping_app/util/theme/custom_themes/chip_theme.dart';
import 'package:shopping_app/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:shopping_app/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:shopping_app/util/theme/custom_themes/text_field_theme.dart';
import 'package:shopping_app/util/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._();
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    inputDecorationTheme: TTextFieldTheme.lightTextFieldTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.lightCheckBoxTheme,
    chipTheme: TChipTheme.lightChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlightedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    inputDecorationTheme: TTextFieldTheme.darkTextFieldTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckBoxTheme.darkCheckBoxTheme,
    chipTheme: TChipTheme.darkChipTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlightedButtonTheme,
  );
}
