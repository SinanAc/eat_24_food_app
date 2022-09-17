import 'package:eat24/utils/colors.dart';
import 'package:flutter/material.dart';

class DoubleColorTitle extends StatelessWidget {
  final String text1;
  final String text2;
  final Color firstColor;
  final double gap;
  const DoubleColorTitle({
    Key? key,
    required this.text1,
    required this.text2,
    this.firstColor = KColors.kThemeGreen,
    this.gap = 3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style:  TextStyle(
            color: firstColor,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'SubMainFont',
            letterSpacing: 1,
          ),
        ),
        SizedBox(
          width: gap,
        ),
        Text(
          text2,
          style: const TextStyle(
            color: KColors.kThemeYellow,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: 'SubMainFont',
            letterSpacing: 1,
          ),
        ),
      ],
    );
  }
}
