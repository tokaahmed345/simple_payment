import 'package:flutter/material.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/payment_methods_view_body.dart';

class PaymentMethodsView extends StatelessWidget {
  const PaymentMethodsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PaymentMethodsViewBody(),
    );
  }
}