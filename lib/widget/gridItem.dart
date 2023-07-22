import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        backgroundColor: Colors.amber,
        fontSize: 30,
      ),
    );
  }
}
