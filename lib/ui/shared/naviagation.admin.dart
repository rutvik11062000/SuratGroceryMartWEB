import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/models/mainModel.dart';
import 'package:suratgrocerymartweb/models/navigationModel.dart';
import 'package:suratgrocerymartweb/ui/helper/spacing.dart';
import 'package:suratgrocerymartweb/ui/shared/naivgationmenu.dart';
import 'package:provider/provider.dart';

class NavigationAdmin extends StatefulWidget {
  const NavigationAdmin({Key key}) : super(key: key);

  @override
  _NavigationAdminState createState() => _NavigationAdminState();
}

class _NavigationAdminState extends State<NavigationAdmin> {
  @override
  Widget build(BuildContext context) {
    List _isHovering = [false, false, false, false, false];
    // final _isSelected = context.select((navModel) => navModel.)
    final navModel = context.watch<NavModel>();
    final nav = navModel.getNav();

    final currIdx =
        context.select<MainModel, int>((mainModel) => mainModel.index);
    final model = context.watch<MainModel>();
    InkWell buildNavMen(int index) {
      return InkWell(
        onTap: () {
          model.updateIndex(index);
          navModel.select(index);
        },
        onHover: (value) {
          navModel.update(index, value);
        },
        child: navigationMenu(nav[index].iconData, nav[index].title,
            navModel.getHover(index) || navModel.getSelected(index)),
      );
    }

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 45.0,
            // color: Colors.red,
            child: Text(
              "GROCERY SHOP",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Colors.blue,
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Container(
              // color: Colors.red,
              child: ListTile(
                leading: Container(
                  // alignment: Alignment.center,
                  child: Icon(
                    Icons.person_outline_rounded,
                    size: 40.0,
                  ),
                ),
                title: Text(
                  "Shop Name",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
                ),
                subtitle: Text(
                  "Checkout profile",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.0),
                ),
                trailing: Icon(Icons.arrow_drop_down),
              ),
              height: 45.0,
            ),
          ),
          space40,
          Expanded(
            child: ListView.builder(
              itemCount: nav.length,
              itemBuilder: (BuildContext context, int index) {
                return buildNavMen(index);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NavMenuClass {
  IconData iconData;
  String title;
  NavMenuClass({this.iconData, this.title});
}
