import 'dart:async';
import 'package:bordered_text/bordered_text.dart';
import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/push_functions.dart';
import 'package:eat24/view/screens/sign/sign_in/sign_in_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer(const Duration(seconds: 2), () {
        PushFunctions.pushReplace(context, const SignInScreen());
      });
    });
    return Scaffold(
      backgroundColor: KColors.kThemeGreen,
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BorderedText(
              strokeColor: KColors.kThemeYellow,
              strokeWidth: 2,
              child: const Text('EAT',
                  style: TextStyle(
                      fontFamily: 'MainFont',
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 4))),
          const Text(
            '24',
            style: TextStyle(
                fontFamily: 'MainFont',
                color: KColors.kThemeYellow,
                fontSize: 20,
                fontWeight: FontWeight.bold),
          )
        ],
      )),
    );
  }
}
