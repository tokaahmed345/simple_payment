import 'package:get/get.dart';

class CardController extends GetxController {

RxString cardHolderName = 'Kathryn Murphy'.obs;
RxString cardNumber = '0000 0000 0000 0000'.obs;
RxString expiryDate = '04/28'.obs;
RxString cvv = ''.obs;

  void updateCardHolderName(String name) {
    cardHolderName.value = name;
  }

  void updateCardNumber(String number) {
    cardNumber.value = number;
  }

  void updateExpiryDate(String date) {
    expiryDate.value = date;
  }

  void updateCvv(String cvvCode) {
    cvv.value = cvvCode;
  }


}