import 'package:flutter/material.dart';

class ColorService extends ChangeNotifier {
  Color _color = Colors.red;

  Color get color => _color;

  set color(Color value) {
    _color = value;
    notifyListeners();
  }
}
