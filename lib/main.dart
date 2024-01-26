import 'package:flutter/material.dart';
import 'package:nutrisync/Screens/splash_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}
double screenHeight = 0;
double screenWidth = 0;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SPlashScreen(),
    );
  }
}