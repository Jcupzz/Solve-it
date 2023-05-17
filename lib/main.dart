import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:solve_it/Authentication/Register.dart';
import 'package:solve_it/HomePage.dart';
import 'package:solve_it/firebase_options.dart';
import 'package:solve_it/pages/Detailed_View.dart';
import 'package:solve_it/pages/Home.dart';
import 'package:solve_it/pages/VirtualCoins_View.dart';
import 'package:solve_it/pages/asd.dart';
import 'package:solve_it/static/Bottom_Nav_Bar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      builder: BotToastInit(), //1. call BotToastInit
      navigatorObservers: [BotToastNavigatorObserver()], //2
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Material(child: Register()),
    );
  }
}
