import 'package:flutter/material.dart';

class ZeroButton extends StatelessWidget {
  const ZeroButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '0',
      style: TextStyle(
        // backgroundColor: Colors.amber,
        fontSize: 30,
      ),
    );
  }
}
