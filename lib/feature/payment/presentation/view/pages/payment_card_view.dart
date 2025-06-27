import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/payment_card_view_body.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view_model/card_controller.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

class PaymentCardView extends StatelessWidget {
  final CardController cardController = Get.put(CardController());

  PaymentCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GetX(builder: (CardController cardController) {
              return Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: AppColors.teracotta, width: 2),
                    image: DecorationImage(
                      image: (cardController.fileImagePath.value.isEmpty)
                          ? AssetImage(cardController.assetImagePath.value)
                          : FileImage(File(cardController.fileImagePath.value)),
                    )),
              );
            }),
          ),
          onTap: () {
            cardController.pickProfileImage();
          },
        ),
        title: const Text(
          "Add Card",
        ),
      ),
      body: PaymentCardViewBody(),
    );
  }
}
