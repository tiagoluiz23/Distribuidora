import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.black,
    colorScheme: const ColorScheme.dark(),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Colors.amber,
      foregroundColor: Colors.white,
      hoverColor: Colors.amber,
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Colors.amber
    )
  );
}