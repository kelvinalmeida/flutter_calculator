import 'package:flutter/material.dart';
import 'package:flutter_calculator/providers/previous_operation.dart';
import 'package:flutter_calculator/providers/screem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ScreenCalculator extends ConsumerStatefulWidget {
  const ScreenCalculator({super.key});

  @override
  ConsumerState<ScreenCalculator> createState() {
    return _ScreenCalculatorState();
  }
}

class _ScreenCalculatorState extends ConsumerState<ScreenCalculator> {
  var toggleDark = true;

  @override
  Widget build(BuildContext context) {
    final List<String> screen = ref.watch(screenProvider);
    final Map<String, Object> previosOp = ref.watch(previousOperationProvider);
    var size = MediaQuery.of(context).size;

    return Container(
      height: (size.height) / 2.65,
      // color: Theme.of(context).colorScheme.background,
      color: Theme.of(context).colorScheme.background,
      margin: const EdgeInsets.only(top: 24),
      padding: const EdgeInsets.all(10),
      alignment: Alignment.bottomRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  toggleDark = !toggleDark;
                  // Material.of(context).dar
                });
              },
              icon: toggleDark
                  ? const Icon(
                      Icons.sunny,
                      color: Color.fromARGB(255, 214, 200, 68),
                    )
                  : const Icon(Icons.sticky_note_2,
                      color: Color.fromARGB(255, 100, 100, 96)),
            ),
            const Spacer(),
            Row(
              children: [
                Text(
                    previosOp['value']
                        as String, // Show the previous operations
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
