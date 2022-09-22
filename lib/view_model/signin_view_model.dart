import 'package:dio/dio.dart';
import 'package:eat24/utils/url.dart';
import 'package:flutter/cupertino.dart';

class SigninViewModel extends ChangeNotifier {
  final signInKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  // make text obscure for passwords
  bool _isObscure = false;
  get isObscure => _isObscure;
  set isObscure(value) {
    _isObscure = value;
    notifyListeners();
  }  

  final dio = Dio(
    BaseOptions(
      baseUrl: Url.baseUrl,
    ),
  );

  onSigninButton() async {
    isLoading = true;
    if (signInKey.currentState!.validate()) {}
  }

  String? emailValidator(String? fieldContent) {
    if (fieldContent == null || fieldContent.isEmpty) {
      //isLoading = false;
      return 'Enter Email';
    } else if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(fieldContent)) {
      return 'Enter a valid email';
    }
    return (null);
  }

  String? passwordValidator(String? fieldContent) {
    if (fieldContent!.isEmpty) {
      isLoading = false;
      return 'Enter Password';
    }

    return null;
  }

  void disposes(){
    signInKey.currentState!.reset();
    emailController.clear();
    passwordController.clear();
    //_isObscure = false;
    isLoading = false;
  }
}
