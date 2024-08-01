import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.teal,
  Colors.pink,
  Colors.amber,
  Colors.brown,
  Colors.cyan,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0,
            'selectedColor must be greater than or equal to 0'),
        assert(selectedColor < colorList.length,
            'selectedColor must be less or equal than ${colorList.length - 1}');

  bool isDarkColor(Color color) {
    double darkness = 1 -
        (0.299 * color.red + 0.587 * color.green + 0.114 * color.blue) / 255;
    return darkness >= 0.5;
  }

  ThemeData getTheme() {
    final Color selectedColorValue = colorList[selectedColor];
    final bool isDark = isDarkColor(selectedColorValue);

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: selectedColorValue,
      splashColor: selectedColorValue,
      appBarTheme: AppBarTheme(
        centerTitle: false,
        color: selectedColorValue,
        titleTextStyle: TextStyle(
          color: isDark ? Colors.white : Colors.black,
          fontSize: 20,
        ),
        iconTheme: IconThemeData(
          color: isDark ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
