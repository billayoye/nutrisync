
import 'package:flutter/material.dart';
import 'package:nutrisync/Widgets/text_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int currentIndex = 0;
  List<Widget> listofPages = [
    
  ];
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
   
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            GCText(text: 'HomeScreen', 
            type: TextType.h2, 
            color: Colors.black,)
        ],
      ),
    );
  }
}