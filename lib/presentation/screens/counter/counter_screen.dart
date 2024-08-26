import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String routeName = 'count_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider); // Lee el valor del contador
    final isDarkMode = ref.watch(themeProvider); // Lee el valor del tema

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Example'),
        actions: [
          IconButton(
            icon: isDarkMode ? const Icon(Icons.light_mode_outlined) : const Icon(Icons.dark_mode_outlined),
            onPressed: () {
              ref.read(themeProvider.notifier).toggle();
            },
          ),
        ],
      ),
      body: Center(
        child: Text('Counter: $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(counterProvider.notifier).increment(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
