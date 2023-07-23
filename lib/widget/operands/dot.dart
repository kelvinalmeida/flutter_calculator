import 'package:flutter/material.dart';

class DotButton extends StatelessWidget {
  const DotButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '.',
      style: TextStyle(
        // backgroundColor: Colors.amber,
        fontSize: 30,
      ),
    );
  }
}
