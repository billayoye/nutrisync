
import 'package:flutter/material.dart';
import 'package:nutrisync/theme.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({
    super.key,
    this.all = 0,
    required this.type,
    this.vertical = 0,
    this.horizontal = 0,
    this.top = 0,
    this.left = 0,
    this.right = 0,
    this.bottom = 0,
    required this.child,
  });
  final Widget child;
  final double all;
  final PaddingType type;
  final double vertical;
  final double horizontal;
  final double top;
  final double bottom;
  final double left;
  final double right;

  EdgeInsetsGeometry getPadding() {
    if (type == PaddingType.all) {
      return EdgeInsets.all(gcSpacer * all);
    } else if (type == PaddingType.symmetric) {
      return EdgeInsets.symmetric(
          vertical: gcSpacer * vertical, horizontal: gcSpacer * horizontal);
    }   else {
      return EdgeInsets.only(
          top: space(top),
          bottom: gcSpacer * bottom,
          right: gcSpacer * right,
          left: gcSpacer * left);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(),
      child: child,
    );
  }
}

enum PaddingType { all, symmetric, only }