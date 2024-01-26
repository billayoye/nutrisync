// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// import 'package:gcmobile/main.dart';

class CustomButton extends StatefulWidget {
  final Size? size; 
  final Widget child; 
  final Color? color;
  final Function() onTap;
  const CustomButton({
    Key? key,
    this.size,
    this.color, required this.onTap, 
    required this.child,
  }) : super(key: key);

  @override
  State<CustomButton> createState() => _GCButtonState();
}

class _GCButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: widget.onTap, 
                          style: ElevatedButton.styleFrom(
                            backgroundColor: widget.color,
                            fixedSize: widget.size
                          ),
                          child: widget.child);
  }
}