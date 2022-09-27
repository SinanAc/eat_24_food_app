import 'package:eat24/utils/colors.dart';
import 'package:eat24/utils/push_functions.dart';
import 'package:eat24/utils/sizes.dart';
import 'package:eat24/view/screens/register/sign_up/signup_screen.dart';
import 'package:eat24/view/screens/register/widgets/or_widget.dart';
import 'package:eat24/view/screens/register/widgets/signup_with_google.dart';
import 'package:eat24/view/screens/register/widgets/text_button.dart';
import 'package:eat24/view/widgets/button_widget.dart';
import 'package:eat24/view/widgets/loading_indicator.dart';
import 'package:eat24/view/widgets/password_textfield_widget.dart';
import 'package:eat24/view/widgets/single_color_title.dart';
import 'package:eat24/view/widgets/text_field_widget.dart';
import 'package:eat24/view_model/signin_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signinController = Provider.of<SigninViewModel>(context);
    return Scaffold(
        backgroundColor: KColors.kThemeGreen,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Form(
                key: signinController.signInFormKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height / 8.5),
                    const SingleColorTitle(
                      text: 'Sign in to',
                      color: KColors.kWhiteColor,
                    ),
                    KSizedBox.kHeigh_5,
                    const SingleColorTitle(
                      text: 'Eat 24',
                      color: KColors.kThemeYellow,
                    ),
                    KSizedBox.kHeigh_15,
                    Consumer<SigninViewModel>(
                      builder: (context, value, _) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: KColors.kWhiteColor,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 30, bottom: 25),
                          child: Column(
                            children: [
                              TextFieldWidget(
                                hintText: 'Email ID',
                                controller: signinController.emailController,
                                validator: signinController.emailValidator,
                              ),
                              KSizedBox.kHeigh_20,
                              PasswordTextFieldWidget(
                                hintText: 'Password',
                                icon: Icons.visibility,
                                controller: signinController.passwordController,
                                validator: signinController.passwordValidator,
                                signPro: Provider.of<SigninViewModel>(context,
                                    listen: false),
                              ),
                              Row(children: [
                                Checkbox(
                                  fillColor: MaterialStateProperty.all(
                                      KColors.kThemeGreen),
                                  value: signinController.isRemember,
                                  onChanged: (value) {
                                    signinController.isRemember =
                                        !signinController.isRemember;
                                  },
                                ),
                                const Text('Remember Me',
                                    style: TextStyle(color: Colors.black54)),
                                const Spacer(),
                                TextButtonWidget(
                                  buttonText: 'Forgot Password ?',
                                  color: Colors.black54,
                                  onTap: () {},
                                ),
                              ]),
                              KSizedBox.kHeigh_20,
                              value.isLoading
                                  ? const LoadingIndicator()
                                  : ButtonWidget(
                                      text: 'Sign in',
                                      onTap: () {
                                        signinController.signInFormKey.currentState!
                                            .validate();
                                        signinController
                                            .onSigninButton(context);
                                      },
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    KSizedBox.kHeigh_20,
                    const OrWidget(),
                    KSizedBox.kHeigh_10,
                    const SignUpWithGoogle(),
                    KSizedBox.kHeigh_50,
                  ],
                ),
              ),
            ),
          ),
        ),
        floatingActionButton: TextButtonWidget(
          text: "Don't have an account?",
          buttonText: 'Sign up',
          onTap: () {
            PushFunctions.push(context, const SignupScreen());
            signinController.disposes();
          },
        ),
        resizeToAvoidBottomInset: false);
  }
}
