import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:tap_invest/app/navigators/routes_management.dart';
import 'package:flutter/services.dart';

class PurchaseController extends GetxController {
  TextEditingController amountEditingController = TextEditingController();
  var totalReturn = 56555.0;
  var balance = 100000;
  var requiredAmount = 0.0;
  var isValueMore = false;
  String? amountErrorText;

  void calculateReturn(String amount) {
    isValueMore = false;
    amountErrorText = null;

    if (amount.isNotEmpty) {
      if (double.parse(amount) < balance) {
        totalReturn = double.parse(amount) * 2.5;
      } else {
        if (double.parse(amount) > balance) {
          requiredAmount = double.parse(amount) - balance;
        }
        updateValueByComma(double.parse(amount));
        print(updateValueByComma(double.parse(amount)));
      }
    } else {
      totalReturn = 0;
      amountErrorText = null;
    }
    update();
  }

  String detectZero(double returnAmount) {
    RegExp regex = RegExp(r'([.]*0)(?!.*\d)');
    return returnAmount.toString().replaceAll(regex, '');
  }

  String updateValueByComma(double amount) {
    var formatter = NumberFormat('#,##,000');
    return formatter.format(amount);
  }

  void swipeToPay() {
    if (amountEditingController.text.isEmpty) {
      amountErrorText = 'Please enter an amount';
    } else if (double.parse(amountEditingController.text) > balance) {
      amountErrorText = 'Amount can not be greater then balance';
    } else {
      amountErrorText = null;
      HapticFeedback.vibrate();
      RouteManagement.goToPaymentDone();
    }
    update();
  }
}
