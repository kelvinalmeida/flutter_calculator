import 'package:flutter/material.dart';

class SumButton extends StatelessWidget {
  const SumButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+',
      style: TextStyle(
        // backgroundColor: Colors.amber,
        fontSize: 30,
      ),
    );
  }
}
