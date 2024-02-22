// coverage:ignore-file
part of 'app_pages.dart';

/// A chunks of routes and the path names which will be used to create
/// routes in [AppPages].
abstract class Routes {
  static const splash = _Paths.splash;
  static const dealDetail = _Paths.dealDetail;
  static const purchase = _Paths.purchase;
  static const paymentDone = _Paths.paymentDone;
  static const signContract = _Paths.signContract;
}

abstract class _Paths {
  static const splash = '/splash-screen';
  static const dealDetail = '/deal-detail';
  static const purchase = '/purchase';
  static const paymentDone = '/payment-done';
  static const signContract = '/sign-contract';
}
