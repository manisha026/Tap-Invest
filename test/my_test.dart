import 'package:flutter_test/flutter_test.dart';

double purchaseAmount(double amount){
  return 2.5 * amount;
}

bool isAmountGreaterThenBalance(double amount){
  var balance =  purchaseAmount(amount) - 100000;
  bool isMore = false;
  if(balance < 100000){
    isMore = false;
  }else{
    isMore = true;
  }
  return isMore;
}

void main() {

  test('purchaseAmount', () {
    double result = purchaseAmount(23.34);
    expect(result, 58.35);
  });
  test('checkAmount', () {
    bool result = isAmountGreaterThenBalance(2324);
    expect(result, false);
  });
  test('isAmount', () {
    bool result = isAmountGreaterThenBalance(23234324);
    expect(result, true);
  });
}