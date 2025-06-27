
import 'package:flutter/material.dart';

import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/build_profile_img.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/payment_card_view_body.dart';


class PaymentCardView extends StatelessWidget {

  PaymentCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BuildProfileImg(),
        title: const Text(
          "Add Card",
        ),
      ),
      body: PaymentCardViewBody(),
    );
  }

// Function to show the options and pick image accordingly
 }
