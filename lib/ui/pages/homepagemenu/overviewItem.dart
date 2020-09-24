import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/helper/styles.dart';

Expanded overviewItem(int no, String title, IconData iconData) {
  return Expanded(
    flex: 1,
    child: Padding(
      padding: const EdgeInsets.only(
        // left: 20.0,
        top: 5.0,
        bottom: 5.0,
        right: 20.0,
      ),
      child: Container(
        decoration: overview,
        // color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      no.toString(),
                      style: numericBig,
                    ),
                    Text(title, style: subtitle),
                  ],
                ),
              ),
              CircleAvatar(
                minRadius: 35,
                child: Center(
                  child: Icon(
                    iconData,
                    size: 40,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
