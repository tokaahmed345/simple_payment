import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/diagonal_clipper_right.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/widgets/diagonal_clipper_left.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view_model/card_controller.dart';

class BuildCardItem extends StatelessWidget {
  BuildCardItem({super.key});

  final CardController cardController = Get.put(CardController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.beige,
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.08),
            // color: Colors.black.withOpacity(0.08),  // deprecated
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            // الجزء المائل العلوي الأيسر
            Align(
              alignment: Alignment.topLeft,
              child: ClipPath(
                clipper: DiagonalClipperLeft(),
                child: Container(
                  height: 100,
                  width: 200,
                  color: AppColors.salmon,
                ),
              ),
            ),

            // الجزء المائل العلوي الأيمن
            Align(
              alignment: Alignment.topRight,
              child: ClipPath(
                clipper: DiagonalClipperRight(),
                child: Container(
                  height: 100,
                  width: 200,
                  color: AppColors.salmon,
                ),
              ),
            ),

            // المستطيل في الأعلى يمين
            const Positioned(
              top: 16,
              right: 20,
              child: Icon(
                Icons.crop_5_4,
                color: AppColors.teracotta,
                size: 25,
              ),
            ),

            // المحتوى
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                left: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 7),
                  GetX(builder: (CardController cardController) {
                    return Text(
                      cardController.cardNumber.value,
                      style: AppStyles.textStyle18,
                    );
                  }),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Card holder name',
                              style: AppStyles.textStyle12,
                            ),
                            const SizedBox(height: 4),
                            GetX(builder: (CardController cardController) {
                              return SizedBox(
                                width: MediaQuery.of(context).size.width * 0.25,
                                child: Text(
                                  cardController.cardHolderName.value,
                                  style: AppStyles.textStyle12.copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.teracotta,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Expiry date',
                              style: AppStyles.textStyle12,
                            ),
                            const SizedBox(height: 4),
                            GetX(builder: (CardController cardController) {
                              return Text(
                                cardController.expiryDate.value,
                                style: AppStyles.textStyle12.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.teracotta,
                                ),
                              );
                            }),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Image.asset("assets/images/icon.png"),
                    ],
                  ),
                  const Spacer(
                    flex: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
