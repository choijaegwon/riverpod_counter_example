import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_example/providers.dart';

void main() {
  runApp(const ProviderScope(child: RiverpodCounterApp()));
}

class RiverpodCounterApp extends StatelessWidget {
  const RiverpodCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: CounterScreen());
  }
}

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterStateProivder);
    return Scaffold(
      appBar: AppBar(title: const Text('Counter example')),
      body: Center(
        child: Text('$count', style: const TextStyle(fontSize: 32)),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
              key: const Key('counterView_increment_floatingActionButton'),
              child: const Icon(Icons.add),
              onPressed: () =>
                  ref.read(counterStateProivder.notifier).increment()),
          const SizedBox(height: 8),
          FloatingActionButton(
              key: const Key('counterView_decrement_floatingActionButton'),
              child: const Icon(Icons.remove),
              onPressed: () =>
                  ref.read(counterStateProivder.notifier).decrement()),
        ],
      ),
    );
  }
}
