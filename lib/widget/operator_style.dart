import 'package:flutter/material.dart';

class OperatorStyle extends StatelessWidget {
  const OperatorStyle({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromARGB(250, 193, 238, 234),
      ),
      child: Text(
        content,
        style: const TextStyle(
          // backgroundColor: Colors.amber,
          fontSize: 30,
        ),
      ),
    );
  }
}
