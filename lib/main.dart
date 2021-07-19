import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/cart_page.dart';
import 'package:flutter_catalog/pages/home_page.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:flutter_catalog/utils/routs.dart';
import 'package:flutter_catalog/widgets/themes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: Homepage(),
      themeMode: ThemeMode.system,
      theme: MyTheme.lightTheme(context),
      // debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRouts.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRouts.homeRoute: (context) => HomePage(),
        MyRouts.loginRoute: (context) => LoginPage(),
        MyRouts.cartRoute: (context) => CartPage(),
      },
    );
  }
}
