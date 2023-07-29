import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenNotifier extends StateNotifier<List<String>> {
  ScreenNotifier() : super(['+', '2', '+', '2']);

  void addToScreen(item) {
    state = [...state, item];
  }

  void removeToScreen() {
    var lastItemRemoved = state;
    if (state.isNotEmpty) {
      lastItemRemoved.removeLast();
      print(lastItemRemoved);
      state = lastItemRemoved;
    }
  }
}

final screenProvider = StateNotifierProvider<ScreenNotifier, List<String>>(
    (ref) => ScreenNotifier());
