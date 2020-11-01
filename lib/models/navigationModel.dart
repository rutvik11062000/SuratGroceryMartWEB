import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/shared/naviagation.admin.dart';

class NavModel extends ChangeNotifier {
  List _isHovering = [false, false, false, false, false];
  List _isSelected = [true, false, false, false, false];

  List<NavMenuClass> _nav = [
    NavMenuClass(iconData: Icons.home, title: "Home"),
    NavMenuClass(iconData: Icons.shopping_bag, title: "Orders"),
    NavMenuClass(iconData: Icons.people, title: "Customers"),
    NavMenuClass(
        iconData: CupertinoIcons.money_dollar_circle, title: "Products"),
    NavMenuClass(
        iconData: Icons.stacked_line_chart_outlined, title: "Analytics")
  ];

  List<NavigationRailDestination> getDestinations() {
    List<NavigationRailDestination> res = [];

    _nav.forEach((element) {
      res.add(NavigationRailDestination(
          icon: Icon(element.iconData), label: Text(element.title)));
    });
    return res;
  }

  List<NavMenuClass> getNav() {
    return _nav;
  }

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
