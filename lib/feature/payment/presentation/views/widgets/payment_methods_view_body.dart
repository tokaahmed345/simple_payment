import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:simplepaymentcard/core/utils/router/routes.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
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
         const Spacer(),
        ],
      ),
    );
  }
}
