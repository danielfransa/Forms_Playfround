import 'package:app_pedido/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: const TextTheme(
              headline1: TextStyle(
                  fontSize: 38.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
              headline2: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.green),
              headline3: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.green))),
      home: HomePage(),
    );
  }
}
