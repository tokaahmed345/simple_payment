import 'package:get/get_navigation/get_navigation.dart';
import 'package:simplepaymentcard/core/utils/router/routes.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/pages/payment_card_view.dart';
import 'package:simplepaymentcard/feature/payment/presentation/view/pages/payment_methods_view.dart';

class AppPages {

static final pages=[
  GetPage(name: AppRoutes.paymentMethods, page: ()=>const PaymentMethodsView()),
  GetPage(name: AppRoutes.paymentCard, page: ()=> PaymentCardView())





]


;

}