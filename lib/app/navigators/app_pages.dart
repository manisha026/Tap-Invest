import 'package:get/get.dart';
import 'package:tap_invest/app/app.dart';

part 'app_routes.dart';

/// Contains the list of pages or routes taken across the whole application.
/// This will prevent us in using context for navigation. And also providing
/// the blocs required in the next named routes.
///
/// [pages] : will contain all the pages in the application as a route
/// and will be used in the material app.
/// Will be ignored for test since all are static values and would not change.
class AppPages {
  static var transitionDuration = const Duration(milliseconds: 300);

  static const initial = Routes.splash;

  static final pages = [
    GetPage<SplashScreen>(
      name: _Paths.splash,
      transitionDuration: transitionDuration,
      page: SplashScreen.new,
      binding: SplashBinding(),
      transition: Transition.cupertino,
    ),
    GetPage<DealDetailScreen>(
      name: _Paths.dealDetail,
      transitionDuration: transitionDuration,
      page: DealDetailScreen.new,
      binding: DealDetailBinding(),
      transition: Transition.cupertino,
    ),
    GetPage<PurchaseScreen>(
      name: _Paths.purchase,
      transitionDuration: transitionDuration,
      page: PurchaseScreen.new,
      binding: PurchaseBinding(),
      transition: Transition.cupertino,
    ),
    GetPage<PaymentDoneScreen>(
      name: _Paths.paymentDone,
      transitionDuration: transitionDuration,
      page: PaymentDoneScreen.new,
      binding: PaymentDoneBinding(),
      transition: Transition.cupertino,
    ),
    GetPage<SignContractScreen>(
      name: _Paths.signContract,
      transitionDuration: transitionDuration,
      page: SignContractScreen.new,
      binding: SignContractBinding(),
      transition: Transition.cupertino,
    ),
  ];
}
