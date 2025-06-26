
import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/custom_radio_button.dart';

class CustomBodySecion extends StatelessWidget {
  const CustomBodySecion({super.key, required this.text, required this.icon});

final String text;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
      child: Column(children: [
        Row
      
      (
        children: [
       Icon(icon,color: AppColors.salmon,size: 40,),
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Text(text,style: AppStyles.textStyle24.copyWith(fontSize: 16,fontWeight: FontWeight.bold),),
      ),
      const Spacer(),
      const CustomRadioButton(),
      
      ],)
      ,
      const SizedBox(
        height: 10,
      ),
      const Divider(color: AppColors.salmon,thickness: .8,),
      ],),
    );
  }
}