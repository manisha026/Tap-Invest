import 'package:get/get.dart';
import 'package:tap_invest/app/app.dart';

class PurchaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      PurchaseController.new,
    );
  }
}
