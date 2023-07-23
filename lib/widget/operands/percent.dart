import 'package:flutter/material.dart';

class PercentButton extends StatelessWidget {
  const PercentButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '%',
      style: TextStyle(
        // backgroundColor: Colors.amber,
        fontSize: 30,
      ),
    );
  }
}
