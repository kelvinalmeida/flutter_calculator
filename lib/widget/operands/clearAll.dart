import 'package:flutter/material.dart';

class ClearAllButton extends StatelessWidget {
  const ClearAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'C',
      style: TextStyle(
        // backgroundColor: Colors.amber,
        fontSize: 30,
      ),
    );
  }
}
