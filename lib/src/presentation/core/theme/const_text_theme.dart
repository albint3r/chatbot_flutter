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
          fontSize: 30,
          color: colorScheme.secondary,
        ),
        titleMedium: TextStyle(
          fontSize: 24,
          color: colorScheme.secondary,
        ),
        titleSmall: TextStyle(
          fontSize: 20,
          color: colorScheme.secondary,
        ),
        bodyLarge: const TextStyle(
          fontSize: 16,
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
        displaySmall: TextStyle(
          fontSize: 14,
          color: colorScheme.surface,
        ),
      ),
    );
  }
}
