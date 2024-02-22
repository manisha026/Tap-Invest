import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tap_invest/app/app.dart';
import 'package:tap_invest/app/theme/styles.dart';
import 'package:slide_action/slide_action.dart';
import 'dart:async';
import 'package:flutter/services.dart';

class PurchaseScreen extends StatelessWidget {
  const PurchaseScreen({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<PurchaseController>(
        builder: (controller) => Scaffold(
          body: SafeArea(
            child: GetBuilder<PurchaseController>(
              builder: (controller) => Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back<dynamic>();
                          },
                          child: Padding(
                            padding: Dimens.edgeInsets16_16_16_0,
                            child: SvgPicture.asset(
                              AssetConstants.backPurchase,
                            ),
                          ),
                        ),
                        Dimens.boxHeight16,
                        Padding(
                          padding: Dimens.edgeInsets16_0_16_0,
                          child: Text(
                            'Purchasing',
                            style: Styles.black18,
                          ),
                        ),
                        Dimens.boxHeight12,
                        Padding(
                            padding: Dimens.edgeInsets16_0_16_0,
                            child: Row(
                              children: [
                                Text(
                                  'Agrizy ',
                                  style: Styles.darkGreyColor14,
                                ),
                                const Icon(Icons.arrow_back,
                                    color: ColorsValue.blackOpacityColor),
                                Text(
                                  ' Keshav Industries',
                                  style: Styles.darkGreyColor14,
                                ),
                              ],
                            )),
                        Dimens.boxHeight32,
                        Divider(
                          thickness: Dimens.one,
                          color: ColorsValue.borderGreyColor,
                        ),
                        Dimens.boxHeight24,
                        Padding(
                          padding: Dimens.edgeInsets16_0_16_0,
                          child: Center(
                            child: Text(
                              'ENTER AMOUNT',
                              style: Styles.greyHintColor12,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Dimens.boxWidth10,
                            Expanded(
                              flex: 1,
                              child: Text(
                                '₹',
                                textAlign: TextAlign.end,
                                style: Styles.rupeeGrey24,
                              ),
                            ),
                            Dimens.boxWidth8,
                            Flexible(
                              flex: 2,
                              child: FormFieldWidget(
                                contentPadding: Dimens.edgeInsets0_16_0_16,
                                labelText: 'Min 50,000',
                                textInputAction: TextInputAction.done,
                                textInputType:
                                    const TextInputType.numberWithOptions(
                                        decimal: true),
                                formStyle: Styles.black24,
                                hintStyle: Styles.rupeeGrey24,
                                labelStyle: Styles.rupeeGrey24,
                                errorText: controller.amountErrorText,
                                maxLength: 10,
                                cursorColor: Colors.black,
                                errorStyle: Styles.redColor16,
                                textEditingController:
                                    controller.amountEditingController,
                                onChange: (String val) {
                                  controller.calculateReturn(val);
                                },
                              ),
                            )
                          ],
                        ),
                        Dimens.boxHeight24,
                        Padding(
                          padding: Dimens.edgeInsets16_0_16_0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Returns',
                                style: Styles.blackLight12,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '₹',
                                      style: Styles.rupeeGrey14,
                                    ),
                                    TextSpan(
                                      text:
                                          ' ${controller.updateValueByComma(double.parse(controller.detectZero(controller.totalReturn)))}',
                                      style: Styles.blackLight16,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Dimens.boxHeight23,
                        Divider(
                          thickness: Dimens.one,
                          color: ColorsValue.borderGreyColor,
                        ),
                        Dimens.boxHeight16,
                        Padding(
                          padding: Dimens.edgeInsets16_0_16_0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Net Yield',
                                      style: Styles.blackLight12,
                                    ),
                                    TextSpan(
                                      text: '  IRR ',
                                      style: Styles.green12,
                                    ),
                                    WidgetSpan(
                                      child: SvgPicture.asset(
                                          width: Dimens.thirteen,
                                          height: Dimens.thirteen,
                                          AssetConstants.info),
                                    ),
                                  ],
                                ),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '13.11',
                                      style: Styles.blackLight16,
                                    ),
                                    TextSpan(
                                      text: ' %',
                                      style: Styles.rupeeGrey14,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Dimens.boxHeight16,
                        Divider(
                          thickness: Dimens.one,
                          color: ColorsValue.borderGreyColor,
                        ),
                        Dimens.boxHeight23,
                        Padding(
                          padding: Dimens.edgeInsets16_0_16_0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Tenure',
                                style: Styles.blackLight12,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '61',
                                      style: Styles.blackLight16,
                                    ),
                                    TextSpan(
                                      text: ' days',
                                      style: Styles.rupeeGrey14,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                  ),
                  Column(
                    children: [
                      Divider(
                        thickness: Dimens.one,
                        color: ColorsValue.borderGreyColor,
                      ),
                      Container(
                        width: Dimens.percentWidth(1),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: Dimens.edgeInsets20,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Balance: ₹1,00,000',
                                    style: Styles.blackTitleColor12,
                                  ),
                                  Text(
                                    'Required: ₹${controller.requiredAmount > 0 ? controller.updateValueByComma(double.parse(controller.detectZero(double.parse(controller.requiredAmount.toStringAsFixed(2))))) : 0}',
                                    style: Styles.blackTitleColor12,
                                  ),
                                ],
                              ),
                              Dimens.boxHeight16,
                              SimpleExample(
                                stretchThumb: true,
                                callback: () {
                                  controller.swipeToPay();
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class SimpleExample extends StatelessWidget {
  const SimpleExample({
    this.rightToLeft = false,
    this.callback,
    this.stretchThumb = false,
    this.resetCurve = Curves.easeOut,
    this.resetDuration = const Duration(milliseconds: 1000),
    this.thumbWidth,
    Key? key,
  }) : super(key: key);

  final bool rightToLeft;
  final FutureOr<void> Function()? callback;
  final bool stretchThumb;
  final Curve resetCurve;
  final Duration resetDuration;
  final double? thumbWidth;

  @override
  Widget build(BuildContext context) {
    return SlideAction(
      trackHeight: Dimens.fourtyFive,
      snapAnimationCurve: resetCurve,
      snapAnimationDuration: resetDuration,
      stretchThumb: stretchThumb,
      thumbWidth: thumbWidth,
      rightToLeft: rightToLeft,
      trackBuilder: (context, state) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: ColorsValue.swipeGreyColor,
          ),
          child: Center(
            child: Text(
              "SWIPE TO PAY",
            ),
          ),
        );
      },
      thumbBuilder: (context, state) {
        return Container(
          // margin: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: ColorsValue.greenColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: stretchThumb ? 64 : double.infinity,
              child: Center(
                child: Icon(
                  rightToLeft ? Icons.chevron_left : Icons.chevron_right,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      },
      action: callback,
    );
  }
}
