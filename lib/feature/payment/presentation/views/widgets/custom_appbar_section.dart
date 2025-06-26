
import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';

class CustomAppBarSection extends StatelessWidget {
  const CustomAppBarSection({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      IconButton(onPressed: (){},  icon:const  Icon(Icons.arrow_back,color: AppColors.black,size: 35,)),
    Padding(
      padding: const EdgeInsets.only(left:60.0),
      child: Text(title,style: AppStyles.textStyle24.copyWith(color: AppColors.salmon),),
    ),
    
    ],);
  }
}