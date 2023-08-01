import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/buttons.dart';
import 'package:flutter_calculator/widget/screen_calculator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Calculator extends ConsumerStatefulWidget {
  const Calculator({super.key});

  @override
  ConsumerState<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends ConsumerState<Calculator> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          ScreenCalculator(),
          Buttons(),
        ],
      ),
    );
  }
}
