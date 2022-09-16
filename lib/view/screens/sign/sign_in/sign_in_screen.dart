import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/push_functions.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/sign/sign_up/signup_screen.dart';
import 'package:eat24/view/screens/sign/widgets/or_widget.dart';
import 'package:eat24/view/screens/sign/widgets/signup_with_google.dart';
import 'package:eat24/view/screens/sign/widgets/text_button.dart';
import 'package:eat24/view/widgets/button_widget.dart';
import 'package:eat24/view/widgets/mini_title.dart';
import 'package:eat24/view/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.kThemeGreen,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                const MiniTitle(
                  text: 'Sign in to',
                  color: KColors.kWhiteColor,
                ),
                KSizedBox.kHeigh_5,
                const MiniTitle(
                  text: 'Eat 24',
                  color: KColors.kThemeYellow,
                ),
                KSizedBox.kHeigh_15,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: KColors.kWhiteColor,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, top: 30, bottom: 20),
                    child: Column(
                      children: [
                        const TextFieldWidget(hintText: 'Email ID'),
                        KSizedBox.kHeigh_20,
                        const TextFieldWidget(hintText: 'Password'),
                        KSizedBox.kHeigh_20,
                        ButtonWidget(
                          text: 'Sign in',
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ),
                KSizedBox.kHeigh_20,
                const OrWidget(),
                KSizedBox.kHeigh_10,
                const SignUpWithGoogle(),
                KSizedBox.kHeigh_50,
                 TextButtonWidget(
                  text: "Don't have an account?",
                  buttonText: 'Sign up',
                  onTap: (){
                    PushFunctions.push(context, const SignupScreen());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

