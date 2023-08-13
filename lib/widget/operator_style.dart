import 'package:flutter/material.dart';
import 'package:flutter_calculator/providers/screem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OperatorStyle extends ConsumerWidget {
  const OperatorStyle({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    void addScreem(String item) {
      ref.watch(screenProvider.notifier).addToScreen(item);
    }

    var size = MediaQuery.of(context).size;
    return Container(
      color: Theme.of(context).colorScheme.onBackground,
      child: SizedBox(
        height: double.infinity,
        width: size.width / 4,
        child: TextButton(
          onPressed: () {
            addScreem(content);
          },
          child: Text(
            content,
            style: TextStyle(
                fontSize: 40,
                color: Theme.of(context).colorScheme.tertiary,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
