import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Color(0xFFE2BE7F);
  static const Color black = Color(0xFF202020);
  static const Color white = Color(0xFFFFFFFF);
  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: primaryColor,
    selectedItemColor: white,
    unselectedItemColor: black,
    showSelectedLabels: true,
    showUnselectedLabels: false,
    selectedLabelStyle: TextStyle(
      fontFamily: 'JannaLT',
      fontSize: 12,
      fontWeight: FontWeight.w700,
      color: white,
    )
  ),
  );
}
