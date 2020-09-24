import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container navigationMenu(IconData iconData, String title) {
  return Container(
    // color: Colors.red,
    height: 45.0,
    alignment: Alignment.center,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Icon(
            iconData,
            size: 20.0,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10.0),
          ),
        ),
      ],
    ),
  );
}
