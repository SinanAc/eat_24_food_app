import 'package:eat24/utils/colors.dart';
import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  const TextFieldWidget({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
          fillColor: KColors.kTextFieldColor,
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: KColors.kGreyColor),
        ),
        style: const TextStyle(
          fontFamily: 'SubMainFont',
        ),
      ),
    );
  }
}
