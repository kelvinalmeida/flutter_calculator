import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/gridItem.dart';

class OperatorsOperands extends StatelessWidget {
  const OperatorsOperands({
    super.key,
    required this.value1,
    required this.value2,
  });

  final String value1;
  final String value2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(250, 35, 148, 137),
          Color.fromARGB(250, 43, 182, 168)
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GridItem(content: value1),
          GridItem(content: value2),
        ],
      ),
    );
  }
}
