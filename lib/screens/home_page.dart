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
          child:
              (CatalogueModel.items != null && CatalogueModel.items!.isNotEmpty)
                  ? ListView.builder(
                      itemCount: CatalogueModel.items!.length,
                      itemBuilder: (context, index) =>
                          ItemWidget(item: CatalogueModel.items![index]),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    ),
        ),
        drawer: const MyDrawer(),
      ),
    );
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    var catalogueJson =
        await rootBundle.loadString("assets/files/catalogue.json");
    var decodedData = jsonDecode(catalogueJson);
    final productsData = decodedData["products"];
    CatalogueModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }
}
