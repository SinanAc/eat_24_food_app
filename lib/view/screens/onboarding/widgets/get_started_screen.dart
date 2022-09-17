import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/push_functions.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/utils/strings.dart';
import 'package:eat24/view/screens/sign/sign_in/sign_in_screen.dart';
import 'package:eat24/view/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: KColors.kThemeGreen,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  slideBar(context, KColors.kSliderColor),
                  slideBar(context, KColors.kSliderColor),
                  slideBar(context, KColors.kSliderColor),
                  slideBar(context, KColors.kSliderColor),
                ],
              ),
              KSizedBox.kHeigh_30,
              const Text(
                'Welcome !',
                style: TextStyle(
                  fontFamily: 'MainFont',
                  color: KColors.kThemeYellow,
                  fontSize: 28,
                ),
              ),
              KSizedBox.kHeigh_10,
              SizedBox(
                height: 80,
                width: size.width / 1.2,
                child: const Text(
                  Strings.getStartString,
                  style: TextStyle(
                    fontFamily: 'MainFont',
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
              KSizedBox.kHeigh_5,
              ButtonWidget(
                text: 'Get Started',
                onTap: () {
                  PushFunctions.push(context, const SignInScreen());
                },
                width: size.width / 2.3,
              ),
              SizedBox(height: size.height / 5.0),
              Center(
                child: SizedBox(
                  height: size.height / 4.5,
                  child: Image.asset(Strings.getStartImg),
                ),
              ),
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
