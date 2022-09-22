import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/push_functions.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/sign/widgets/or_widget.dart';
import 'package:eat24/view/screens/sign/widgets/signup_with_google.dart';
import 'package:eat24/view/screens/sign/widgets/text_button.dart';
import 'package:eat24/view/widgets/button_widget.dart';
import 'package:eat24/view/widgets/password_textfield_widget.dart';
import 'package:eat24/view/widgets/single_color_title.dart';
import 'package:eat24/view/widgets/text_field_widget.dart';
import 'package:eat24/view_model/signin_view_model.dart';
import 'package:eat24/view_model/signup_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signupController = Provider.of<SignupViewModel>(context);
    return Scaffold(
      backgroundColor: KColors.kThemeGreen,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: signupController.signUpKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height / 18.0),
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
                          TextFieldWidget(
                            hintText: 'Name',
                            controller: signupController.nameController,
                            validator: signupController.nameValidator,
                          ),
                          KSizedBox.kHeigh_20,
                          TextFieldWidget(
                            hintText: 'Email ID',
                            controller: signupController.emailController,
                            validator: signupController.emailValidator,
                          ),
                          KSizedBox.kHeigh_20,
                          PasswordTextFieldWidget(
                            hintText: 'Password',
                            icon: Icons.visibility,
                            controller: signupController.passwordController,
                            validator: signupController.passwordValidator,
                            signPro: Provider.of<SignupViewModel>(context,
                                listen: false),
                          ),
                          KSizedBox.kHeigh_20,
                          PasswordTextFieldWidget(
                            hintText: 'Confirm Password',
                            icon: Icons.visibility,
                            controller:
                                signupController.confirmPasswordController,
                            validator:
                                signupController.confirmPasswordValidator,
                            signPro: Provider.of<SignupViewModel>(context,
                                listen: false),
                          ),
                          KSizedBox.kHeigh_20,
                          ButtonWidget(
                            text: 'Sign up',
                            onTap: () {
                              signupController.signUpKey.currentState!
                                  .validate();
                              //PushFunctions.push(context, const MainPage());
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
                  KSizedBox.kHeigh_30,
                  TextButtonWidget(
                    text: "Already have an account?",
                    buttonText: 'Sign in',
                    onTap: () {
                      PushFunctions.pop(context);
                      signupController.disposes();
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
