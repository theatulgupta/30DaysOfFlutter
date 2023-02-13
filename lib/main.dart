import 'package:catalogue_app/screens/home_page.dart';
import 'package:catalogue_app/screens/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.dark,
        // initialRoute: "/home",
        routes: {
          "/": (context) => const LoginPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
        });
  }
}
