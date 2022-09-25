import 'package:flutter/material.dart';

class SigninViewModel extends ChangeNotifier {
  final signInKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isLoading = false;

  // make text obscure for passwords
  bool _isObscure = true;
  get isObscure => _isObscure;
  set isObscure(value) {
    _isObscure = value;
    notifyListeners();
  }  

  onSigninButton() async {
    isLoading = true;
    if (signInKey.currentState!.validate()) {
      // final email = emailController.text.trim();
      // final password = passwordController.text.trim();
      //final data  = SignInModel(email: email, password: password);

    }
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
    _isObscure = true;
    isLoading = false;
    notifyListeners();
  }
}
