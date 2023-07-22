import 'package:flutter/material.dart';
import 'package:flutter_calculator/screen/calculator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 193, 238, 234)),
        // scaffoldBackgroundColor: ,
      ),
      home: const Calculator(),
    );
  }
}
