import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    // backgroundColor: Colors.grey[200]!,
    disabledColor: Colors.grey[300]!,
    selectedColor: Colors.blue,
    // secondarySelectedColor: Colors.blueAccent,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    labelStyle: TextStyle(color: Colors.black),
    // secondaryLabelStyle: TextStyle(color: Colors.white),
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    // backgroundColor: Colors.grey[800]!,
    disabledColor: Colors.grey[700]!,
    selectedColor: Colors.blue,
    // secondarySelectedColor: Colors.blueAccent,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    labelStyle: TextStyle(color: Colors.white),
    // secondaryLabelStyle: TextStyle(color: Colors.white),
    // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    checkmarkColor: Colors.white,
  );
}
