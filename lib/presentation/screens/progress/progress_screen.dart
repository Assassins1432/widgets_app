import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String routeName = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.0,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Text('Linear Progress Indicator',
                    style: TextStyle(color: colors.onPrimary)),
                const SizedBox(height: 25),
                const LinearProgressIndicator(),
              ],
            ),
          ),
          const SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: colors.primary,
              borderRadius: BorderRadius.circular(8.0),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 4.0,
                  offset: Offset(2, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                Text('Circular Progress Indicator',
                    style: TextStyle(color: colors.onPrimary)),
                const SizedBox(height: 25),
                CircularProgressIndicator(
                  color: colors.secondaryContainer,
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const _ControllerProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.0,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: StreamBuilder(
        stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
          return (value * 2) / 100;
        }).takeWhile((value) => value < 100),
        builder: (context, snapshot) {
          final progressValue = snapshot.data ?? 0;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Controller of Circular and Linear Progress Indicator',
                  style: TextStyle(color: colors.secondaryContainer),
                ),
                const SizedBox(height: 25),
                CircularProgressIndicator(
                  backgroundColor: Colors.black,
                  color: colors.secondaryContainer,
                  value: progressValue,
                  strokeWidth: 2,
                ),
                const SizedBox(height: 25),
                LinearProgressIndicator(
                  value: progressValue,
                  backgroundColor: Colors.black,
                  color: colors.primaryFixed,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
