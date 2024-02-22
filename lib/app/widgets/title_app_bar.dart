import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tap_invest/app/theme/styles.dart';
import '../app.dart';


PreferredSizeWidget titleAppbar({
  String? title,
  Color? backgroundColor,
  double? elevation,
  double? leadingWidth,
  Color? shadowColor,
  TextStyle? titleStyle,
  Widget? leading,
  PreferredSizeWidget? bottom,
  Widget? child,
  bool? centreTile,
  List<Widget>? actions,
  Function()? onTap,
}) {
  assert(title != null || child != null, 'Either child Or title is required');
  return AppBar(
    leading: leading ??
        InkWell(
          onTap: onTap ??
                  () {
                Get.back<dynamic>();
              },
          child: Padding(
            padding: Dimens.edgeInsets8_10_8_10  ,
            child: SizedBox(
              height: Dimens.twentyFive,
              width: Dimens.twentyFive,
              child: const Icon(Icons.arrow_back, color: ColorsValue.greenColor)
            ),
          ),
        ),
    actions: actions ?? [],
    backgroundColor: backgroundColor ?? Colors.white,
    centerTitle: centreTile ?? false,
    shadowColor: shadowColor,
    elevation: elevation ?? 0,
    automaticallyImplyLeading: false,
    leadingWidth: leadingWidth ?? Dimens.thirtySix,
    titleSpacing: 0,
    bottom: bottom,
    title: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        child ?? Text(title!, style: titleStyle ?? Styles.greenSB18),
        Dimens.boxHeight2
      ],
    ),
  );
}
