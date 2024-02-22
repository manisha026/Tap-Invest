import 'package:get/get.dart';
import 'package:tap_invest/app/app.dart';

class PaymentDoneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      PaymentDoneController.new,
    );
  }
}
