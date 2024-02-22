import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_invest/app/app.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => GetBuilder<SplashController>(
        builder: (context) => Scaffold(
          body: GetBuilder<SplashController>(
            builder: (controller) => Container(
              color: ColorsValue.greenColor,
            )
          ),
        ),
      );
}
