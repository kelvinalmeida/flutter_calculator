import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/equal.dart';
import 'package:flutter_calculator/widget/operand_style.dart';
import 'package:flutter_calculator/widget/operator_style.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 216, 216, 216),
            Colors.white,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: GridView.count(
          padding: const EdgeInsets.all(0),
          childAspectRatio: size.width * 4.23 / size.height,
          crossAxisCount: 2,
          children: const [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperandStyle(content: 'C'),
                OperandStyle(content: '<<')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperandStyle(content: '%'),
                OperatorStyle(content: '+')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperandStyle(content: '1'),
                OperandStyle(content: '2')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperandStyle(content: '3'),
                OperatorStyle(content: '-')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperandStyle(content: '4'),
                OperandStyle(content: '5')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperandStyle(content: '6'),
                OperatorStyle(content: 'x')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperandStyle(content: '7'),
                OperandStyle(content: '8')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperandStyle(content: '9'),
                OperatorStyle(content: '/')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OperandStyle(content: '0'),
                OperandStyle(content: '.')
              ],
            ),
            EqualWidget()
          ],
        ),
      ),
    );
  }
}
