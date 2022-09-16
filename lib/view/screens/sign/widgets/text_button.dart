import 'package:eat24/utils/colors.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String text;
  final String buttonText;
  final Function onTap;
  const TextButtonWidget({
    Key? key,
    required this.text,
    required this.buttonText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white38,
          ),
        ),
        TextButton(
          onPressed: () {
            onTap();
          },
          child: Text(
            buttonText,
            style: const TextStyle(
              color: KColors.kThemeYellow,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
