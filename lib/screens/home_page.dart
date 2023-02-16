import 'package:catalogue_app/models/catalogue.dart';
import 'package:catalogue_app/widgets/drawer.dart';
import 'package:catalogue_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../widgets/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogueModel.items[0]);
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
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(item: dummyList[index]);
            },
          ),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }

  loadData() async {
    var catalogueJson =
        await rootBundle.loadString("assets/files/catalogue.json");
    var decodedData = jsonDecode(catalogueJson);
    final productsData = decodedData["products"];
  }
}
