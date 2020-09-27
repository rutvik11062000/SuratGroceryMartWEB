import 'package:flutter/cupertino.dart';

class NavModel extends ChangeNotifier {
  List _isHovering = [false, false, false, false, false];
  List _isSelected = [true, false, false, false, false];

  bool getHover(int index) {
    return _isHovering[index];
  }

  bool getSelected(int index) {
    return _isSelected[index];
  }

  // void updateIndex(int newIndex) {
  //   _index = newIndex;
  //   notifyListeners();
  // }
  void update(int index, bool value) {
    _isHovering[index] = value;
    notifyListeners();
  }

  void select(int index) {
    for (int i = 0; i < 5; i++) {
      _isSelected[i] = false;
    }
    _isSelected[index] = true;
    notifyListeners();
  }
}
