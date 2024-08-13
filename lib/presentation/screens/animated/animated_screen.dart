import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const String routeName = 'animated_screen';
  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double widthContainer = 100;
  double heightContainer = 100;
  double borderRadiusContainer = 20;
  Color colorContainer = Colors.blue;

  void changeShapeContainer() {
    final random = Random();
    setState(() {
      widthContainer = random.nextInt(300).toDouble();
      heightContainer = random.nextInt(300).toDouble();
      borderRadiusContainer = random.nextInt(100).toDouble();
      colorContainer = Color.fromRGBO(
        random.nextInt(256), // red
        random.nextInt(256), // green
        random.nextInt(256), // blue
        1, // opacity
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Container'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          changeShapeContainer();
        },
        child: const Icon(Icons.play_arrow_rounded),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          curve: Curves.fastEaseInToSlowEaseOut,
          width: widthContainer <= 0 ? 0 : widthContainer,
          height: heightContainer <= 0 ? 0 : heightContainer,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
                borderRadiusContainer <= 0 ? 0 : borderRadiusContainer),
            color: colorContainer,
          ),
        ),
      ),
    );
  }
}
