// import 'package:ecomapp/models/product_model.dart';
// import 'package:ecomapp/utils/dummy_helper.dart';
import 'package:ecomapp/utils/constants.dart';
import 'package:ecomapp/utils/dummy_helper.dart';

import '../../../data/models/product_model.dart';

import 'package:get/get.dart';

class HomeController extends GetxController {
  List<ProductModel> products = [];
  var cards = [Constants.card1, Constants.card2, Constants.card3];

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  /// get products from dummy helper
  getProducts() {
    products = DummyHelper.products;
  }
}
