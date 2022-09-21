import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/widgets/main_title.dart';
import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
    required this.text,
    required this.img,
  }) : super(key: key);
  final String text;
  final String img;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          width: size.width * 0.92,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5),
                BlendMode.dstATop,
              ),
              image: AssetImage(img),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MainTitle(
                  text: text,
                  fontSize: 30,
                  weight: FontWeight.bold,
                  color: KColors.kThemeYellow,
                ),
                KSizedBox.kHeigh_5,
                Container(
                  decoration: BoxDecoration(
                      color: KColors.kThemeGreen,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 14.0),
                    child: Text(
                      'Order Now',
                      style: TextStyle(
                          color: Colors.white, fontFamily: 'SubMainFont'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
