import 'package:flutter/material.dart';
import 'package:fyeo/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColors.darkBg,
  primaryColor: AppColors.primaryBlue,

  colorScheme: const ColorScheme.dark(
    primary: AppColors.primaryBlue,
    secondary: AppColors.accentNeon,
    surface: AppColors.darkSurface,
    onSurface: AppColors.whiteColor,
    tertiary: AppColors.goldPremium, // Useful for the Premium screens
  ),

  textTheme: TextTheme(
    bodyLarge: GoogleFonts.sofiaSans(color: AppColors.whiteColor),
    bodyMedium: GoogleFonts.sofiaSans(color: AppColors.mutedText),
    headlineSmall: GoogleFonts.sofiaSans(
      color: AppColors.whiteColor,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.1,
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryBlue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 4,
    ),
  ),

  // Style for the bottom nav shown in the first screen
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.darkBg,
    selectedItemColor: AppColors.primaryBlue,
    unselectedItemColor: AppColors.mutedText,
    type: BottomNavigationBarType.fixed,
  ),
);
