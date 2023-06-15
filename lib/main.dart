import 'package:flutter/material.dart';
import 'package:fluttergina/repository.dart';
import 'package:fluttergina/screens/coba.dart';
import 'package:fluttergina/screens/home_screen.dart';
import 'package:fluttergina/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
