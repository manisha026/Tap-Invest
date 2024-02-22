import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tap_invest/app/app.dart';
import 'package:tap_invest/app/theme/styles.dart';

class DealDetailScreen extends StatelessWidget {
  const DealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<DealDetailController>(
        builder: (controller) => Scaffold(
          appBar: titleAppbar(
            title: 'Back to Deals',
            centreTile: false,
          ),
          body: SafeArea(
            child: GetBuilder<DealDetailController>(
                builder: (controller) => Column(
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: Dimens.edgeInsets16_16_16_0,
                                    child: Container(
                                        width: Dimens.hundred,
                                        height: Dimens.hundred,
                                        padding: Dimens.edgeInsets16,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                                  ColorsValue.borderGreyColor,
                                              width: Dimens.one),
                                          borderRadius: BorderRadius.circular(
                                            Dimens.ten,
                                          ),
                                        ),
                                        child: SvgPicture.asset(
                                          AssetConstants.icHeader,
                                        ))),
                                Dimens.boxHeight12,
                                Padding(
                                    padding: Dimens.edgeInsets16_0_16_0,
                                    child: Row(
                                      children: [
                                        Text(
                                          'Agrizy ',
                                          style: Styles.blackSB18,
                                        ),
                                        const Icon(Icons.arrow_back,
                                            color:
                                                ColorsValue.blackOpacityColor),
                                        Text(
                                          ' Keshav Industries',
                                          style: Styles.darkGreyColorSB18,
                                        ),
                                      ],
                                    )),
                                Dimens.boxHeight8,
                                Padding(
                                    padding: Dimens.edgeInsets16_0_16_0,
                                    child: Text(
                                      'Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.',
                                      style: Styles.darkGreyColor14,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    )),
                                Dimens.boxHeight16,
                                MetricsItemTile(
                                    controller: controller, isMetrics: false),
                                Dimens.boxHeight32,
                                Divider(
                                  thickness: Dimens.one,
                                  color: ColorsValue.borderGreyColor,
                                ),
                                Dimens.boxHeight24,
                                Padding(
                                  padding: Dimens.edgeInsets16_0_16_0,
                                  child: Text(
                                    'Clients',
                                    style: Styles.blackTitleColor16,
                                  ),
                                ),
                                Dimens.boxHeight8,
                                SizedBox(
                                  height: Dimens.twentyFour,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    padding: Dimens.edgeInsets16_0_16_0,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 3,
                                    itemBuilder: (_, index) => SvgPicture.asset(
                                      AssetConstants.icGoogle,
                                    ),
                                    separatorBuilder: (_, __) =>
                                        Dimens.boxWidth16,
                                  ),
                                ),
                                Dimens.boxHeight24,
                                Padding(
                                  padding: Dimens.edgeInsets16_0_16_0,
                                  child: Text(
                                    'Backed by',
                                    style: Styles.blackTitleColor16,
                                  ),
                                ),
                                Dimens.boxHeight8,
                                SizedBox(
                                  height: Dimens.twentyFour,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    padding: Dimens.edgeInsets16_0_16_0,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 3,
                                    itemBuilder: (_, index) => SvgPicture.asset(
                                      AssetConstants.icGoogle,
                                    ),
                                    separatorBuilder: (_, __) =>
                                        Dimens.boxWidth16,
                                  ),
                                ),
                                Dimens.boxHeight32,
                                Divider(
                                  thickness: Dimens.one,
                                  color: ColorsValue.borderGreyColor,
                                ),
                                Dimens.boxHeight24,
                                Padding(
                                  padding: Dimens.edgeInsets16_0_16_0,
                                  child: Text(
                                    'Highlights',
                                    style: Styles.blackTitleColor16,
                                  ),
                                ),
                                Dimens.boxHeight16,
                                SizedBox(
                                  height: Dimens.hundredFifty,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    padding: Dimens.edgeInsets16_0_16_0,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 2,
                                    itemBuilder: (_, index) => Container(
                                        width: Dimens.percentWidth(0.85),
                                        height: Dimens.hundredFifty,
                                        padding: Dimens.edgeInsets16,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              color:
                                                  ColorsValue.borderGreyColor,
                                              width: Dimens.one),
                                          borderRadius: BorderRadius.circular(
                                            Dimens.ten,
                                          ),
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            SvgPicture.asset(
                                              AssetConstants.icHighlight,
                                            ),
                                            Dimens.boxHeight8,
                                            Text(
                                              'Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.',
                                              style: Styles.darkGreyColor14,
                                            )
                                          ],
                                        )),
                                    separatorBuilder: (_, __) =>
                                        Dimens.boxWidth16,
                                  ),
                                ),
                                Dimens.boxHeight32,
                                Divider(
                                  thickness: Dimens.one,
                                  color: ColorsValue.borderGreyColor,
                                ),
                                Dimens.boxHeight24,
                                Padding(
                                  padding: Dimens.edgeInsets16_0_16_0,
                                  child: Text(
                                    'Key Metrics',
                                    style: Styles.blackTitleColor16,
                                  ),
                                ),
                                Dimens.boxHeight16,
                                SizedBox(
                                  height: Dimens.twentyEight,
                                  child: ListView.separated(
                                    shrinkWrap: true,
                                    padding: Dimens.edgeInsets16_0_16_0,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: controller.keyMetrics.length,
                                    itemBuilder: (_, index) => Container(
                                        width: Dimens.percentWidth(0.25),
                                        padding: Dimens.edgeInsets8,
                                        height: Dimens.hundredFifty,
                                        decoration: BoxDecoration(
                                          color: controller.keyMetrics[index]
                                                  ['isSelected']
                                              ? ColorsValue.greenColor
                                              : ColorsValue.borderGreyColor,
                                          borderRadius: BorderRadius.circular(
                                            Dimens.five,
                                          ),
                                        ),
                                        child: Text(
                                          controller.keyMetrics[index]['name'],
                                          textAlign: TextAlign.center,
                                          style: controller.keyMetrics[index]
                                                  ['isSelected']
                                              ? Styles.whiteColor10
                                              : Styles.darkGreyColor10,
                                        )),
                                    separatorBuilder: (_, __) =>
                                        Dimens.boxWidth16,
                                  ),
                                ),
                                Dimens.boxHeight16,
                                MetricsItemTile(
                                    controller: controller, isMetrics: true),
                                Dimens.boxHeight32,
                                Divider(
                                  thickness: Dimens.one,
                                  color: ColorsValue.borderGreyColor,
                                ),
                                Dimens.boxHeight24,
                                Padding(
                                  padding: Dimens.edgeInsets16_0_16_0,
                                  child: Text(
                                    'Documents',
                                    style: Styles.blackTitleColor16,
                                  ),
                                ),
                                Dimens.boxHeight16,
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: 2,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder: (context, index) => Column(
                                          children: [
                                            Container(
                                                width: Dimens.percentWidth(1),
                                                padding: Dimens.edgeInsets16,
                                                margin:
                                                    Dimens.edgeInsets16_6_16_6,
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: ColorsValue
                                                          .borderGreyColor,
                                                      width: Dimens.one),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    Dimens.ten,
                                                  ),
                                                ),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      SvgPicture.asset(
                                                        AssetConstants.document,
                                                      ),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Expanded(
                                                            flex: 5,
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Dimens
                                                                    .boxHeight16,
                                                                Text(
                                                                  index == 0
                                                                      ? 'Invoice Discounting Contract'
                                                                      : 'Company Pitch Deck',
                                                                  style: Styles
                                                                      .blackTitleColor14,
                                                                ),
                                                                Dimens
                                                                    .boxHeight8,
                                                                Text(
                                                                  index == 0
                                                                      ? 'All the legalese surrounding this deal and how it relates to you.'
                                                                      : 'Read more about the company and see how they pitch to investors.',
                                                                  style: Styles
                                                                      .darkGreyColor14,
                                                                )
                                                              ],
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex: 1,
                                                            child: SvgPicture
                                                                .asset(
                                                              AssetConstants
                                                                  .download,
                                                            ),
                                                          ),
                                                        ],
                                                      )
                                                    ])),
                                            index == 1
                                                ? Dimens.boxHeight16
                                                : Dimens.boxHeight0
                                          ],
                                        ))
                              ],
                            ),
                          ),
                        ),
                        Container(
                            width: Dimens.percentWidth(1),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 3,
                                  offset: const Offset(
                                      3, 0), // changes position of shadow
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: Dimens.edgeInsets20,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Filled',
                                      ),
                                      Text(
                                        '30%',
                                        style: Styles.blackPercentColor16,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        Dimens.ten,
                                      ),
                                      color: ColorsValue.greenColor,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.fromLTRB(
                                        Dimens.twenty,
                                        Dimens.fourteen,
                                        Dimens.twenty,
                                        Dimens.fourteen,
                                      ),
                                      child: InkWell(
                                        onTap: () {
                                          RouteManagement.goToPurchase();
                                        },
                                        child: Text(
                                          'Tap to Invest',
                                          style: Styles.whiteColor14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ))
                      ],
                    )),
          ),
        ),
      );
}
