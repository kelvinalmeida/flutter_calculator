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
}

final previousOperationProvider =
    StateNotifierProvider<PreviousOperationNotifier, String>(
        (ref) => PreviousOperationNotifier(ref));
