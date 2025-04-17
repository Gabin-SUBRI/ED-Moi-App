import 'package:flutter/material.dart';
import 'package:testflutter1/page/HOME/home.dart';
import 'package:testflutter1/page/FORMATIONS/creer.dart';
import 'package:testflutter1/page/FORMATIONS/suivre.dart';
import 'package:testflutter1/page/FORMATIONS/cuisine.dart';
import 'package:testflutter1/page/FORMATIONS/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),
      routes: {
        '/home': (context) => home(),
        '/profile': (context) => Profile(),
        '/suivre': (context) => Suivre(),
        '/creer': (context) => Creer(),
        '/cuisine': (context) => Cuisine(),
      }
      );
  }
}
