import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPassword;


  const CustomTextFormField(
      {super.key,
      required this.textEditingController,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      obscuringCharacter: "*",
      controller: textEditingController,
      decoration: const InputDecoration(border: InputBorder.none),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Enter your ID and Password";
        }
        return null;
      },
    );
  }
}
