import 'package:flutter/material.dart';

import 'package:suratgrocerymartweb/ui/helper/styles.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/homepage.dart';
import 'package:suratgrocerymartweb/ui/shared/naviagation.admin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Open Sans',
            ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),

      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: toplrbd,
              width: MediaQuery.of(context).size.width * 0.20,
              child: NavigationAdmin(),
            ),
            SizedBox(
              width: 35.0,
            ),
            Expanded(
              child: HomeNavMenu(),
            ),
          ],
        ),
      ),
    );
  }
}
