import 'package:catalogue_app/models/catalogue.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      // elevation: 0.0,
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(
          item.image,
        ),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text(
          "\$${item.price.toString()}",
          style: const TextStyle(
              color: Colors.deepPurple, fontWeight: FontWeight.bold),
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}
