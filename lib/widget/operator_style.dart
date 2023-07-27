import 'package:flutter/material.dart';

class OperatorStyle extends StatelessWidget {
  const OperatorStyle({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(250, 193, 238, 234),
      child: SizedBox(
        height: double.infinity,
        width: size.width / 4,
        child: TextButton(
          onPressed: () {},
          child: Text(
            content,
            style: const TextStyle(
                fontSize: 40,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
