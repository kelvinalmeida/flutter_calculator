import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/buttons.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: (size.height) / 2.65,
            margin: const EdgeInsets.only(top: 24),
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
          ),
          const Buttons(),
        ],
      ),
    );
  }
}
