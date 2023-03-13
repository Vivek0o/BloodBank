import 'dart:ui';
import 'package:flutter/material.dart';

class AppSmalltext extends StatelessWidget {
  double size;
  final String text;
  final Color color;
  AppSmalltext({Key? key,
    this.size = 16,
    required this.text,
    this.color = Colors.black}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: color,
          fontSize: size,
      ),
    );
  }
}
