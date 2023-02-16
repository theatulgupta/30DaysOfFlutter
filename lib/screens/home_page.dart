import 'package:catalogue_app/widgets/drawer.dart';
import 'package:flutter/material.dart';

import '../widgets/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int days = 30; // int
    String name = "AG K Minds";

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Catalogue App",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text("Welcome to $days days of Flutter with $name"),
          ),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }
}
