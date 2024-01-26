import 'package:diet_planner/Screens/bmi_calculator_screen.dart';
import 'package:diet_planner/Screens/chatgpt_screen.dart';
import 'package:diet_planner/Screens/home_screen.dart';
import 'package:diet_planner/theme.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  int currentIndex=0; 
  List<Widget> listofPages = [
    const HomePageScreen(), 
    const BMICalculatorScreen(), 
    const ChatGptScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: listofPages.elementAt(currentIndex),
     bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        selectedItemColor: darkPrimaryColor,
        unselectedItemColor: Colors.grey.shade500,
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'BMI'),
        BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'ChatGPT'),
      ]),
    );
  }
}