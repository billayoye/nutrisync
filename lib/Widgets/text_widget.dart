import 'package:flutter/material.dart';

class GCText extends StatelessWidget {
  final TextType type;
  const GCText(
      {super.key,
      required this.text,
      required this.type,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.height,
      this.textUnderline = false,
      this.textAlign});
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final bool textUnderline;
  final double? height;

  getTextStyle(TextType type) {
    if (type == TextType.h1) {
      return TextStyle(
          fontSize: fontSize ?? 20,
          color: color ?? Colors.white,
          fontFamily: 'GoodTime',
          fontWeight: fontWeight);
    } else if (type == TextType.h2) {
      return TextStyle(
          height: 1.2,
          fontFamily: 'Proxima',
          fontSize: fontSize ?? 30,
          color: color ?? Colors.white,
          fontWeight:fontWeight?? FontWeight.w600);
    } else if (type == TextType.buttonText) {
      return TextStyle(
          fontSize: fontSize ?? 14,
          fontFamily: 'Proxima',
          fontWeight: FontWeight.w600,
          color: color ?? Colors.white);
    }

    return const TextStyle();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: TextOverflow.ellipsis,
      // maxLines: 1,
      style: getTextStyle(type),
      textAlign: textAlign,
    );
  }
}

enum TextType {
  h1,
  h2,
  buttonText
}