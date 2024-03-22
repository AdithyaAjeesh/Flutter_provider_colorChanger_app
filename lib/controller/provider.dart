import 'package:flutter/material.dart';

class ColorProvider extends ChangeNotifier {
  Color backgroundColor = Colors.blue;
  changeColor() {
    if (backgroundColor == Colors.blue) {
      backgroundColor = Colors.red;
    } else if (backgroundColor == Colors.red) {
      backgroundColor = Colors.blue;
    }
    notifyListeners();
  }
}
