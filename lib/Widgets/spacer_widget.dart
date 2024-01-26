
import 'package:flutter/material.dart';
import 'package:nutrisync/theme.dart';

class SpacerWidget extends StatelessWidget {
  const SpacerWidget({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: gcSpacer * height,
    );
  }
}