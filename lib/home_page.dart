import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30; // int

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Catalogue App"),
        ),
        body: Center(
          child: Container(
            child: Text("Welcome to $days days of Flutter"),
          ),
        ),
      ),
    );
  }
}
