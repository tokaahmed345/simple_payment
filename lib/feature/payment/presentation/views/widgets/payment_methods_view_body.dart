import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:simplepaymentcard/core/utils/router/routes.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/custom_appbar_section.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/custom_payment_methods_body_section.dart';

class PaymentMethodsViewBody extends StatefulWidget {
  const PaymentMethodsViewBody({super.key});

  @override
  State<PaymentMethodsViewBody> createState() => _PaymentMethodsViewBodyState();
}

class _PaymentMethodsViewBodyState extends State<PaymentMethodsViewBody> {
  int selectedIndexed=0;
    int index=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 10),
      child:  Column(
        children: [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 40.0),
        child: CustomAppBarSection(title: "Payment Method",),
      ),
      CustomBodySecion
     (
      selectedIndex: selectedIndexed,
      index: 0,
      onTap: (){setState(() {
        selectedIndexed=0;
      });},
      text: '*** *** *** 67',icon: Icons.credit_card,),
       CustomBodySecion( selectedIndex: selectedIndexed,
      index: 1,
      onTap: (){setState(() {
        selectedIndexed=1;
      });},text: 'Apple Play',image: 'assets/images/apple.png',),
      CustomBodySecion( selectedIndex: selectedIndexed,
      index: 2,
      onTap: (){setState(() {
        selectedIndexed=2;
      });},text: 'PayPal',image: 'assets/images/paypal.png',),
       CustomBodySecion( selectedIndex: selectedIndexed,
      index: 3,
      onTap: (){setState(() {
        selectedIndexed=3;
      });},text: 'Cash',icon: Icons.attach_money,),
      const Spacer(),

//
TextButton(onPressed: (){Get.toNamed(AppRoutes.paymentCard);},  child:const Text("Add New Card",style:AppStyles.textStyle24,) )
,
       const SizedBox(height: 60,)
        ],
      ),
    );
  }
}