import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suratgrocerymartweb/models/mainModel.dart';
import 'package:suratgrocerymartweb/models/navigationModel.dart';

class NavRail extends StatelessWidget {
  const NavRail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<MainModel>();
    final _selectedidx = model.index;
    final _navModel = context.watch<NavModel>();
    // final _nav = _navModel.getNav();

    return NavigationRail(
      labelType: NavigationRailLabelType.selected,
      destinations: _navModel.getDestinations(),
      selectedIndex: _selectedidx,
      onDestinationSelected: (int curridx) {
        model.updateIndex(curridx);
      },
    );
  }
}
