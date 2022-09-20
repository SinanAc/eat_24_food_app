import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/widgets/page_indicator.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    Key? key,
    required this.text,
    required this.img,
    required this.controller,
  }) : super(key: key);
  final String text;
  final String img;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KColors.kThemeOnboarding,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
          child: Column(
            children: [
              KSizedBox.kHeigh_40,
              SizedBox(
                height: size.height/8,
                child: Text(
                  text,
                  style: const TextStyle(
                    fontFamily: 'MainFont',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: size.height / 12.0),
              Center(
                child: SizedBox(
                  height: size.height / 2.6,
                  child: Image.asset(img),
                ),
              ),
              SizedBox(height: size.height / 7.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {
                      controller.jumpToPage(4);
                        },
                    child: const Text(
                      '>> Skip',
                      style: TextStyle(
                        fontSize: 18,
                        color: KColors.kThemeGreen,
                        ),
                    ),
                  ),
                  PageIndicatorWidget(controller: controller),
                  TextButton(
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(microseconds: 100),
                          curve: Curves.ease);
                    },
                    child: const Text(
                      'Next >>',
                    style: TextStyle(
                        fontSize: 18,
                        color: KColors.kThemeGreen,
                        ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
