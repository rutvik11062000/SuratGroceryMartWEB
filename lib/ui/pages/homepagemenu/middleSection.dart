import 'package:flutter/material.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/CurrentBalanceSection/currentBalanceSection.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/Earning%20Summary/earningSummary.dart';

class MiddleSection extends StatelessWidget {
  const MiddleSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      // color: Colors.red,
      child: Row(
        children: [Currentbalance(), buildEarningSummary()],
      ),
    );
  }
}
