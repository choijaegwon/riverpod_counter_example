import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_example/counter_notifiter.dart';

final counterStateProivder = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier(ref);
});
