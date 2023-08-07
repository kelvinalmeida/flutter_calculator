import 'package:flutter/material.dart';
import 'package:flutter_calculator/providers/previous_operation.dart';
import 'package:flutter_calculator/providers/screem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenCalculator extends ConsumerWidget {
  const ScreenCalculator({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<String> screen = ref.watch(screenProvider);
    final String previosOp = ref.watch(previousOperationProvider);
    var size = MediaQuery.of(context).size;

    return Container(
      height: (size.height) / 2.65,
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.bottomRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(previosOp, // Show the previous operations
                    style: GoogleFonts.roboto(
                        fontSize: 30,
                        fontWeight: FontWeight.w400,
                        // letterSpacing: 3,
                        color: Colors.blueAccent)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: screen
                  .map((calButton) => Text(
                        calButton, // Show the operations
                        style: GoogleFonts.roboto(
                          fontSize: 60,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 3,
                        ),
                      ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
