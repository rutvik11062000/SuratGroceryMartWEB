import 'package:flutter/cupertino.dart';

class ProductMdoel extends ChangeNotifier {
  String _routeName = "main";
  String get routeName => _routeName;

  void updatePageRouteName(String newName) {
    _routeName = newName;
    notifyListeners();
  }
}
