import 'package:flutter/material.dart';

class ExampleOneProvider with ChangeNotifier {
  double _val = 0.5;

  double get val => _val;

  void SetValue(double value) {
    _val = value;
    notifyListeners();
  }
}
