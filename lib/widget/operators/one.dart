import 'package:flutter/material.dart';

class OneButton extends StatelessWidget {
  const OneButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '1',
      style: TextStyle(
        // backgroundColor: Colors.amber,
        fontSize: 30,
      ),
    );
  }
}
