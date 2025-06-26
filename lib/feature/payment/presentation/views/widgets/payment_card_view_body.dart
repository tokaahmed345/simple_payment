import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/build_card_item.dart';

import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/custom_text.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/custom_textfeild.dart';

class PaymentCardViewBody extends StatelessWidget {
  const PaymentCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildCardItem(),
          const SizedBox(height: 30,),
          const CustomText(
            text: "Card Holder Name",
          ),
          const SizedBox(height: 4),
          const CustomTextFeild(
            text: "Enter Your Card Holder Name",
          ),
          const SizedBox(height: 40),
          const CustomText(
            text: "Card Number",
          ),
          const SizedBox(height: 4),
          const CustomTextFeild(
            text: "Enter Your Card Number",
          ),
          const SizedBox(height: 40),
          const Row(
            children: [
              SizedBox(
                width: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(text: "Expiry Date"),
                    SizedBox(height: 4),
                    CustomTextFeild(),
                  ],
                ),
              ),
              Spacer(
                flex: 4,
              ),
              SizedBox(
                width: 80,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.center,
                        child: CustomText(text: "CVV")),
                    SizedBox(height: 4),
                    CustomTextFeild(),
                  ],
                ),
              ),
              Spacer(
                flex: 3,
              ),
            ],
          ),
          const Spacer(),
          Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: saveData,
                child: const Text(
                  "Save Card",
                  style: AppStyles.textStyle24,
                ),
              )),
          const Spacer(),
        ],
      ),
    );
  }

  void saveData() {}
}
