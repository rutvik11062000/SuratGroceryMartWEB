import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/services/GraphService/simpleGrap.dart';
import 'package:suratgrocerymartweb/ui/helper/styles.dart';

Expanded buildCurrentBalanceSectionItem(String title, String no,
    String percentage, IconData iconData, Color perColor) {
  return Expanded(
    flex: 1,
    child: Container(
      // color: Colors.red,
      decoration: currentBalanceBD,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: subtitle,
            ),
            // space10,
            Row(
              // crossAxisAlignment:
              //     CrossAxisAlignment.end,
              children: [
                Text(
                  no,
                  style: numericMed,
                ),
                // space40,
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  percentage,
                  style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Icon(
                  iconData,
                  size: 12.0,
                  color: perColor,
                ),
              ],
            ),
            Expanded(
              child: SimpleLineChart.withSampleData(),
            )
          ],
        ),
      ),
    ),
  );
}
