import 'package:flutter/material.dart';
import 'package:tap_invest/app/pages/deal_detail/deal_detail_controller.dart';
import 'package:tap_invest/app/theme/colors_value.dart';
import 'package:tap_invest/app/theme/dimens.dart';
import 'package:tap_invest/app/theme/styles.dart';

class MetricsItemTile extends StatelessWidget {
  const MetricsItemTile({
    Key? key,
    required this.controller, required this.isMetrics,
  }) : super(key: key);

  final DealDetailController controller;
  final bool isMetrics;

  @override
  Widget build(BuildContext context) =>
      Padding(
          padding: Dimens.edgeInsets16_0_16_0,
          child: Container(
            width: Dimens.percentWidth(1),
            height: Dimens.hundredFourty,
            decoration: BoxDecoration(
              color: ColorsValue.bgColor,
              border: Border.all(
                  color: ColorsValue.borderGreyColor,
                  width: Dimens.one),
              borderRadius: BorderRadius.circular(
                Dimens.ten,
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                    width: Dimens.one,
                                    color: ColorsValue
                                        .borderGreyColor),
                                bottom: BorderSide(
                                    width: Dimens.one,
                                    color: ColorsValue
                                        .borderGreyColor),
                              ),
                            ),
                            child: Padding(
                              padding: Dimens
                                  .edgeInsets16_0_16_0,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .center,
                                children: [
                                  Text(isMetrics ?
                                    'ACTIVE DEALS':
                                    'MIN INVT',
                                    style: Styles
                                        .darkGreyColor10,
                                  ),
                                  Dimens.boxHeight4,
                                  isMetrics ?
                                  RichText(
                                    text: TextSpan(
                                      children: [

                                        TextSpan(
                                          text: '6',
                                          style: Styles
                                              .black16,
                                        ),
                                        TextSpan(
                                          text: ' of ',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                        TextSpan(
                                          text: '18',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                      ],
                                    ),
                                  ):
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '₹',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                        TextSpan(
                                          text: ' 1 ',
                                          style: Styles
                                              .black16,
                                        ),
                                        TextSpan(
                                          text: 'Lakh',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                    width: Dimens.one,
                                    color: ColorsValue
                                        .borderGreyColor),
                              ),
                            ),
                            child: Padding(
                              padding: Dimens
                                  .edgeInsets16_0_16_0,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .center,
                                children: [
                                  Text(
                                    isMetrics ?
                                    'RAISED':
                                    'TENURE',
                                    style: Styles
                                        .darkGreyColor10,
                                  ),
                                  Dimens.boxHeight4,
                                  isMetrics ?
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '₹',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                        TextSpan(
                                          text: ' 6.94 ',
                                          style: Styles
                                              .black16,
                                        ),
                                        TextSpan(
                                          text: 'Cr',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                      ],
                                    ),
                                  ):
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '61 ',
                                          style: Styles
                                              .black16,
                                        ),
                                        TextSpan(
                                          text: 'days',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                    width: Dimens.one,
                                    color: ColorsValue
                                        .borderGreyColor),
                              ),
                            ),
                            child: Padding(
                              padding: Dimens
                                  .edgeInsets16_0_16_0,
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .center,
                                children: [
                                  Text(isMetrics?
                                    'MATURED DEALS':
                                    'NET YIELD',
                                    style: Styles
                                        .darkGreyColor10,
                                  ),
                                  Dimens.boxHeight4,
                                  isMetrics ?
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '12',
                                          style: Styles
                                              .black16,
                                        ),
                                        TextSpan(
                                          text: ' of ',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                        TextSpan(
                                          text: '18',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                      ],
                                    ),
                                  ):
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '13.23 ',
                                          style: Styles
                                              .black16,
                                        ),
                                        TextSpan(
                                          text: '%',
                                          style: Styles
                                              .lightGreyColor16,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding:
                          Dimens.edgeInsets16_0_16_0,
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              Text(isMetrics?
                                'ON TIME PAYMENT':
                                'RAISED',
                                style:
                                Styles.darkGreyColor10,
                              ),
                              Dimens.boxHeight4,
                              RichText(
                                text: TextSpan(
                                  children: [ isMetrics ?
                                    TextSpan(
                                      text: '100 ',
                                      style: Styles.black16,
                                    ):
                                  TextSpan(
                                      text: '70 ',
                                      style: Styles.black16,
                                    ),
                                    TextSpan(
                                      text: '%',
                                      style: Styles
                                          .lightGreyColor16,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ));
}
