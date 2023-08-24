import 'package:ecomapp/App/components/custom_snackbar.dart';
import 'package:ecomapp/App/modules/base/controllers/base_controller.dart';
import 'package:ecomapp/utils/dummy_helper.dart';
import 'package:get/get.dart';

import '../../../data/models/product_model.dart';

class CartController extends GetxController {
  // to hold the products in cart
  List<ProductModel> products = [];

  @override
  void onInit() {
    getCartProducts();
    super.onInit();
  }

  // when the user press on purchase now button
  onPurchaseNowPressed() {
    clearCart();
    Get.back();
    CustomSnackBar.showCustomSnackBar(
        title: 'Purchased', message: 'Order placed with success');
  }

  /// get the cart products from the product list
  getCartProducts() {
    products = DummyHelper.products.where((p) => p.quantity > 0).toList();
    update();
  }

  /// clear products in cart and reset cart items count
  clearCart() {
    DummyHelper.products.map((p) => p.quantity = 0).toList();
    Get.find<BaseController>().getCartItemsCount();
  }
}
