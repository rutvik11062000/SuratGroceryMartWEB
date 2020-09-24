import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/helper/spacing.dart';
import 'package:suratgrocerymartweb/ui/shared/naivgationmenu.dart';

class NavigationAdmin extends StatelessWidget {
  const NavigationAdmin({Key key}) : super(key: key);

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
          navigationMenu(Icons.home, "Home"),
          space10,
          navigationMenu(Icons.shopping_bag, "Orders"),
          space10,
          navigationMenu(Icons.people, "Customers"),
          space10,
          navigationMenu(CupertinoIcons.money_dollar_circle, "Products"),
          space10,
          navigationMenu(Icons.stacked_line_chart_outlined, "Analytics"),
          space10,
        ],
      ),
    );
  }
}
