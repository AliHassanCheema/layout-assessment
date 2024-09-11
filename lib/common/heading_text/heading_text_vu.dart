import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({super.key, required this.maxWidth, required this.title});
  final double maxWidth;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontSize: maxWidth <= 600
              ? 16
              : maxWidth >= 600 && maxWidth <= 1020
                  ? 20
                  : 24,
          fontWeight: FontWeight.w500),
    );
  }
}
