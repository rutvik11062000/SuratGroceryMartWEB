import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  int _index = 0;
  int get index => _index;

  void updateIndex(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }
}
