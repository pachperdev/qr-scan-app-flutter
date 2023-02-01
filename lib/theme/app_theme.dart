import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.deepPurple;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //AppBar Theme App
    appBarTheme: const AppBarTheme(
      backgroundColor: primaryColor,
      elevation: 0,
      centerTitle: true,
    ),
    //Bottom Navigation Bar Theme App
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: primaryColor,
    ),
    //Text Button Theme App
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primaryColor),
    ),
    //List Tile Theme App
    listTileTheme: const ListTileThemeData(
      iconColor: primaryColor,
    ),
    //Card Theme App
    cardTheme: const CardTheme(
      elevation: 5,
      shadowColor: primaryColor,
    ),
    //Floating Action Button Theme App
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primaryColor,
      elevation: 0,
    ),
    //Elevated Button Theme App
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
    ),
    //Input Decoration Theme App
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: const TextStyle(color: primaryColor),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: const BorderSide(
          color: primaryColor,
        ),
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
    ),
    //
    sliderTheme: const SliderThemeData(
      thumbColor: primaryColor,
      activeTrackColor: primaryColor,
    ),
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(primaryColor),
    ),
  );
}
