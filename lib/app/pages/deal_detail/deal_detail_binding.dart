import 'package:get/get.dart';
import 'package:tap_invest/app/app.dart';

class DealDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      DealDetailController.new,
    );
  }
}
