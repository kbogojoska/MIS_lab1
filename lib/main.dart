import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(ClothingApp());
}

class ClothingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothing App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: StartingScreen(),
    );
  }
}
