import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class ConstTextTheme {
  static TextTheme textTheme({
    required ColorScheme colorScheme,
  }) {
    return GoogleFonts.getTextTheme(
      "Roboto",
      TextTheme(
        titleLarge: TextStyle(
          fontSize: 60,
          color: colorScheme.primary,
        ),
        titleMedium: TextStyle(
          fontSize: 56,
          color: colorScheme.primary,
        ),
        titleSmall: TextStyle(
          fontSize: 45,
          color: colorScheme.primary,
        ),
        bodyLarge: const TextStyle(
          fontSize: 14,
        ),
        bodyMedium: const TextStyle(
          fontSize: 14,
        ),
        bodySmall: TextStyle(
          fontSize: 10,
          color: colorScheme.primary,
        ),
        labelLarge: TextStyle(
          fontSize: 16,
          color: colorScheme.secondary,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          color: colorScheme.secondary,
        ),
        labelSmall: TextStyle(
          fontSize: 14,
          color: colorScheme.onPrimary,
        ),
      ),
    );
  }
}
