import 'package:ecommerce/pages/home.dart';
import 'package:ecommerce/pages/intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      home: IntroPage(),
    );
  }
}