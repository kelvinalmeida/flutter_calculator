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
            height: (size.height - 30) / 2,
            alignment: Alignment.center,
            // child: const Text(
            //   'Ana Beatriz!',
            //   style: TextStyle(fontSize: 50),
            // ),
          ),
          Buttons(),
        ],
      ),
    );
  }
}
