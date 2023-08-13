import 'package:flutter/material.dart';
import 'package:flutter_calculator/screen/calculator.dart';
import 'package:flutter_calculator/theme/dark_theme.dart';
import 'package:flutter_calculator/theme/light_theme.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      // themeMode: ThemeMode.system,
      home: const Calculator(),
    );
  }
}
