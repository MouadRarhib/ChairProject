part of 'app_pages.dart';

abstract class Routes {
  static const INITIAL = Routes.SPLASH;

  Routes._();
  static const SPLASH = _Paths.SPLASH;
  static const WELCOME = _Paths.WELCOME;
  static const HOME = _Paths.HOME;
  static const PRODUCT_DETAILS = _Paths.PRODUCT_DETAILS;
  static const CART = _Paths.CART;
  static const BASE = _Paths.BASE;
  static const PRODUCTS = _Paths.PRODUCTS;
}

class _Paths {
  _Paths._();
  static const SPLASH = '/splash';
  static const WELCOME = '/welcome';
  static const BASE = '/base';

  static const HOME = '/home';
  static const PRODUCT_DETAILS = '/product-details';
  static const CART = '/cart';
  static const PRODUCTS = '/products';
}
