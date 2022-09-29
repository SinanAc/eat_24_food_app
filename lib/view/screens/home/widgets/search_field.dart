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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13.0),
      child: CupertinoSearchTextField(
        padding: const EdgeInsets.symmetric(vertical: 13.0,horizontal: 20),
        backgroundColor: Colors.grey.withOpacity(0.25),
        prefixIcon: const Padding(
          padding:  EdgeInsets.only(left: 10),
          child:  Icon(
            CupertinoIcons.search,
            color: Colors.white38,
          ),
        ),
        suffixIcon: const Icon(
          CupertinoIcons.xmark_circle_fill,
          color: Colors.white54,
        ),
        style: const TextStyle(
          color: Colors.white38,
        ),
        onChanged: (value) {
          if (value.isEmpty) {
            return;
          }
        },
      ),
    );
  }
}
