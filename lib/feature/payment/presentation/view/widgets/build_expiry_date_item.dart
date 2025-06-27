import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/custom_text.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/custom_textfeild.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view_model/card_controller.dart';

class BuildExpiryDateTxtField extends StatelessWidget {
  const BuildExpiryDateTxtField({super.key, this.cardController});
  final CardController? cardController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomText(text: "Expiry Date"),
        const SizedBox(height: 4),
        CustomTextFeild(
          maxLength: 5,
          onChanged: (value) {
            // Handle expiry date input
            cardController?.updateExpiryDate(value);
          },
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          inputFormatters: [
            // Limit input to digits and slash
            FilteringTextInputFormatter.allow(RegExp(r'[0-9/]')),
            LengthLimitingTextInputFormatter(5),
            // Add a custom formatter to insert slash automatically
            TextInputFormatter.withFunction((oldValue, newValue) {
              var text = newValue.text;
              if (text.length == 2 && !text.contains('/')) {
                // Auto-insert slash after 2 digits
                text = '$text/';
              }
              return TextEditingValue(
                text: text,
                selection: TextSelection.collapsed(offset: text.length),
              );
            }),
          ],
          buildCounter: (BuildContext context,
              {int? currentLength, bool? isFocused, int? maxLength}) {
            // Always show "4", regardless of currentLength
            return const Text('MM/YY');
          },
        ),
      ],
    );
  }
}
