import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/grid_Item.dart';

class OperatorsOperands extends StatelessWidget {
  const OperatorsOperands({
    super.key,
    required this.value1,
    required this.value2,
  });

  final Widget value1;
  final Widget value2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        value1,
        value2,
      ],
    );
  }
}
