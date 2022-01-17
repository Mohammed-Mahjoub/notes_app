import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextInputType textInputType;
  final String textFontFamily;
  final double textFontSize;
  final Color textColor;
  final FontWeight textWeight;
  final String hintText;
  final String hintFontFamily;
  final double hintFontSize;
  final Color hintColor;
  final FontWeight hintWeight;
  final bool scure;
  final TextEditingController controller;
  final String? error;
  TextFieldWidget(
      {this.textInputType = TextInputType.text,
      this.textFontFamily = 'Roboto',
      this.textFontSize = 22,
      this.textColor = Colors.black,
      this.textWeight = FontWeight.normal,
      required this.hintText,
        this.hintFontFamily = 'Roboto',
      this.hintFontSize = 18,
      this.hintColor = Colors.grey,
      this.hintWeight = FontWeight.w300,
        this.scure = false,
        required this.controller,
        this.error,
      });



  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: scure,
      keyboardType: textInputType,
      controller: controller,
      style: TextStyle(
        fontFamily: textFontFamily,
        fontSize: textFontSize,
        color: textColor,
        fontWeight: textWeight,
      ),
      decoration: InputDecoration(
        errorText: error,
        errorMaxLines: 1,
        hintText: hintText,
        hintStyle: TextStyle(
          fontFamily: hintFontFamily,
          fontSize: hintFontSize,
          color: hintColor,
          fontWeight: hintWeight,
        ),
      ),
    );
  }
}
