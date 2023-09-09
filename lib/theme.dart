import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart' as GgoogleFonts;

var appTheme = ThemeData(
  fontFamily: GgoogleFonts.GoogleFonts.nunito().fontFamily,
  bottomAppBarTheme: const BottomAppBarTheme(
    color: Colors.greenAccent,
  ),
  brightness: Brightness.light,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 18),
    bodyMedium: TextStyle(fontSize: 16),
    labelLarge: TextStyle(
      letterSpacing: 1.5,
      fontWeight: FontWeight.bold,
    ),
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
    ),
  ),
  buttonTheme: const ButtonThemeData(),
);
