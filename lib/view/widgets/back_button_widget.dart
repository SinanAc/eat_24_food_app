import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/push_functions.dart';
import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    Key? key,
    this.color = KColors.kThemeBackground,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        PushFunctions.pop(context);
      },
      child: Card(
        color: color,
        margin: const EdgeInsets.only(left: 20, top: 15),
        child: const Padding(
          padding: EdgeInsets.only(left: 8, top: 4, bottom: 4),
          child: Icon(Icons.arrow_back_ios, color: Colors.black54,size: 20),
        ),
      ),
    );
  }
}
