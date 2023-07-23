import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_calculator/widget/equal.dart';
import 'package:flutter_calculator/widget/gridItem.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Expanded(
      child: GridView.count(
        padding: const EdgeInsets.all(10),
        childAspectRatio: size.width * 4 / size.height,
        crossAxisCount: 2,
        children: [
          Container(
            color: Colors.cyan,
            width: 50,
            height: 50,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GridItem(content: '1'),
                GridItem(content: '2'),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridItem(content: '3'),
              GridItem(content: '-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridItem(content: '4'),
              GridItem(content: '5'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridItem(content: '6'),
              GridItem(content: 'X'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridItem(content: '7'),
              GridItem(content: '8'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridItem(content: '9'),
              GridItem(content: '/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GridItem(content: '0'),
              GridItem(content: '.'),
            ],
          ),
          const EqualWidget()
        ],
      ),
    );
  }
}
