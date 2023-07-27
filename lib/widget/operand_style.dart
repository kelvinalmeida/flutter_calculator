import 'package:flutter/material.dart';

class OperandStyle extends StatelessWidget {
  const OperandStyle({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: double.infinity,
      width: size.width / 4,
      child: TextButton(
        onPressed: () {},
        child: Text(
          content,
          style: const TextStyle(fontSize: 30, color: Colors.black),
        ),
      ),
    );
  }
}
