import 'package:flutter/material.dart';

class Stepper_provider extends ChangeNotifier {
  int i = 0;

  void stepper_value(int value) {
    i = value;
    notifyListeners();
  }

  void Next() {
    i++;
    notifyListeners();
  }

  void Back() {
    i--;
    notifyListeners();
  }
}
