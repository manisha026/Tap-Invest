
import 'package:get/get.dart';
import 'package:tap_invest/app/navigators/routes_management.dart';

class SplashController extends GetxController{


  @override
  void onInit() {
    goToNewScreen();
    super.onInit();
  }

  Future<void> goToNewScreen() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 800)).then((dynamic value) {
      RouteManagement.goToDealDetail();
    });

  }
}
