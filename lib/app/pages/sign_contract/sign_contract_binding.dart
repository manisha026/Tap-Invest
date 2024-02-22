import 'package:get/get.dart';
import 'package:tap_invest/app/app.dart';

class SignContractBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      SignContractController.new,
    );
  }
}
