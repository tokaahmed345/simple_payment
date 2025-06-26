import 'package:flutter/material.dart';
import 'package:simplepaymentcard/core/utils/colors/colors.dart';
import 'package:simplepaymentcard/core/utils/styles/style.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/diagonal_clipper_right.dart';
import 'package:simplepaymentcard/feature/payment/presentation/views/widgets/diagonal_clipper_left.dart';

class BuildCardItem extends StatelessWidget {
  const BuildCardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.beige,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 6,
            offset: const Offset(0, 3),
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
                top: 30,
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 7),
                  const Text(
                    '000 000 000 00',
                    style: AppStyles.textStyle18,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Card holder name',
                            style: AppStyles.textStyle12,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Kathryn Murphy',
                            style: AppStyles.textStyle12.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.teracotta,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Expiry date',
                            style: AppStyles.textStyle12,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '04/28',
                            style: AppStyles.textStyle12.copyWith(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: AppColors.teracotta,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Image.asset("assets/icon.png"),
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
