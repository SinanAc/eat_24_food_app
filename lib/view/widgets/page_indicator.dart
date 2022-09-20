import 'package:eat24/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: 3,
      effect: const ExpandingDotsEffect(
        activeDotColor: KColors.kSliderColor,
        dotColor: Color.fromARGB(77, 15, 102, 87),
        dotHeight: 7,
        dotWidth: 7,
      ),
    );
  }
}
