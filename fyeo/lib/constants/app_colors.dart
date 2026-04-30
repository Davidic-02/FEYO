import 'package:flutter/material.dart';

class AppColors {
  // Backgrounds
  static const darkBg = Color(0xFF090B10); // Deepest dark used in scaffolds
  static const darkSurface = Color(
    0xFF141A26,
  ); // Surface color for cards/containers

  // Accents & Actions
  static const primaryBlue = Color(
    0xFF2A5EE8,
  ); // The vibrant blue on buttons and sliders
  static const accentNeon = Color(
    0xFF00FFC6,
  ); // The cyan/mint glow used for "Secure" status
  static const goldPremium = Color(
    0xFFE5B54F,
  ); // The gold used in the "Upgrade to Premium" screen
  static const goldPremiumMuted = Color(0xFF70592E);
  static const greyColor = Color(0xFF8E8E93); // Muted gold for borders/icons

  // Text & Gradients
  static const whiteColor = Color(0xFFFFFFFF);
  static const mutedText = Color(0xFF818998); // Greyish text for descriptions
  static const glassOverlay = Color(
    0x1AFFFFFF,
  ); // Low opacity white for glassmorphism effects

  // Status Colors
  static const greenSuccess = Color(0xFF34C759);
  static const redError = Color(0xFFFF3B30);
}
