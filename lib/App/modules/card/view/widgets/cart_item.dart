import 'package:ecomapp/App/components/items_counter.dart';
import 'package:ecomapp/App/components/product_count_item.dart';
import 'package:ecomapp/App/components/product_item.dart';
import 'package:ecomapp/App/data/models/product_model.dart';
import 'package:ecomapp/App/modules/base/controllers/base_controller.dart';
import 'package:ecomapp/App/modules/card/controller/cart_controller.dart';
import 'package:ecomapp/App/modules/product_details.dart/controller/product_details_controller.dart';
import 'package:ecomapp/utils/bigtext.dart';
import 'package:ecomapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CartItem extends GetView<CartController> {
  final ProductModel product;
  const CartItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BaseController());
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(product.image, width: 50.w, height: 40.h),
          16.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                text: product.name,
                color: AppColors.textColor,
              ),
              5.verticalSpace,
              BigText(
                text: ' ${product.price}\$',
                color: AppColors.textColor,
              ),
            ],
          ),
          ProductCountItem(product: product),
        ],
      ),
    );
  }
}
