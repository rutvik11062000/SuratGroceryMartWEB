import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suratgrocerymartweb/models/Porduct%20Model/AddModelProvider.dart';
import 'package:suratgrocerymartweb/ui/pages/Products/addProductPage.dart';
import 'package:suratgrocerymartweb/ui/pages/Products/editProductPage.dart';
import 'package:suratgrocerymartweb/ui/pages/Products/viewProuctPage.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.add_box_outlined)),
                Tab(icon: Icon(Icons.edit)),
                Tab(icon: Icon(Icons.view_agenda_rounded))
              ],
            ),
            title: Text('Product Page'),
          ),
          body: TabBarView(
            children: [
              ChangeNotifierProvider(
                create: (_) => AddModelProvider(),
                // create: (_) => ChangeNotifierProvider<AddModelProvider>(create: AddModelProvider(),),
                child: AddProduct(),
              ),
              EditProductPage(),
              ViewProductPage(),
            ],
          ),
        ),
      ),
    );
  }
}
