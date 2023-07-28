import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/buttons.dart';
import 'package:flutter_calculator/providers/screem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Calculator extends ConsumerStatefulWidget {
  const Calculator({super.key});

  @override
  ConsumerState<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends ConsumerState<Calculator> {
  List<String> none = ['oi', 'rere', 'dasd'];

  @override
  Widget build(BuildContext context) {
    final List<String> screen = ref.watch(screenProvider);
    print(screen);

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: (size.height) / 2.65,
            margin: const EdgeInsets.only(top: 24),
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            child: Row(
              children: screen.map((calButton) => Text(calButton)).toList(),
            ),
          ),
          const Buttons(),
        ],
      ),
    );
  }
}
