import 'package:flutter/material.dart';

class ChangeSingButton extends StatelessWidget {
  const ChangeSingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '+/-',
      style: TextStyle(
        fontSize: 30,
      ),
    );
  }
}
