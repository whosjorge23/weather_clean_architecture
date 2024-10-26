import 'package:flutter/material.dart';

class AppTheme {
  final Brightness brightness;
  late ColorScheme colorScheme;

  AppTheme.fromBrightness({
    required this.brightness,
  }) {
    colorScheme = ColorScheme.fromSeed(
      brightness: brightness,
      seedColor: Colors.teal,
    );
  }

  ThemeData toThemeData() {
    return ThemeData.from(
      colorScheme: colorScheme,
      useMaterial3: true,
    ).copyWith(
      scaffoldBackgroundColor: Color(0xff42c6ff),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff42c6ff),
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(
            double.infinity,
            40,
          ),
        ),
      ),
      navigationBarTheme: const NavigationBarThemeData(
        elevation: 0,
      ),
    );
  }

  ThemeData toDarkThemeData() {
    return ThemeData.from(
      colorScheme: colorScheme,
      useMaterial3: true,
    ).copyWith(
      scaffoldBackgroundColor: Color(0xff00000),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xff00000),
        surfaceTintColor: Color(0xff00000),
        foregroundColor: Color(0xff42c6ff),
        elevation: 0,
      ),
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(
            double.infinity,
            40,
          ),
        ),
      ),
      navigationBarTheme: const NavigationBarThemeData(
        elevation: 0,
      ),
      textTheme: TextTheme(
        displayLarge: TextStyle(color: Color(0xff42c6ff)),
        displayMedium: TextStyle(color: Color(0xff42c6ff)),
        displaySmall: TextStyle(color: Color(0xff42c6ff)),
        headlineLarge: TextStyle(color: Color(0xff42c6ff)),
        headlineMedium: TextStyle(color: Color(0xff42c6ff)),
        headlineSmall: TextStyle(color: Color(0xff42c6ff)),
        titleLarge: TextStyle(color: Color(0xff42c6ff)),
        titleMedium: TextStyle(color: Color(0xff42c6ff)),
        titleSmall: TextStyle(color: Color(0xff42c6ff)),
        bodyLarge: TextStyle(color: Color(0xff42c6ff)),
        bodyMedium: TextStyle(color: Color(0xff42c6ff)),
        bodySmall: TextStyle(color: Color(0xff42c6ff)),
        labelLarge: TextStyle(color: Color(0xff42c6ff)),
        labelMedium: TextStyle(color: Color(0xff42c6ff)),
        labelSmall: TextStyle(color: Color(0xff42c6ff)),
      ),
    );
  }
}
