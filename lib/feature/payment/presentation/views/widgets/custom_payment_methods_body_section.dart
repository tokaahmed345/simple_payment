
import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/custom_radio_button.dart';

class CustomBodySecion extends StatelessWidget {
  const CustomBodySecion({super.key, required this.text,  this.icon, this.image, required this.index, required this.onTap, required this.selectedIndex});

final String text;
final IconData ?icon;
final String ?image;
final int index;
  final VoidCallback onTap;
    final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 10),
      child: Column(children: [
        Row
      
      (
        children: [
          if (icon != null)
            Icon(icon, color: AppColors.salmon, size: 40,),
          if (icon == null && image != null)
            SizedBox(width: MediaQuery.of(context).size.width*.1,child: Image(image: AssetImage(image!),color: AppColors.salmon,)),
      
      Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Text(text,style: AppStyles.textStyle24.copyWith(fontSize: 16,fontWeight: FontWeight.bold),),
      ),
      const Spacer(),
       CustomRadioButton(isSelected:selectedIndex==index ,onTap: onTap),
      
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