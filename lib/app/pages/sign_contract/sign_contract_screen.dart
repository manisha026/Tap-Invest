import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tap_invest/app/app.dart';
import 'package:tap_invest/app/theme/styles.dart';

class SignContractScreen extends StatelessWidget {
  const SignContractScreen({super.key});

  @override
  Widget build(BuildContext context) => GetBuilder<SignContractController>(
        builder: (controller) => Scaffold(
          backgroundColor: Colors.white,
          body: GetBuilder<SignContractController>(
              builder: (controller) => Column(
                    children: [
                      Dimens.boxHeight80,
                      Expanded(
                        child: Container(
                          height: Dimens.percentHeight(1),
                          width: Dimens.percentWidth(1),
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  "https://s3-alpha-sig.figma.com/img/c011/42bb/08d6bc42e7892db99eb4cc83ec756b0b?Expires=1709510400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=AiooBu~hKBYrX7TMxstrbmqsXsTfe26XE6ETr~LWe8BtyOfH70EG8t53z-Hlgfvs9of72wVgawGj8tFaOn3qXglk4BMH1jzSOAVNIPzSzur1e-RQn1iBZNtoFqJrpdEmVWv~k8c-UNy3m-OQOeIHtskOeEc6mH1lE4P0s2nNS6tzYQNR85A3DqifGBv7OVkl5fr4XE~5KLHRLrvoBynWf~wUwAf~rSFj9rtAiuKyIyKyrXfGnJMYXDyCnVkt3znt02LPpJFKE2MnZ2Dr2jtSMoYtYmJcoLPr9VG~WYUxJyjVv3N~rbw~tnBcHuArQMdA~3bFRL1XxZ5KSGhk2J1StA__"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black, width: Dimens.one),
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
                              Get.find<PaymentDoneController>().allDone = true;
                              Get.find<PaymentDoneController>().update();
                              Get.back<dynamic>();
                            },
                            child: Text(
                              'Sign Contract',
                              style: Styles.whiteColor14,
                            ),
                          ),
                        ),
                      ),
                      Dimens.boxHeight80,
                    ],
                  )),
        ),
      );
}
