import 'package:catalogue_app/screens/home_page.dart';
import 'package:catalogue_app/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            fontFamily: GoogleFonts.lato().fontFamily,
            primaryTextTheme: GoogleFonts.latoTextTheme()),
        routes: {
          "/": (context) => const LoginPage(),
          "/home": (context) => const HomePage(),
          "/login": (context) => const LoginPage(),
        });
  }
}
