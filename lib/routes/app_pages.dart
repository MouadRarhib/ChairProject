import 'package:ecomapp/App/modules/base/bindings/base_binding.dart';
import 'package:ecomapp/App/modules/base/views/base_view.dart';
import 'package:ecomapp/App/modules/card/binding/cart_binding.dart';
import 'package:ecomapp/App/modules/card/view/card_view.dart';
import 'package:ecomapp/App/modules/home/binding/home_binding.dart';
import 'package:ecomapp/App/modules/home/view/home_view.dart';
import 'package:ecomapp/App/modules/product_details.dart/binding/product_details_binding.dart';
import 'package:ecomapp/App/modules/product_details.dart/view/product_details.dart';
import 'package:ecomapp/App/modules/products/bindings/products_binding.dart';
import 'package:ecomapp/App/modules/products/views/products_view.dart';
import 'package:ecomapp/App/modules/splash/binding/splash_binding.dart';
import 'package:ecomapp/App/modules/splash/view/splash_view.dart';
import 'package:ecomapp/App/modules/welcome/binding/welcome_binding.dart';
import 'package:ecomapp/App/modules/welcome/view/welcome.dart';
import 'package:get/get.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAILS,
      page: () => const ProductDetailsView(),
      binding: ProductDetailsBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 250),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => const CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.BASE,
      page: () => const BaseView(),
      binding: BaseBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCTS,
      page: () => const ProductsView(),
      binding: ProductsBinding(),
    ),
  ];
}
