import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/home/widgets/main_card.dart';
import 'package:eat24/view/screens/home/widgets/search_field.dart';
import 'package:eat24/view/widgets/double_color_title.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          height: size.height * 0.40,
          width: size.width,
          child: const ColoredBox(
            color: KColors.kThemeGreen,
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: ListView(
              children: [
                Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 4.0),
                      child: DoubleColorTitle(
                        text1: 'Eat',
                        text2: '24',
                        firstColor: KColors.kWhiteColor,
                        gap: 0,
                      ),
                    ),
                    const Spacer(),
                    Image.asset('assets/images/Group 1.png'),
                  ],
                ),
                KSizedBox.kHeigh_5,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.place,
                      color: KColors.kWhiteColor,
                      size: 22,
                    ),
                    SizedBox(width: 2),
                    Text(
                      '507, BCK Kinfra, Calicut 670546',
                      style: TextStyle(
                          color: Color.fromARGB(137, 255, 255, 255),
                          fontFamily: 'SubMainFont'),
                    ),
                  ],
                ),
                KSizedBox.kHeigh_20,
                SearchField(size: size),
                KSizedBox.kHeigh_20,
                SizedBox(
                    height: 180,
                    child: PageView(
                      controller: controller,
                      children: const [
                        MainCard(color: Colors.green),
                        MainCard(color: Colors.yellow),
                        MainCard(color: Colors.orange),
                      ],
                    )),
                SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: KColors.kThemeGreen,
                    dotColor: Colors.grey,
                    dotHeight: 15,
                    dotWidth: 15,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
