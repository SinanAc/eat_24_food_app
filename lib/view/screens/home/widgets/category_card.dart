import 'package:eat24/view/widgets/single_color_title.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);
  final String img;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: Image(
              height: 35.0,
              fit: BoxFit.cover,
              image: AssetImage(img),
            ),
          ),
          Center(
            child: SingleColorTitle(
              text: title,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}