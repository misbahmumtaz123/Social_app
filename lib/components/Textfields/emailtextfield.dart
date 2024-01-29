import 'package:flutter/material.dart';
import 'package:social_app/Config/Colors.dart';

import '../../Config/style.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  MyTextField({required this.hintText, this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: fw400size16txtintxtfld,
        fillColor: AppColors.txtfldclr,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(
          vertical: MediaQuery.of(context).size.width * 0.04,
          horizontal: MediaQuery.of(context).size.width * 0.05,
        ),
      ),
      obscureText: obscureText,
    );
  }
}

