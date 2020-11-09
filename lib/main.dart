import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:suratgrocerymartweb/models/mainModel.dart';
import 'package:suratgrocerymartweb/models/navigationModel.dart';
import 'package:suratgrocerymartweb/models/productModel.dart';
import 'package:suratgrocerymartweb/services/firebaseSerices.dart';

import 'package:suratgrocerymartweb/ui/helper/styles.dart';
import 'package:suratgrocerymartweb/ui/pages/Analytics/analyticsPage.dart';
import 'package:suratgrocerymartweb/ui/pages/Customers/customersPage.dart';
import 'package:suratgrocerymartweb/ui/pages/Orders/ordersPage.dart';
import 'package:suratgrocerymartweb/ui/pages/Products/productsPage.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/CurrentBalanceSection/currentBalanceSection.dart';
import 'package:suratgrocerymartweb/ui/pages/homepagemenu/homepage.dart';
import 'package:suratgrocerymartweb/ui/shared/navRail.dart';
import 'package:suratgrocerymartweb/ui/shared/naviagation.admin.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // create: (_) => MainModel(),
      providers: [
        ChangeNotifierProvider<MainModel>(create: (_) => MainModel()),
        ChangeNotifierProvider<NavModel>(create: (_) => NavModel()),
        ChangeNotifierProvider<DBModel>(create: (_) => DBModel()),
        ChangeNotifierProvider<ProductMdoel>(create: (_) => ProductMdoel()),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dbmodel = context.watch<DBModel>();
    final width = MediaQuery.of(context).size.width;
    final currIdx =
        context.select<MainModel, int>((mainModel) => mainModel.index);
    return Scaffold(
      drawer: Drawer(),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: toplrbd,
              width: width < 1150 ? width * 0.08 : width * 0.2,
              // width: width * .08,

              // child: NavigationAdmin(),
              child: width < 1150 ? NavRail() : NavigationAdmin(),
            ),
            SizedBox(
              width: 35.0,
            ),
            Expanded(
              child: PageTransitionSwitcher(
                // reverse: model.reverse,
                duration: Duration(milliseconds: 300),
                transitionBuilder: (Widget child,
                    Animation<double> primaryAnimation,
                    Animation<double> secondaryAnimation) {
                  return SharedAxisTransition(
                    child: child,
                    animation: primaryAnimation,
                    secondaryAnimation: secondaryAnimation,
                    transitionType: SharedAxisTransitionType.horizontal,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: getPageView(currIdx),
                ),
                // child: getWidget(currIdx),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getPageView(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return HomeNavMenu();
        break;
      case 1:
        return OrdersPage();
      case 2:
        return CustomersPage();
      case 3:
        return ProductsPage();
      case 4:
        return AnalyticsPage();
      default:
        return HomeNavMenu();
    }
  }
}
