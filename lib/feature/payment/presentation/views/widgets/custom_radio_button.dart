import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';

class CustomRadioButton extends StatelessWidget {
  const CustomRadioButton({super.key, required this.onTap, required this.isSelected});
final Function()? onTap;
final bool isSelected;
    @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: onTap,
  child: Container(
    width: 24,
    height: 24,
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(color: AppColors.salmon, width: 2),
    ),
    child: Center(
      child: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? AppColors.salmon : Colors.transparent,
          border: isSelected
              ? null
              : Border.all(color: AppColors.salmon, width: 2),
        ),
      ),
    ),
  ),
);
  }
}