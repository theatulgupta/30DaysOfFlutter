import 'package:catalogue_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.creamColor,
      appBar: AppBar(
        title: "Cart".text.bold.color(MyTheme.darkBluish).make(),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}
