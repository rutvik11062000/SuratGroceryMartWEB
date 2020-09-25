import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/helper/styles.dart';

Padding navigationMenu(IconData iconData, String title, bool isHovering) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      height: 45.0,
      decoration: isHovering ? selectedNavMenuDB : unSelectedNavMenuDB,
      alignment: Alignment.center,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Icon(
              iconData,
              size: 20.0,
              color: isHovering ? Colors.blue[900] : Colors.blueGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 12.0,
                  color: isHovering ? Colors.blue[900] : Colors.blueGrey),
            ),
          ),
        ],
      ),
    ),
  );
}
