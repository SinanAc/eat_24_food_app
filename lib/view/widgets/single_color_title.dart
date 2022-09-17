import 'package:flutter/material.dart';

class SingleColorTitle extends StatelessWidget {
  final String text;
  final Color color;
  const SingleColorTitle({
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