import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:tap_invest/app/navigators/navigators.dart';

class PaymentDoneController extends GetxController
    with GetTickerProviderStateMixin {
  var showBuki = true;
  var rotateFlower = true;
  var showTick = false;
  var showFirstText = false;
  var showBackground = false;
  var showAnimation = false;
  var showGenerateContract = false;
  var allDone = false;

  late final Animation<double> fadeAnimation;
  late AnimationController fadeAnimationController;
  late final Animation<double> slideAnimation;
  late final Animation<double> generateDocAnimation;
  late AnimationController slideAnimationController;
  late AnimationController generateDocAnimationController;

  @override
  void onInit() {
    fadeAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    fadeAnimation = CurvedAnimation(
        parent: fadeAnimationController, curve: Curves.bounceInOut);
    Future<dynamic>.delayed(const Duration(seconds: 1)).then((dynamic value) {
      showBuki = true;
      update();
      fadeAnimationController.forward();
    });
    Future<dynamic>.delayed(const Duration(seconds: 2)).then((dynamic value) {
      showTick = true;
      update();
    });
    Future<dynamic>.delayed(const Duration(seconds: 1)).then((dynamic value) {
      showFirstText = true;
      update();
    });
    Future<dynamic>.delayed(const Duration(seconds: 2)).then((dynamic value) {
      showBackground = true;
      update();
    });
    slideAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    slideAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(parent: slideAnimationController, curve: Curves.ease));
    Future<dynamic>.delayed(const Duration(milliseconds: 2500))
        .then((dynamic value) {
      rotateFlower = true;
      showAnimation = true;
      update();
      slideAnimationController.forward();
    });
    generateDocAnimationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));
    generateDocAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: generateDocAnimationController, curve: Curves.ease));

    Future<dynamic>.delayed(const Duration(milliseconds: 5000))
        .then((dynamic value) {
      showGenerateContract = true;
      update();
    });

    Future<dynamic>.delayed(const Duration(milliseconds: 5000))
        .then((dynamic value) {
      showGenerateContract = true;
      update();
    });

    Future<dynamic>.delayed(const Duration(milliseconds: 6000))
        .then((dynamic value) {
      showGenerateContract = false;
      RouteManagement.goToSignContract();
    });
    super.onInit();
  }
}
