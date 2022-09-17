import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  final Color color;
  const MainCard({
    Key? key,
    required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: color,
      ),
    );
  }
}