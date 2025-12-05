import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Colors from the Figma design
  static const Color primaryPurple = Color(0xFF9013FE);
  static const Color darkPurple = Color(0xFF4F46E5);
  static const Color lightPurple = Color(0xFF818CF8);
  static const Color darkBackground = Color(0xFF1E1B4B);
  static const Color cardBackground = Color(0xFFF8F9FA);
  static const Color textDark = Color(0xFF1F2937);
  static const Color textGrey = Color(0xFF6B7280);
  static const Color greenButton = Color(0xFF10B981);
  static const Color white100 = Color(0xFFFFFFFF);
  static const Color white32 = Color(0x52FFFFFF); // 32% opacity white
  
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: primaryPurple,
      brightness: Brightness.light,
    ),
    textTheme: GoogleFonts.interTextTheme(),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: textDark),
    ),
  );
  
  static LinearGradient purpleGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF9013FE),
      Color(0xFF9013FE),
    ],
  );
  
  static LinearGradient darkGradient = const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF1E1B4B),
      Color(0xFF312E81),
    ],
  );
}