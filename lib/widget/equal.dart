import 'package:flutter/material.dart';

class EqualWidget extends StatelessWidget {
  const EqualWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color.fromARGB(250, 35, 148, 137),
          Color.fromARGB(250, 43, 182, 168)
        ],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      )),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            '=',
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
