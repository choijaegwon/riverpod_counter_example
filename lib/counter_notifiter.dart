import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier(this.ref) : super(0);

  final Ref ref;

  Future increment() async {
    state++;
  }

  Future decrement() async {
    state--;
  }
}
