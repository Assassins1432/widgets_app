import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String routeName = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('ElevatedButton',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('Elevated Button'),
                  ),
                  const ElevatedButton(
                    onPressed: null,
                    child: Text('Elevated Button Disabled'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.accessibility_sharp),
                    label: const Text('Elevated Button with Icon'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('FilledButton',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FilledButton(
                    onPressed: () {},
                    child: const Text('Filled Button'),
                  ),
                  const FilledButton(
                    onPressed: null,
                    child: Text('Filled Button Disabled'),
                  ),
                  FilledButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.account_circle_sharp),
                    label: const Text('Filled Button with Icon'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('OutlinedButton',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Outlined Button'),
                  ),
                  const OutlinedButton(
                    onPressed: null,
                    child: Text('Outlined Button Disabled'),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.add_alert_sharp),
                    label: const Text('Outlined Button with Icon'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('TextButton',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Text Button'),
                  ),
                  const TextButton(
                    onPressed: null,
                    child: Text('Text Button Disabled'),
                  ),
                  TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.abc_sharp),
                    label: const Text('Text Button with Icon'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('IconButton',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.zoom_in_map_rounded),
                  ),
                  const IconButton(
                    onPressed: null,
                    icon: Icon(Icons.zoom_in_map_rounded),
                  ),
                  IconButton.filled(
                    onPressed: () {},
                    icon: const Icon(Icons.zoom_in_map_rounded),
                  ),
                  IconButton.filledTonal(
                    onPressed: () {},
                    icon: const Icon(Icons.zoom_in_map_rounded),
                  ),
                  IconButton.outlined(
                    onPressed: () {},
                    icon: const Icon(Icons.zoom_in_map_rounded),
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(colors.primary),
                      foregroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text('CustomButton',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const Row(
              children: [
                CustomButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Text(
              'Custom Button',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
