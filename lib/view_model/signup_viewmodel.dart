import 'dart:developer';
import 'package:eat24/model/sign_up/signup_model.dart';
import 'package:eat24/model/sign_up/signup_response_model.dart';
import 'package:eat24/repo/signup_repo.dart';
import 'package:eat24/utils/push_functions.dart';
import 'package:eat24/view/screens/main_page/main_page.dart';
import 'package:eat24/view/widgets/show_popup.dart';
import 'package:flutter/material.dart';

class SignUpViewModel extends ChangeNotifier {
  final signUpKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  bool isLoading = false;

  // make text obscure for passwords
  bool _isObscure = true;
  get isObscure => _isObscure;
  set isObscure(value) {
    _isObscure = value;
    notifyListeners();
  }

  // signup method
  void onSignupButton(context) async {
    if (signUpKey.currentState!.validate()) {
      isLoading = true;
      notifyListeners();
      final obj = SignUpModel(
          name: nameController.text,
          email: emailController.text,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text,
          role: "ROLE_USER"
          // message: '',
          );
      SignUpResponse? signUpResponse = await SignupApiService().signUpRepo(obj);
      //id = signUpResponse!.id;
      if (signUpResponse?.status == "true") {
        log("=====success======");
        PushFunctions.push(context, const MainPage());
        _isLoadingFalse();
        log("=========== ${signUpResponse?.status} ===========");
      } else if (signUpResponse == null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp('No Response'));
        _isLoadingFalse();
        return;
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(ShowDialogs.popUp('Error !!!'));
        _isLoadingFalse();
      }
    }
  }

  String? nameValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      return 'Enter Name';
    }
    return null;
  }

  String? emailValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      return 'Enter Email';
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(fieldContent)) {
      return 'Enter a valid email';
    }
    return null;
  }

  String? passwordValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      return 'Enter Password';
    }
    if(fieldContent.length<6){
      return 'Requires atleast 6 characters';
    }

    return null;
  }

  String? confirmPasswordValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      return 'Confirm Password';
    }
    if (fieldContent != passwordController.text) {
      return 'Password Not Match';
    }
    return null;
  }

  void _isLoadingFalse() {
    notifyListeners();
  }

  void disposes() {
    signUpKey.currentState!.reset();
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    _isObscure = true;
    isLoading = false;
    notifyListeners();
  }
}
