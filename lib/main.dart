import 'package:example1/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Twosome Clone App',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
