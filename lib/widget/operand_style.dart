import 'package:flutter/material.dart';
import 'package:flutter_calculator/providers/previous_operation.dart';
import 'package:flutter_calculator/providers/screem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OperandStyle extends ConsumerStatefulWidget {
  const OperandStyle({
    super.key,
    required this.content,
  });

  final String content;

  @override
  ConsumerState<OperandStyle> createState() => _OperandStyleState();
}

class _OperandStyleState extends ConsumerState<OperandStyle> {
  @override
  Widget build(BuildContext context) {
    void addScreem(String item) {
      if (item == 'C') {
        ref.watch(screenProvider.notifier).removeToScreen();
        ref.watch(previousOperationProvider.notifier).clear();
        return;
      }
      if (item == '<<') {
        ref.watch(screenProvider.notifier).removeTheLast();
        return;
      }

      ref.watch(screenProvider.notifier).addToScreen(item);
    }

    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: double.infinity,
      width: size.width / 4,
      child: TextButton(
        onPressed: () {
          addScreem(widget.content);
        },
        child: Text(
          widget.content,
          style: const TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
