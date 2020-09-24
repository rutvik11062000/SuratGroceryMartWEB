import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/helper/spacing.dart';
import 'package:suratgrocerymartweb/ui/helper/styles.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/CurrentBalanceSection/currentBalanceSectionItem.dart';

class Currentbalance extends StatelessWidget {
  const Currentbalance({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Current Balance",
                style: headingStyle,
              ),
              space10,
              Expanded(
                child: Column(
                  children: [
                    buildCurrentBalanceSectionItem(
                      "Earinings this month",
                      "Rs.6586.40",
                      "25%",
                      Icons.arrow_circle_up_rounded,
                      Colors.green,
                    ),
                    space10,
                    buildCurrentBalanceSectionItem(
                      "Total order this month",
                      "24",
                      "11%",
                      Icons.arrow_circle_down_rounded,
                      Colors.red,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
