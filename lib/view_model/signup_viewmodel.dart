// ignore_for_file: unused_element

import 'package:dio/dio.dart';
import 'package:eat24/model/signup_model.dart';
import 'package:eat24/utils/url.dart';
import 'package:flutter/material.dart';

class SignupViewModel extends ChangeNotifier {
  final signUpKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  var isLoading = false;

  final dio = Dio(
    BaseOptions(
      baseUrl: Url.baseUrl,
    ),
  );

  onSignupButton() async {
    isLoading = true;
    if (signUpKey.currentState!.validate()) {
      final obj = SignupModel(
        name: nameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
        confirmPassword: confirmPasswordController.text.trim(),
        message: '',
      );
    }
  }

  String? nameValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      isLoading = false;
      return 'Enter Name';
    }

    return null;
  }

  String? emailValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      isLoading = false;
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
      isLoading = false;
      return 'Enter Password';
    }

    return null;
  }

  String? confirmPasswordValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      isLoading = false;
      return 'Confirm Password';
    }
    if (fieldContent != passwordController.text) {
      isLoading = false;
      return 'Password Not Match';
    }
    return null;
  }

  //     final response = await ApiSignUp().registerUser(obj);
  //     isLoading.value = false;
  //     if(response != null){
  //         if(response.email != null){
  //           log(response.toJson().toString());
  //           Get.toNamed(Paths.otp,arguments: response.phone.toString());
  //         }else{
  //           ErrorDialoge.showSnakBar(response.message.toString());
  //         }
  //     }else{
  //        ErrorDialoge.showSnakBar("No network");
  //     }
  //   }
  // }

  void disposes() {
    signUpKey.currentState!.reset();
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    confirmPasswordController.clear();
    isLoading = false;
  }
}
