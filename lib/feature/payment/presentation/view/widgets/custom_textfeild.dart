// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:simplepaymentcard/core/utils/colors/colors.dart';

class CustomTextFeild extends StatelessWidget {
   CustomTextFeild({
    super.key,
    this.text,
    this.maxLength,
    this.onChanged,
    this.inputFormatters ,
    this.keyboardType,
    this.textAlign ,
    this.buildCounter,
  });
  final String? text;
  final int? maxLength;
  final void Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputType? keyboardType;
  final TextAlign? textAlign;
  final Widget Function(BuildContext, {int? currentLength, bool? isFocused, int? maxLength})? buildCounter;


  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.teracotta,
      decoration: InputDecoration(
        hoverColor: AppColors.beige,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: AppColors.salmon, width: 2),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(color: AppColors.salmon, width: 1),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          borderSide: BorderSide(
              color: AppColors.salmon, width: 0, style: BorderStyle.solid),
        ),
        hintText: text,
        fillColor: AppColors.beige,
        filled: true,
      ),
      maxLength: maxLength ?? 30,
      onChanged: onChanged,
      inputFormatters: inputFormatters,
      keyboardType: keyboardType,
      textAlign:textAlign?? TextAlign.start,
      buildCounter: buildCounter,

    );
  }
}
