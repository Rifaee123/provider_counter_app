import 'package:flutter/material.dart';

class Numberprovider extends ChangeNotifier {
  List<int> number = [1, 2, 3, 4];

  void add() {
    int last = number.last;
    number.add(last + 1);
    notifyListeners();
  }

  void delete() {
    int last = number.last;
    number.add(last - 1);
    notifyListeners();
  }
}
