import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:function_tree/function_tree.dart';
import 'package:flutter_calculator/providers/previous_operation.dart';

class ScreenNotifier extends StateNotifier<List<String>> {
  ScreenNotifier(this.ref) : super([]);

  final Ref ref;
  var operators = ['+', '-', 'x', '/', '.'];

  void addToScreen(item) {
    var lastElement = state.isEmpty ? null : state[state.length - 1];

    if (operators.contains(lastElement) && operators.contains(item)) {
      List<String> newArray = state;
      newArray.removeLast();
      state = [...newArray, item];
      return;
    }
    if (state.isEmpty && operators.contains(item)) return;
    if (item == '+/-') return;

    state = [...state, item];
  }

  void removeToScreen() {
    if (state.isNotEmpty) {
      // in the for loop I'm going to the penultimate item (state.length - 1).
      // state = [for (int i = 0; i < state.length - 1; i++) state[i]];
      state = [];
    }
  }

  void result() {
    var lastElement = state[state.length - 1];

    if (operators.contains(lastElement)) return;

    var value = '';
    for (var item in state) {
      if (item == 'x') item = '*';
      value += item;
    }

    state = [value.interpret().toStringAsFixed(2)];

    ref.watch(previousOperationProvider.notifier).showPreviousOp(value);
  }
}

final screenProvider = StateNotifierProvider<ScreenNotifier, List<String>>(
    (ref) => ScreenNotifier(ref));
