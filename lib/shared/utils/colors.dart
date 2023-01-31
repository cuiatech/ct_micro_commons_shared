import 'package:flutter/material.dart';

ColorScheme colorScheme = const ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff007DFA),
  onPrimary: Color(0xff007DFA),
  secondary: Colors.white,
  onSecondary: Colors.white,
  tertiary: Color(0xff999999),
  onTertiary: Color(0xff999999),
  error: Color.fromARGB(255, 252, 108, 108),
  onError: Color.fromARGB(255, 252, 108, 108),
  surface: Color(0xff999999),
  onSurface: Color(0xff999999),
  background: Color(0xffffffff),
  onBackground: Color(0xffffffff),
);

ThemeData themeData = ThemeData(
  colorScheme: colorScheme,
);
