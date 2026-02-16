import 'package:flutter/material.dart';

class AppThemes {
  AppThemes._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF5F5F0),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFEBEBE3),
      foregroundColor: Color(0xFF1A1A1A),
      //surfaceTintColor: Colors.white,
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      shape: Border(
        bottom: BorderSide(
          color: Colors.grey,
          width: 0.5,
        ),
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: Color(0xFF2C2C2C),
      secondary: Color(0xFFA69076),
      surface: Color(0xFFFDFDFB),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF1A1A18),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF242421),
      foregroundColor: Color(0xFFF5F5F0),
      //surfaceTintColor: Colors.blue,
      elevation: 4,
      scrolledUnderElevation: 4,
      centerTitle: true,
      shape: Border(
        bottom: BorderSide(
          color: Colors.white70,
          width: 0.5,
        ),
      ),
    ),
    colorScheme: const ColorScheme.dark(
      primary: Color(0xFFD4C3A1),
      secondary: Color(0xFFA69076),
      surface: Color(0xFF2C2C2A),
      onPrimary: Color(0xFF1A1A18),
      onSurface: Color(0xFFF5F5F0),
    ),
  );

}