import 'package:flutter/material.dart';

class Operators extends StatelessWidget {
  const Operators({super.key, required this.oper});

  final String oper;

  @override
  Widget build(BuildContext context) {
    return Text(oper);
  }
}
