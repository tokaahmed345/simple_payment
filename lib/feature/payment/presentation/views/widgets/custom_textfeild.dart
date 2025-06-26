// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:simplepaymentcard/core/utils/colors/colors.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    this.text,
  });
  final String? text;

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
    );
  }
}
