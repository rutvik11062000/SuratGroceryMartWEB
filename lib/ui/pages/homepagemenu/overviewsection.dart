import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/helper/spacing.dart';
import 'package:suratgrocerymartweb/ui/helper/styles.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/overviewItem.dart';
import 'package:suratgrocerymartweb/ui/shared/naivgationmenu.dart';

Column overviewSection() {
  return Column(
    children: [
      Container(
        height: 50.0,
        // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Overview",
              style: headingStyle,
            ),
            RaisedButton(
              color: Colors.white,
              onPressed: () {},
              child: navigationMenu(Icons.calendar_today, "Last 30 days"),
            )
          ],
        ),
      ),
      space10,
      Container(
        height: 120.0,
        // color: Colors.red,
        child: Row(
          children: [
            overviewItem(24, "Unfullfiled Orders", Icons.shopping_bag_rounded),
            space10,
            overviewItem(810, "Product Views", Icons.search_rounded),
            space10,
            overviewItem(40, "New Messages", Icons.mail),
          ],
        ),
      )
    ],
  );
}
