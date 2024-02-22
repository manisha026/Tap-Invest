import 'package:get/get.dart';

import 'app_pages.dart';

/// A chunk of routes taken in the application.
///
/// Will be ignored for test since all are static values and would not change.
abstract class RouteManagement {
  static void goToSplash() {
    Get.toNamed<void>(Routes.splash);
  }

  static void goToDealDetail() {
    Get.toNamed<void>(Routes.dealDetail);
  }

  static void goToPurchase() {
    Get.toNamed<void>(Routes.purchase);
  }

  static void goToPaymentDone() {
    Get.toNamed<void>(Routes.paymentDone);
  }

  static void goToSignContract() {
    Get.toNamed<void>(Routes.signContract);
  }
}
