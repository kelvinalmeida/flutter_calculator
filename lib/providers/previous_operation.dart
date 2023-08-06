import 'package:flutter_calculator/providers/screem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreviousOperationNotifier extends StateNotifier<String> {
  PreviousOperationNotifier(this.ref) : super('');

  final Ref ref;

  void clear() {
    state = '';
  }

  void showPreviousOp(String values) {
    // print(values);
    state = values;
  }

  var operators = ['+', '-', 'x', '/', '.', '%'];

  void newOper(String newElment, String? lastElement) {
    if (state.isNotEmpty &&
        !operators.contains(newElment) &&
        !operators.contains(lastElement)) {
      ref.watch(screenProvider.notifier).removeToScreen();
      // clear();
      ref.watch(screenProvider.notifier).addToScreen(newElment);
    }
  }
}

final previousOperationProvider =
    StateNotifierProvider<PreviousOperationNotifier, String>(
        (ref) => PreviousOperationNotifier(ref));
