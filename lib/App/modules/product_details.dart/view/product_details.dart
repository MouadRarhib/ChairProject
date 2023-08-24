import 'package:ecomapp/App/components/buildColorOption.dart';
import 'package:ecomapp/App/components/custom_button.dart';
import 'package:ecomapp/App/components/custom_icon_button.dart';
import 'package:ecomapp/App/components/items_counter.dart';
import 'package:ecomapp/App/modules/product_details.dart/controller/product_details_controller.dart';
import 'package:ecomapp/routes/app_pages.dart';
import 'package:ecomapp/utils/bigtext.dart';
import 'package:ecomapp/utils/colors.dart';
import 'package:ecomapp/utils/constants.dart';
import 'package:ecomapp/utils/dimention.dart';
import 'package:ecomapp/utils/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ProductDetailsView extends GetView<ProductDetailsController> {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    RxBool showFullDescription = RxBool(false);
    ProductDetailsController detailsController =
        Get.put(ProductDetailsController());

    return GetBuilder<ProductDetailsController>(
      builder: (_) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(
                height: 330.h,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: SvgPicture.asset(
                        Constants.container,
                        fit: BoxFit.fill,
                        color: AppColors.mainColor,
                      ),
                    ),
                    Positioned(
                      top: 24.h,
                      left: 24.w,
                      right: 24.w,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            backgroundColor: AppColors.textColor,
                            onPressed: () => Get.back(),
                            icon: SvgPicture.asset(
                              Constants.backArrowIcon,
                              fit: BoxFit.none,
                              color: AppColors.mainColor,
                            ),
                          ),
                          CustomIconButton(
                            backgroundColor: AppColors.textColor,
                            onPressed: () => Get.offNamed(Routes.CART),
                            icon: SvgPicture.asset(
                              Constants.cartIcon,
                              fit: BoxFit.none,
                              color: AppColors.mainColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Positioned(
                      top: 50.h,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        detailsController.product.image,
                        width: 250.w,
                        height: 260.h,
                      ).animate().fade().scale(
                            duration: 800.ms,
                            curve: Curves.fastOutSlowIn,
                          ),
                    ),
                  ],
                ),
              ),
              30.verticalSpace,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Row(
                  children: [
                    BigText(
                      text: detailsController.product.name,
                      color: AppColors.textColor,
                      size: 30,
                    ).animate().fade().slideX(
                          duration: 300.ms,
                          begin: -1,
                          curve: Curves.easeInSine,
                        ),
                    SizedBox(width: 80),
                    Icon(
                      Icons.favorite_border_outlined,
                      color: AppColors.textColor,
                    ),
                    const Spacer(),
                    // ProductCountItem(product: detailsController.product)
                    //     .animate()
                    //     .fade(duration: 200.ms),
                  ],
                ),
              ),
              SizedBox(
                height: Dimenssions.height15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Row(
                  children: [
                    Container(
                      height: Dimenssions.height45 * 0.8,
                      width: Dimenssions.width45 * 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.mainColor),
                      child: Center(
                        child: BigText(
                          text: detailsController.product.sold.toString() +
                              "%" +
                              " sold",
                          color: AppColors.textColor,
                          size: 16,
                        ).animate().fade().scale(
                              duration: 800.ms,
                              curve: Curves.fastOutSlowIn,
                            ),
                      ),
                    ),
                    SizedBox(
                      width: 25.w,
                    ),
                    Icon(
                      Icons.star,
                      size: 20,
                      color: AppColors.textColor,
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    BigText(
                      text: detailsController.product.stars.toString(),
                      color: AppColors.textColor,
                      size: 16,
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    BigText(
                      text: "(" +
                          detailsController.product.reviews.toString() +
                          " reviews)",
                      color: AppColors.textColor,
                      size: 16,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Obx(() {
                String description = detailsController.product.description;

                return Container(
                  height: 1000.h,
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BigText(
                        text: 'Description:',
                        color: AppColors.textColor,
                      ),
                      SizedBox(height: 8),
                      SmallText(
                        text: showFullDescription.value
                            ? description // Show full description
                            : '${description.substring(0, 50)}...', // Show first 50 characters followed by "..."
                      ),
                      if (detailsController.product.description.length >
                          50) // Show "Show more" button if description is long
                        TextButton(
                          onPressed: () {
                            // Toggle the value to show/hide the full description
                            showFullDescription.toggle();
                          },
                          child: SmallText(
                            text: showFullDescription.value
                                ? 'Show Less'
                                : 'Show More',
                            color: Colors.orange.shade50,
                          ),
                        ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        children: [
                          BigText(
                            text: "Color:",
                            color: AppColors.textColor,
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              height: 70.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Obx(() {
                                return Row(
                                  children: [
                                    ColorOptionWidget(
                                      color: Colors.red,
                                      isSelected: detailsController
                                              .selectedColor.value ==
                                          Colors.red,
                                    ),
                                    SizedBox(width: 10.w),
                                    ColorOptionWidget(
                                      color: Colors.cyan.shade50,
                                      isSelected: detailsController
                                              .selectedColor.value ==
                                          Colors.cyan.shade50,
                                    ),
                                    SizedBox(width: 10.w),
                                    ColorOptionWidget(
                                      color: Colors.blue,
                                      isSelected: detailsController
                                              .selectedColor.value ==
                                          Colors.blue,
                                    ),
                                    SizedBox(width: 10.w),
                                    ColorOptionWidget(
                                      color: Colors.green,
                                      isSelected: detailsController
                                              .selectedColor.value ==
                                          Colors.green,
                                    ),
                                    SizedBox(width: 10.w),
                                    ColorOptionWidget(
                                      color: Colors.amber.shade50,
                                      isSelected: detailsController
                                              .selectedColor.value ==
                                          Colors.amber.shade50,
                                    ),
                                    SizedBox(width: 10.w),
                                    ColorOptionWidget(
                                      color: Colors.brown.shade800,
                                      isSelected: detailsController
                                              .selectedColor.value ==
                                          Colors.brown.shade800,
                                    ),

                                    // Add more color options here...
                                  ],
                                ).animate().fade().scale(
                                      duration: 800.ms,
                                      curve: Curves.fastOutSlowIn,
                                    );
                              }),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          BigText(
                            text: "Quantity : ",
                            color: AppColors.textColor,
                          ),
                          ItemsCounter(product: detailsController.product),
                        ],
                      ),
                      SizedBox(
                        height: 20.w,
                      ),
                      Row(
                        children: [
                          SmallText(
                            text: "Total price",
                            color: AppColors.textColor,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          BigText(
                            text: "\$" +
                                detailsController.product.price.toString(),
                            color: AppColors.textColor,
                            size: 35,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 120.w, bottom: 90.w),
                        child: CustomButton(
                          text: 'Add to cart',
                          onPressed: () =>
                              detailsController.onAddToCartPressed(),
                          fontSize: 16.sp,
                          radius: 50.r,
                          verticalPadding: 16.h,
                          hasShadow: false,
                          backgroundColor: AppColors.mainColor,
                        ).animate().fade().slideY(
                              duration: 300.ms,
                              begin: 1,
                              curve: Curves.easeInSine,
                            ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
