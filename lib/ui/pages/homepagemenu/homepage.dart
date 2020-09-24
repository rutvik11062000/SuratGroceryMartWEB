import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/helper/spacing.dart';
import 'package:suratgrocerymartweb/ui/helper/styles.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/middleSection.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/overviewsection.dart';

class HomeNavMenu extends StatelessWidget {
  const HomeNavMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        decoration: homeDec,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            overviewSection(),
            space10,
            MiddleSection(),
          ],
        ),
      ),
    );
  }
}
