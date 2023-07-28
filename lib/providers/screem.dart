import 'package:flutter_riverpod/flutter_riverpod.dart';

class ScreenNotifier extends StateNotifier<List> {
  ScreenNotifier() : super([]);

  void addToScreen(item) {
    state = [...state, item];
  }
}

final screenProvider =
    StateNotifierProvider<ScreenNotifier, List>((ref) => ScreenNotifier());
