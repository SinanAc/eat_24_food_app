import 'package:eat24/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            fillColor: Color.fromARGB(55, 255, 255, 255),
            filled: true,
            hintText: 'Type Something...',
            hintStyle: TextStyle(color: Color.fromARGB(138, 255, 255, 255)),
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Color.fromARGB(138, 255, 255, 255),
            ),
            contentPadding: EdgeInsets.all(7)),
        style: TextStyle(
          fontFamily: 'SubMainFont',
          color: KColors.kWhiteColor,
        ),
      ),
    );
  }
}
