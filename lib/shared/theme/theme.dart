import 'package:billmanager/shared/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var appTheme = ThemeData(
  fontFamily: GoogleFonts.nunito().fontFamily,
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.backgroundColor,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(fontSize: 24),
    labelLarge: TextStyle(
      fontSize: 20,
    ),
    displayLarge: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    titleMedium: TextStyle(
      color: Colors.grey,
    ),
  ),
);
