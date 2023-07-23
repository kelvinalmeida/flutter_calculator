import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/equal.dart';
import 'package:flutter_calculator/widget/operands/changeSing.dart';
import 'package:flutter_calculator/widget/operands/clearAll.dart';
import 'package:flutter_calculator/widget/operands/div.dart';
import 'package:flutter_calculator/widget/operands/dot.dart';
import 'package:flutter_calculator/widget/operands/mines.dart';
import 'package:flutter_calculator/widget/operands/mult.dart';
import 'package:flutter_calculator/widget/operands/percent.dart';
import 'package:flutter_calculator/widget/operands/sum.dart';
import 'package:flutter_calculator/widget/operators/Zero.dart';
import 'package:flutter_calculator/widget/operators/eight.dart';
import 'package:flutter_calculator/widget/operators/five.dart';
import 'package:flutter_calculator/widget/operators/four.dart';
import 'package:flutter_calculator/widget/operators/nine.dart';
import 'package:flutter_calculator/widget/operators/one.dart';
import 'package:flutter_calculator/widget/operators/serven.dart';
import 'package:flutter_calculator/widget/operators/six.dart';
import 'package:flutter_calculator/widget/operators/three.dart';
import 'package:flutter_calculator/widget/operators/two.dart';
import 'package:flutter_calculator/widget/operators_operands.dart';

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
            // OperatorsOperands(value1: 'C', value2: '+-'),
            // OperatorsOperands(value1: '%', value2: '+'),
            // OperatorsOperands(OneButton(), value2: '2'),
            // OperatorsOperands(value1: '3', value2: '-'),
            // OperatorsOperands(value1: '4', value2: '5'),
            // OperatorsOperands(value1: '6', value2: 'X'),
            // OperatorsOperands(value1: '7', value2: '8'),
            // OperatorsOperands(value1: '9', value2: '/'),
            // OperatorsOperands(value1: '0', value2: '.'),
            OperatorsOperands(
                value1: ClearAllButton(), value2: ChangeSingButton()),
            OperatorsOperands(value1: PercentButton(), value2: SumButton()),
            OperatorsOperands(value1: OneButton(), value2: TwoButton()),
            OperatorsOperands(value1: ThreeButton(), value2: MinesButton()),
            OperatorsOperands(value1: FourButton(), value2: FiveButton()),
            OperatorsOperands(value1: SixButton(), value2: MultButton()),
            OperatorsOperands(value1: ServenButton(), value2: EightButton()),
            OperatorsOperands(value1: NineButton(), value2: DivButton()),
            OperatorsOperands(value1: ZeroButton(), value2: DotButton()),
            EqualWidget()
          ],
        ),
      ),
    );
  }
}
