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
  @override
  Widget build(BuildContext context) {
    final List<String> screen = ref.watch(screenProvider);

    List<String> none = ['oi', 'rere', 'dasd'];
    print(none.removeLast());

    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Container(
            // color: Colors.amber,
            height: (size.height) / 2.65,
            margin: const EdgeInsets.only(top: 24),
            padding: const EdgeInsets.all(10),
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: screen
                  .map((calButton) => Text(
                        calButton,
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ))
                  .toList(),
            ),
          ),
          const Buttons(),
        ],
      ),
    );
  }
}
