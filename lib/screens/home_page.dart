import 'package:catalogue_app/models/catalogue.dart';
import 'package:catalogue_app/widgets/drawer.dart';
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
          child: (CatalogueModel.items != null &&
                  CatalogueModel.items!.isNotEmpty)
              ? GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 10,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    final item = CatalogueModel.items![index];
                    return Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      child: GridTile(
                          header: Container(
                              padding: const EdgeInsets.all(12),
                              decoration:
                                  const BoxDecoration(color: Colors.deepPurple),
                              child: Text(
                                item.name,
                                style: const TextStyle(color: Colors.white),
                              )),
                          footer: Text(item.price.toString()),
                          child: Image.network(item.image)),
                    );
                  },
                  itemCount: CatalogueModel.items!.length,
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
