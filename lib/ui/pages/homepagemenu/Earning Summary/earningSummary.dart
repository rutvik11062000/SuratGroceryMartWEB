import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/helper/spacing.dart';
import 'package:suratgrocerymartweb/ui/helper/styles.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/Earning%20Summary/earningSummaryWidgets.dart';

Expanded buildEarningSummary() {
  return Expanded(
    flex: 7,
    child: Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Earning Summary",
            style: headingStyle,
          ),
          space10,
          Expanded(
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    // mainAxisSize: MainAxisSize.min,
                    children: [
                      buildEarningSUmmaryTopWidget("Top Order", "Rs.3,980.00"),
                      hspace10,
                      buildEarningSUmmaryTopWidget(
                          "Average Order", "Rs.247.00"),
                    ],
                  ),
                ),
                space10,
                earningSummaryBottomWidget()
              ],
            ),
          )
        ],
      ),
    ),
  );
}
