import 'package:flutter/material.dart';
import 'package:solve_it/HomePage.dart';
import 'package:solve_it/pages/Detailed_View.dart';
import 'package:solve_it/pages/VirtualCoins_View.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Material(child: VirtualCoins_View()),
    );
  }
}
