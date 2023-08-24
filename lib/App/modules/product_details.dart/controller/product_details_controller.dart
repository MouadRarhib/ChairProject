import 'dart:ui';

import 'package:ecomapp/App/data/models/product_model.dart';
import 'package:ecomapp/App/modules/card/controller/cart_controller.dart';
import 'package:ecomapp/utils/dummy_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductDetailsController extends GetxController {
  ProductModel product = Get.arguments;

  Rx<Color> selectedColor = Rx<Color>(Colors.red);

  // current screen index
  int currentIndex = 0;

  // to count the number of products in the cart
  int cartItemsCount = 0;

  @override
  void onInit() {
    getCartItemsCount();
    super.onInit();
  }

  /// change the selected screen index
  changeScreen(int selectedIndex) {
    currentIndex = selectedIndex;
    update();
  }

  /// calculate the number of products in the cart
  getCartItemsCount() {
    var products = DummyHelper.products;
    cartItemsCount = products.fold<int>(0, (p, c) => p + c.quantity);
    update(['CartBadge']);
  }

  /// when the user press on add + icon
  onIncreasePressed(int productId) {
    DummyHelper.products.firstWhere((p) => p.id == productId).quantity++;
    getCartItemsCount();
    update(['ProductQuantity']);
  }

  /// when the user press on remove - icon
  onDecreasePressed(int productId) {
    var product = DummyHelper.products.firstWhere((p) => p.id == productId);
    if (product.quantity > 0) {
      product.quantity--;
      getCartItemsCount();
      if (Get.isRegistered<CartController>()) {
        Get.find<CartController>().getCartProducts();
      }
      update(['ProductQuantity']);
    }
  }

  onAddToCartPressed() {
    if (product.quantity == 0) {
      onIncreasePressed(product.id);
    }
    Get.back();
  }
}
