import 'package:flutter/material.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/payment_card_view_body.dart';

class PaymentCardView extends StatelessWidget {
  const PaymentCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: PaymentCardViewBody(),);
  }
}