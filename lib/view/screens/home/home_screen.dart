import 'dart:developer';

import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/home/widgets/category_card.dart';
import 'package:eat24/view/screens/home/widgets/location_widget.dart';
import 'package:eat24/view/screens/home/widgets/main_card.dart';
import 'package:eat24/view/screens/home/widgets/restaurant_card.dart';
import 'package:eat24/view/screens/home/widgets/search_field.dart';
import 'package:eat24/view/widgets/double_color_title.dart';
import 'package:eat24/view/widgets/main_title.dart';
import 'package:eat24/view/widgets/page_indicator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Stack(
        children: [
          SizedBox(
            height: size.height * 0.40,
            width: size.width,
            child: const ColoredBox(
              color: KColors.kThemeGreen,
            ),
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                KSizedBox.kHeigh_15,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
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
                ),
                KSizedBox.kHeigh_5,
                const LocationWidget(),
                KSizedBox.kHeigh_20,
                SearchField(size: size),
                KSizedBox.kHeigh_20,
                SizedBox(
                    height: size.height * 0.25,
                    width: double.infinity,
                    child: PageView(
                      controller: controller,
                      children: const [
                        MainCard(
                          text: 'Latest\nArrival',
                          img: 'assets/images/mainImg2.png',
                        ),
                        MainCard(
                          text: 'Hot\nDeal',
                          img: 'assets/images/mainImg1.png',
                        ),
                        MainCard(
                          text: 'Latest\nArrival',
                          img: 'assets/images/mainImg3.jpg',
                        ),
                      ],
                    )),
                KSizedBox.kHeigh_10,
                Center(
                  child: PageIndicatorWidget(controller: controller),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 5),
                  child: MainTitle(text: 'Restaurants', fontSize: 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 2),
                  child: LimitedBox(
                    maxHeight: MediaQuery.of(context).devicePixelRatio * 40,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: List.generate(
                        10,
                        (index) => const RestaurantCard(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const MainTitle(text: 'Categories', fontSize: 16),
                      const SizedBox(height: 2),
                      GridView(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 0.9,
                        ),
                        children: const [
                          CategoryCard(
                            img: 'assets/images/iconRIce.png',
                            title: 'Rice',
                          ),
                          CategoryCard(
                            img: 'assets/images/iconMeat.png',
                            title: 'Meat',
                          ),
                          CategoryCard(
                            img: 'assets/images/iconSandwich.png',
                            title: 'Sandwich',
                          ),
                          CategoryCard(
                            img: 'assets/images/iconBurger.png',
                            title: 'Burger',
                          ),
                          CategoryCard(
                            img: 'assets/images/iconPizza.png',
                            title: 'Pizza',
                          ),
                          CategoryCard(
                            img: 'assets/images/iconSoup.png',
                            title: 'Soup',
                          ),
                          CategoryCard(
                            img: 'assets/images/iconIcecream.png',
                            title: 'Icecream',
                          ),
                          CategoryCard(
                            img: 'assets/images/iconDrink.png',
                            title: 'Drink',
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}


