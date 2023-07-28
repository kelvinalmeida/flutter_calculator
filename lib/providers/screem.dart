import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';

class ScreenNotifier extends StateNotifier<List<String>> {
  ScreenNotifier() : super(['+', '2', '+', '2']);

  void addToScreen(item) {
    state = [...state, item];
  }

  void removeToScreen(String item) {
    var screenCopy = state;
  }
}

final screenProvider = StateNotifierProvider<ScreenNotifier, List<String>>(
    (ref) => ScreenNotifier());
