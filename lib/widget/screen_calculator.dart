import 'package:flutter/material.dart';
import 'package:flutter_calculator/providers/screem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenCalculator extends ConsumerWidget {
  const ScreenCalculator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> screen = ref.watch(screenProvider);
    var size = MediaQuery.of(context).size;

    return Container(
      // color: Colors.amber,
      height: (size.height) / 2.65,
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.bottomRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: screen
              .map((calButton) => Text(
                    calButton,
                    style: GoogleFonts.roboto(
                      fontSize: 60,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 3,
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
