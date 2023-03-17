import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts.dmSans().fontFamily,
        appBarTheme: const AppBarTheme(
          elevation: 4,
          backgroundColor: Colors.white,
        ));
  }
}
