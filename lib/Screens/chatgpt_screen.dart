
import 'package:flutter/material.dart';
import 'package:nutrisync/Widgets/text_widget.dart';
import 'package:nutrisync/theme.dart';

class ChatGptScreen extends StatefulWidget {
  const ChatGptScreen({super.key});

  @override
  State<ChatGptScreen> createState() => _ChatGptScreenState();
}

class _ChatGptScreenState extends State<ChatGptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
   
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            GCText(text: 'CHat screen', type: TextType.h2, color: darkPrimaryColor,)
        ],
      ),
    );
  }
}