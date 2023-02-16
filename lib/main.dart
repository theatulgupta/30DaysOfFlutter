import 'package:catalogue_app/screens/home_page.dart';
import 'package:catalogue_app/screens/login_page.dart';
import 'package:catalogue_app/utils/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: MyRoutes.homeRoute,
        routes: {
          "/": (context) => const HomePage(),
          MyRoutes.homeRoute: (context) => const HomePage(),
          MyRoutes.loginRoute: (context) => const LoginPage(),
        });
  }
}
