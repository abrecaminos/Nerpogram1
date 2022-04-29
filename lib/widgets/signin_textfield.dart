import 'package:flutter/material.dart';

class SignInTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;

  const SignInTextField(
      {Key? key,
      required this.hintText,
      required this.textEditingController,
      this.obscureText = false,
      this.textInputType = TextInputType.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder =
        OutlineInputBorder(borderSide: Divider.createBorderSide(context));

    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
          hintText: hintText,
          border: inputBorder,
          focusedBorder: inputBorder,
          filled: true,
          contentPadding: EdgeInsets.all(8)),
      keyboardType: textInputType,
      obscureText: obscureText,
    );
  }
}
