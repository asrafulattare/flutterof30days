import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

class ItemWedget extends StatelessWidget {
  final Item item;

  const ItemWedget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text(
            "\$${item.price}",
            textScaleFactor: 1.5,
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            print("${item.name} Pressed");
          },
        ),
      ),
    );
  }
}
