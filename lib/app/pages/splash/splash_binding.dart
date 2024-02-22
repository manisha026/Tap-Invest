import 'package:get/get.dart';
import 'package:tap_invest/app/pages/splash/splash_controller.dart';

/// A list of bindings which will be used in the route of [SplashScreen].
class SplashBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      SplashController.new,
    );
  }
}
