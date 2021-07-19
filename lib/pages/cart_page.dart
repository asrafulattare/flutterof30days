import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creameColor,
      appBar: AppBar(
        backgroundColor: MyTheme.creameColor,
        title: "Cart".text.make(),
      ),
    );
  }
}
