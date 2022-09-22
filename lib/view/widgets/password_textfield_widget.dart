import 'package:eat24/utils/colors.dart';
import 'package:eat24/view_model/signin_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PasswordTextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  const PasswordTextFieldWidget({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signPro = Provider.of<SigninViewModel>(context, listen: false);
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        fillColor: KColors.kTextFieldColor,
        filled: true,
        hintText: hintText,
        hintStyle: const TextStyle(color: KColors.kGreyColor),
        suffixIcon: IconButton(
          onPressed: () {
            signPro.isObscure == false
                ? signPro.isObscure = true
                : signPro.isObscure = false;
          },
          icon:
              Icon(signPro.isObscure ? Icons.visibility_off : Icons.visibility),
        ),
      ),
      obscureText: signPro.isObscure,
      style: const TextStyle(
        fontFamily: 'SubMainFont',
      ),
    );
  }
}
