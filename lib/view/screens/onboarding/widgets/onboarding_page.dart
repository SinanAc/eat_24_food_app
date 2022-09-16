import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    Key? key,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.color4,
    required this.text,
    required this.img,
    required this.controller,
  }) : super(key: key);
  final Color color1;
  final Color color2;
  final Color color3;
  final Color color4;
  final String text;
  final String img;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kThemeOnboarding,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  slideBar(context, color1),
                  slideBar(context, color2),
                  slideBar(context, color3),
                  slideBar(context, color4),
                ],
              ),
              KSizedBox.kHeigh_30,
              SizedBox(
                height: 80,
                width: MediaQuery.of(context).size.width / 1.2,
                child: Text(
                  text,
                  style: const TextStyle(
                      fontFamily: 'MainFont',
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 10.0),
              Center(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height / 2.7,
                  child: Image.asset(img),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 7.0),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    controller.nextPage(
                        duration: const Duration(microseconds: 100),
                        curve: Curves.ease);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: KColors.kThemeGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 13,
                    ),
                    //  elevation: 40,
                    minimumSize: Size(MediaQuery.of(context).size.width / 4.0,40),
                  ),
                  child: const Icon(
                    Icons.arrow_forward,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container slideBar(BuildContext context, Color color) {
    return Container(
      height: 4,
      width: MediaQuery.of(context).size.width / 4.7,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(10), color: color),
    );
  }
}
