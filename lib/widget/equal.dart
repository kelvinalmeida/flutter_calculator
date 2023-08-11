import 'package:flutter/material.dart';
import 'package:flutter_calculator/providers/previous_operation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_calculator/providers/screem.dart';

class EqualWidget extends ConsumerWidget {
  const EqualWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var size = MediaQuery.of(context).size;

    void result() {
      ref.watch(screenProvider.notifier).result();
      ref.watch(previousOperationProvider.notifier).posEqual();
    }

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
          SizedBox(
            height: double.infinity,
            width: size.width / 2,
            child: TextButton(
              onPressed: result,
              child: const Text(
                '=',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
