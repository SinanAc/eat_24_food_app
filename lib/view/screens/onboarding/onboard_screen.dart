import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/strings.dart';
import 'package:eat24/view/screens/onboarding/widgets/get_started_screen.dart';
import 'package:eat24/view/screens/onboarding/widgets/onboarding_page.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return PageView(
      controller: controller,
      children:  [
        OnboardingPage(
          color1: KColors.kSliderColor,
          color2: KColors.kSliderGreyColor,
          color3: KColors.kSliderGreyColor,
          color4: KColors.kSliderGreyColor,
          text: Strings.onboardString_1,
          img: Strings.onboardImg_1,
          controller: controller,
        ),
        OnboardingPage(
          color1: KColors.kSliderColor,
          color2: KColors.kSliderColor,
          color3: KColors.kSliderGreyColor,
          color4: KColors.kSliderGreyColor,
          text: Strings.onboardString_2,
          img: Strings.onboardImg_2,
          controller: controller,
        ),
        OnboardingPage(
          color1: KColors.kSliderColor,
          color2: KColors.kSliderColor,
          color3: KColors.kSliderColor,
          color4: KColors.kSliderGreyColor,
          text: Strings.onboardString_3,
          img: Strings.onboardImg_3,
          controller: controller,
        ),
        const GetStartedScreen(),        
      ],
    );
  }
}

