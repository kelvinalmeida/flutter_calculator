import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/equal.dart';
import 'package:flutter_calculator/widget/gridItem.dart';
import 'package:flutter_calculator/widget/operatorsOperands.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Expanded(
      child: GridView.count(
        childAspectRatio: size.width * 4 / size.height,
        crossAxisCount: 2,
        children: const [
          OperatorsOperands(value1: 'C', value2: '+-'),
          OperatorsOperands(value1: '%', value2: '+'),
          OperatorsOperands(value1: '1', value2: '2'),
          OperatorsOperands(value1: '3', value2: '-'),
          OperatorsOperands(value1: '4', value2: '5'),
          OperatorsOperands(value1: '6', value2: 'X'),
          OperatorsOperands(value1: '7', value2: '8'),
          OperatorsOperands(value1: '9', value2: '/'),
          OperatorsOperands(value1: '0', value2: '.'),
          EqualWidget()
        ],
      ),
    );
  }
}
