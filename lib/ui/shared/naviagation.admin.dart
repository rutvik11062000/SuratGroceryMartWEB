import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/helper/spacing.dart';
import 'package:suratgrocerymartweb/ui/shared/naivgationmenu.dart';

class NavigationAdmin extends StatefulWidget {
  const NavigationAdmin({Key key}) : super(key: key);

  @override
  _NavigationAdminState createState() => _NavigationAdminState();
}

class _NavigationAdminState extends State<NavigationAdmin> {
  List _isHovering = [false, false, false, false, false];
  List _isSelected = [true, false, false, false];
  @override
  Widget build(BuildContext context) {
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
          InkWell(
            onTap: () {
              // setState(() {
              //   _isHovering[0] = !_isHovering[0];
              // });
            },
            onHover: (value) {
              setState(() {
                _isHovering[0] = value;
              });
            },
            child: navigationMenu(Icons.home, "Home", _isHovering[0]),
          ),
          space10,
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHovering[1] = value;
              });
            },
            child: navigationMenu(Icons.shopping_bag, "Orders", _isHovering[1]),
          ),
          space10,
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHovering[2] = value;
              });
              // print("hovered");
            },
            child: navigationMenu(Icons.people, "Customers", _isHovering[2]),
          ),
          space10,
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHovering[3] = value;
              });
            },
            child: navigationMenu(
                CupertinoIcons.money_dollar_circle, "Products", _isHovering[3]),
          ),
          space10,
          InkWell(
            onTap: () {},
            onHover: (value) {
              setState(() {
                _isHovering[4] = value;
              });
            },
            child: navigationMenu(
                Icons.stacked_line_chart_outlined, "Analytics", _isHovering[4]),
          ),
          space10,
        ],
      ),
    );
  }
}
