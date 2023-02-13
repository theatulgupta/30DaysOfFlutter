import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30; // int
    String name = "AG K Minds";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Catalogue App"),
          leading: const Icon(Icons.menu),
        ),
        body: Center(
          child: Text("Welcome to $days days of Flutter with $name"),
        ),
      ),
    );
  }
}
