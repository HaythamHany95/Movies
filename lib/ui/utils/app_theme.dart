import 'package:flutter/material.dart';

class AppTheme {
  ///* Colors
  static const Color iconsColor = Color(0xffB5B4B4);
  static const Color greyColor = Color(0xff514F4F);
  static const Color darkGreyColor = Color(0xff282A28);
  static const Color yellowColor = Color(0xffFFBB3B);
  static const Color bottomNavColor = Color(0xff1A1A1A);
  static const Color backGroundColor = Color(0xff1E1E1E);
  static ThemeData appTheme = ThemeData(
    primaryColor: iconsColor,
    scaffoldBackgroundColor: backGroundColor,

    ///* AppBarTheme:
    appBarTheme: const AppBarTheme(
        centerTitle: true,
        backgroundColor: backGroundColor,
        foregroundColor: Colors.white),

    ///* BottomNavigationBarTheme:
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: bottomNavColor,
        selectedItemColor: yellowColor,
        unselectedItemColor: iconsColor),

    ///* TextTheme:
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        fontSize: 20,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 18,
        color: Colors.white,
      ),
      titleSmall: TextStyle(
        fontSize: 13,
        color: iconsColor,
      ),
    ),
  );
}
