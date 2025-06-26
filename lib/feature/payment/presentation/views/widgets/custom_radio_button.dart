import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';

class CustomRadioButton extends StatefulWidget {
  const CustomRadioButton({super.key});

  @override
  State<CustomRadioButton> createState() => _CustomRadioButtonState();
}

class _CustomRadioButtonState extends State<CustomRadioButton> {
  bool isSelected=false;
    @override
  Widget build(BuildContext context) {
    return GestureDetector(
  onTap: () {
    setState(() {
      isSelected = !isSelected;
    });
  },
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