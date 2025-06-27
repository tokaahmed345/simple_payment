import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/build_card_item.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/build_expiry_date_item.dart';

import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/custom_text.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/custom_textfeild.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view_model/card_controller.dart';

class PaymentCardViewBody extends StatelessWidget {
  PaymentCardViewBody({super.key});
  final CardController cardController = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildCardItem(),
                const SizedBox(
                  height: 30,
                ),
                const CustomText(
                  text: "Card Holder Name",
                ),
                const SizedBox(height: 4),
                CustomTextFeild(
                  text: "Enter Your Card Holder Name",
                  onChanged: (value) {
                    // Handle card holder name input
                    cardController.updateCardHolderName(value);
                  },
                ),
                const SizedBox(height: 40),
                const CustomText(
                  text: "Card Number",
                ),
                const SizedBox(height: 4),
                CustomTextFeild(
                  text: "Enter Your Card Number",
                  maxLength: 16,
                  onChanged: (value) {
                    // Handle card number input
                    cardController.updateCardNumber(value);
                  },
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    SizedBox(
                      width: 80,
                      child: BuildExpiryDateTxtField(
                        cardController: cardController,
                      ),
                    ),
                    const Spacer(
                      flex: 4,
                    ),
                    SizedBox(
                      width: 80,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                              alignment: Alignment.center,
                              child: CustomText(text: "CVV")),
                          const SizedBox(height: 4),
                          CustomTextFeild(
                            maxLength: 3,
                            onChanged: (value) {
                              // Handle CVV input
                              cardController.updateCvv(value);
                            },
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(
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
          ),
        ],
      ),
    );
  }

  void saveData() {}
}
