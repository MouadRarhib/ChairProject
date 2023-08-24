import 'package:ecomapp/routes/app_pages.dart';
import 'package:ecomapp/utils/bigtext.dart';
import 'package:ecomapp/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../data/models/product_model.dart';

class ProductItem extends StatelessWidget {
  final ProductModel product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.PRODUCT_DETAILS, arguments: product),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainColor,
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 5.w,
              bottom: 5.h,
              child: GestureDetector(
                onTap: () =>
                    Get.toNamed(Routes.PRODUCT_DETAILS, arguments: product),
                child: CircleAvatar(
                  radius: 18.r,
                  backgroundColor: AppColors.textColor,
                  child:
                      const Icon(Icons.add_rounded, color: AppColors.mainColor),
                ).animate().fade(duration: 200.ms),
              ),
            ),
            Positioned(
              top: 12.h,
              left: 30.w,
              right: 40.w,
              child: Image.asset(product.image).animate().slideX(
                    duration: 200.ms,
                    begin: 1,
                    curve: Curves.easeInSine,
                  ),
            ),
            Positioned(
              left: 5.w,
              bottom: 10.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: product.name,
                    size: 20,
                    color: AppColors.backgroundColor,
                  ).animate().fade().slideY(
                        duration: 200.ms,
                        begin: 1,
                        curve: Curves.easeInSine,
                      ),
                  5.verticalSpace,
                  BigText(
                    text: '${product.price}\$',
                    color: AppColors.textColor,
                  ).animate().fade().slideY(
                        duration: 200.ms,
                        begin: 2,
                        curve: Curves.easeInSine,
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
