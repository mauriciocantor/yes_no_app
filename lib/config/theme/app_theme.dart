import 'package:flutter/material.dart';

const Color _customColor = Color(0xFFef3829);
const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
  Colors.cyan,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert((selectedColor >= 0 ),'Colors must be bettwen 0 an ${(_colorTheme.length -1)}'),
        assert((selectedColor <= (_colorTheme.length-1) ),'Colors must be bettwen 0 an ${(_colorTheme.length-1)}')
       ;

  ThemeData theme() {
    return ThemeData(colorSchemeSeed: _colorTheme[selectedColor]);
  }
}
