import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class addToCart extends StatefulWidget {
  final catalog;

  const addToCart({
    Key? key,
    this.catalog,
  }) : super(key: key);

  @override
  _addToCartState createState() => _addToCartState();
}

class _addToCartState extends State<addToCart> {
  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog) ?? false;
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
          shape: MaterialStateProperty.all(StadiumBorder())),
      onPressed: () {
        if (!isInCart) {
          final _catalog = CatalogModel();
          isInCart = isInCart.toggle();

          _cart.catalog = _catalog;
          _cart.add(widget.catalog);

          setState(() {});
        }
      },
      child: isInCart ? Icon(Icons.done) : Icon(CupertinoIcons.cart_badge_plus),
    );
  }
}
