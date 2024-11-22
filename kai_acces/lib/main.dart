import 'package:flutter/material.dart';
import 'package:kai_acces/Body.dart';
import 'package:kai_acces/HomeScreen.dart';
import 'package:kai_acces/Navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home: HomeScreen()
    );
  }
}

