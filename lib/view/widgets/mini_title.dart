import 'package:flutter/material.dart';

class MiniTitle extends StatelessWidget {
  final String text;
  final Color color;
  const MiniTitle({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color, 
        fontSize: 20, 
        fontWeight: FontWeight.bold,
        fontFamily: 'SubMainFont',
        letterSpacing: 1,
        ),
    );
  }
}