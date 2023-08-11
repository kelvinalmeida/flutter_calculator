import 'package:flutter_calculator/providers/screem.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreviousOperationNotifier extends StateNotifier<Map<String, Object>> {
  PreviousOperationNotifier(this.ref) : super({'value': '', 'posEqual': false});

  final Ref ref;

  void clear() {
    state = {'value': '', 'posEqual': false};
  }

  void showPreviousOp(String values) {
    // print(values);
    state = {'value': values, 'posEqual': false};
  }

  void posEqual() {
    state = {'value': state['value']!, 'posEqual': true};
  }

  var operators = ['+', '-', 'x', '/', '.', '%'];

  bool newOper(String newElment, String? lastElement, List<String> screen) {
    var cleanScreen = false;

    if (state['posEqual'] as bool && !operators.contains(newElment)) {
      ref.watch(screenProvider.notifier).removeToScreen();
      clear();
      state = {'value': state['value']!, 'posEqual': false};
      cleanScreen = true;
      return cleanScreen;
    } else {
      state = {'value': state['value']!, 'posEqual': false};
    }
    return cleanScreen;
  }
}

final previousOperationProvider =
    StateNotifierProvider<PreviousOperationNotifier, Map<String, Object>>(
        (ref) => PreviousOperationNotifier(ref));
