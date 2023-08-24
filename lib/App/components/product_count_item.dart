import 'package:ecomapp/App/modules/product_details.dart/controller/product_details_controller.dart';
import 'package:ecomapp/utils/bigtext.dart';
import 'package:ecomapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/constants.dart';
import '../data/models/product_model.dart';

import 'custom_icon_button.dart';

class ProductCountItem extends GetView<ProductDetailsController> {
  final ProductModel product;
  const ProductCountItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        30.horizontalSpace,
        GetBuilder<ProductDetailsController>(
          id: 'ProductQuantity',
          builder: (_) => Container(
            height: 50.h,
            width: 90.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.mainColor),
            child: Center(
              child: BigText(
                text: product.quantity.toString() + " Items",
                color: AppColors.textColor,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
