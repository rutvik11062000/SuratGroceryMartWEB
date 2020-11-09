import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suratgrocerymartweb/models/productModel.dart';

class Demo extends StatelessWidget {
  const Demo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<ProductMdoel>();
    return Container(
      child: GestureDetector(
        onTap: () {
          model.updatePageRouteName('main');
          // Navigator.pop(context);
        },
        child: Text("ss"),
      ),
    );
  }
}
