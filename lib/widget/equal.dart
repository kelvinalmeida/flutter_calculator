import 'package:flutter/material.dart';

class EqualWidget extends StatelessWidget {
  const EqualWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: double.infinity,
            width: size.width / 2,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                '=',
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
