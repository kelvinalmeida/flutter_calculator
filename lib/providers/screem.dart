import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenNotifier extends StateNotifier<List<String>> {
  ScreenNotifier() : super([]);

  void addToScreen(item) {
    // if (state.length > 15) {
    //   return;
    // }

    var lastElement = state.isEmpty ? null : state[state.length - 1];
    if ((lastElement == '+' ||
            lastElement == '-' ||
            lastElement == 'x' ||
            lastElement == '/') &&
        (item == '+' || item == '-' || item == 'x' || item == '/')) {
      return;
    }

    state = [...state, item];
  }

  void removeToScreen() {
    if (state.isNotEmpty) {
      // in the for loop I'm going to the penultimate item (state.length - 1).
      // state = [for (int i = 0; i < state.length - 1; i++) state[i]];
      state = [];
    }
  }
}

final screenProvider = StateNotifierProvider<ScreenNotifier, List<String>>(
    (ref) => ScreenNotifier());
