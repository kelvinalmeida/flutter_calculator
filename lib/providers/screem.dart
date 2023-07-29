import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenNotifier extends StateNotifier<List<String>> {
  ScreenNotifier() : super(['+', '2', '+', '2']);

  void addToScreen(item) {
    if (state.length < 20) state = [...state, item];
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
