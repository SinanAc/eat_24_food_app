import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/push_functions.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/main_page/main_page.dart';
import 'package:eat24/view/screens/sign/sign_in/sign_in_screen.dart';
import 'package:eat24/view/screens/sign/widgets/or_widget.dart';
import 'package:eat24/view/screens/sign/widgets/signup_with_google.dart';
import 'package:eat24/view/screens/sign/widgets/text_button.dart';
import 'package:eat24/view/widgets/button_widget.dart';
import 'package:eat24/view/widgets/single_color_title.dart';
import 'package:eat24/view/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

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
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/18.0),
                const SingleColorTitle(
                  text: 'Sign up to',
                  color: KColors.kWhiteColor,
                ),
                KSizedBox.kHeigh_5,
                const SingleColorTitle(
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
                        const TextFieldWidget(hintText: 'Name'),     
                        KSizedBox.kHeigh_20,                                           
                        const TextFieldWidget(hintText: 'Email ID'),
                        KSizedBox.kHeigh_20,
                        const TextFieldWidget(hintText: 'Password'),
                        KSizedBox.kHeigh_20,
                        const TextFieldWidget(hintText: 'Confirm Password'),                        
                        KSizedBox.kHeigh_20,
                        ButtonWidget(
                          text: 'Sign up',
                          onTap: () {
                            PushFunctions.push(context, const MainPage());
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                KSizedBox.kHeigh_20,
                const OrWidget(),
                KSizedBox.kHeigh_10,
                const SignUpWithGoogle(),
                KSizedBox.kHeigh_40,
                 TextButtonWidget(
                  text: "Already have an account?",
                  buttonText: 'Sign in',
                  onTap: (){
                    PushFunctions.pushAndRemoveUntil(context, const SignInScreen());
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