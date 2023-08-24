import 'package:ecomapp/App/data/models/product_model.dart';
import 'package:ecomapp/App/modules/product_details.dart/controller/product_details_controller.dart';
import 'package:ecomapp/utils/bigtext.dart';
import 'package:ecomapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ItemsCounter extends GetView<ProductDetailsController> {
  final ProductModel product;

  const ItemsCounter({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 18.w,
        ),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 40,
          width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppColors.mainColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                  onTap: () => controller.onIncreasePressed(product.id),
                  child: BigText(text: "+")),
              GetBuilder<ProductDetailsController>(
                id: 'ProductQuantity',
                builder: (_) => BigText(
                  text: product.quantity.toString(),
                ),
              ),
              InkWell(
                  onTap: () => controller.onDecreasePressed(product.id),
                  child: BigText(text: "-")),
            ],
          ),
        ),
      ],
    );
  }
}
