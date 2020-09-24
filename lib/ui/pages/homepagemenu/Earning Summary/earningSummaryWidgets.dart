// space10,
import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/services/GraphService/gaugeGraph.dart';
import 'package:suratgrocerymartweb/services/GraphService/selectionLineHighlightBehaviourGraph.dart';
import 'package:suratgrocerymartweb/ui/helper/styles.dart';

Expanded earningSummaryBottomWidget() {
  return Expanded(
    flex: 7,
    child: Container(
      // color: Colors.red,
      decoration: earningSummaryBDL,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SelectionLineHighlight.withSampleData(),
      ),
    ),
  );
}

Expanded buildEarningSUmmaryTopWidget(String title, String amount) {
  return Expanded(
    flex: 1,
    child: Container(
      decoration: earningSummaryBD,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: GaugeChart.withSampleData(),
          ),
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: subtitle,
                ),
                Text(
                  amount,
                  style: numericMed,
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
