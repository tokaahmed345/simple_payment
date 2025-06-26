import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:simplepaymentcard/core/utils/router/routes.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/custom_appbar_section.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/custom_payment_methods_body_section.dart';

class PaymentMethodsViewBody extends StatelessWidget {
  const PaymentMethodsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 40.0),
            child: CustomAppBarSection(
              title: "Payment Method",
            ),
          ),
          const CustomBodySecion(
            text: '*** *** *** 67',
            icon: Icons.credit_card,
          ),
          const CustomBodySecion(
              text: 'Apple Play', icon: Icons.apple_outlined),
          const CustomBodySecion(
            text: 'PayPal',
            icon: Icons.paypal_outlined,
          ),
          const CustomBodySecion(
            text: 'Cash',
            icon: Icons.attach_money,
          ),
          const Spacer(),

// CustomButton(text: 'Add New Card',onPressed:(){
//   Get.toNamed(AppRoutes.paymentCard);

// }
          TextButton(
              onPressed: () {
                Get.toNamed(AppRoutes.paymentCard);
              },
              child: const Text(
                "Add New Card",
                style: AppStyles.textStyle24,
              )),
          const SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}
