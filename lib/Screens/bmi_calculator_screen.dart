
import 'package:flutter/material.dart';
import 'package:nutrisync/Widgets/text_widget.dart';
import 'package:nutrisync/theme.dart';

class BMICalculatorScreen extends StatefulWidget {
  const BMICalculatorScreen({super.key});

  @override
  State<BMICalculatorScreen> createState() => _BMICalculatorScreenState();
}

class _BMICalculatorScreenState extends State<BMICalculatorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            GCText(text: 'BMI Screen', type: TextType.h2, color: darkPrimaryColor,)
        ],
      ),
    );
  }
}