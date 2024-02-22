import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:tap_invest/app/app.dart';
import 'package:tap_invest/app/theme/styles.dart';

class PaymentDoneScreen extends StatelessWidget {
  const PaymentDoneScreen({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<PaymentDoneController>(
        builder: (controller) => Scaffold(
          backgroundColor: ColorsValue.greenColor,
          body: GetBuilder<PaymentDoneController>(
            builder: (controller) => Stack(
              children: [
                controller.showAnimation
                    ? SizedBox(
                        height: Dimens.percentHeight(1),
                        width: Dimens.percentWidth(1),
                        child: Lottie.asset(
                          AssetConstants.flow,
                          frameRate: FrameRate.max,
                          onLoaded: (LottieComposition d) {},
                        ),
                      )
                    : SizedBox(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 250,
                      child: Stack(
                        children: [
                          Positioned(
                            top: 100,
                            left: 125,
                            child: AnimatedBuilder(
                              animation: controller.fadeAnimationController,
                              builder: (context, widget) => Transform.translate(
                                offset: _bounceOffset(
                                    controller.fadeAnimationController.value),
                                child: Container(
                                    width: Dimens.hundredTwenty,
                                    height: Dimens.hundredTwenty,
                                    decoration: BoxDecoration(
                                      color: ColorsValue.transGreenColor,
                                      borderRadius: BorderRadius.circular(
                                        Dimens.ten,
                                      ),
                                    ),
                                    child: controller.showGenerateContract
                                        ? Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Transform.translate(
                                                  offset: _bounceOffset(
                                                      controller
                                                          .generateDocAnimation
                                                          .value),
                                                  child: SvgPicture.asset(
                                                    AssetConstants.contract,
                                                  ))
                                            ],
                                          )
                                        : controller.allDone
                                            ? Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    AssetConstants.allDone,
                                                  )
                                                ],
                                              )
                                            : Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  Visibility(
                                                    visible:
                                                        controller.rotateFlower,
                                                    child: RotationTransition(
                                                      turns: Tween(
                                                              begin: 0.0,
                                                              end: 1.0)
                                                          .animate(controller
                                                              .slideAnimationController),
                                                      child: SvgPicture.asset(
                                                        AssetConstants.tick,
                                                      ),
                                                    ),
                                                  ),
                                                  controller.showTick
                                                      ? const Icon(
                                                          Icons.check,
                                                          color: ColorsValue
                                                              .transGreenColor,
                                                        )
                                                      : SizedBox(),
                                                ],
                                              )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    if (controller.showFirstText) ...[
                      Text(
                          controller.showGenerateContract
                              ? 'Generating Contract'
                              : controller.allDone
                                  ? 'All Done!'
                                  : 'Payment done',
                          style: Styles.whiteColor18),
                      Dimens.boxHeight16,
                      Text(
                          controller.allDone
                              ? 'Redirecting you to the dashboard.'
                              : 'You are almost there!',
                          style: Styles.whiteColor12),
                      Dimens.boxHeight4,
                      controller.allDone
                          ? SizedBox()
                          : Text(
                              'Do not leave this page, or press the back button',
                              style: Styles.whiteColor12),
                    ]
                  ],
                ),
              ],
            ),
          ),
        ),
      );
}

Offset _bounceOffset(double animationValue) {
  const cyclesPerAnimation = 2;
  const bounceOffset = 10;
  return Offset(
    0,
    sin(animationValue * pi * 2 * cyclesPerAnimation) * bounceOffset,
  );
}
