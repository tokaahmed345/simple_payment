import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          AppStyles.textStyle24.copyWith(color: AppColors.salmon, fontSize: 13),
    );
  }
}