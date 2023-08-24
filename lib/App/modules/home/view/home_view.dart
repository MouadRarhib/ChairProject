import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecomapp/App/components/custom_form_field.dart';
import 'package:ecomapp/App/components/product_item.dart';
import 'package:ecomapp/App/modules/home/controller/home_controller.dart';
import 'package:ecomapp/routes/app_pages.dart';
import 'package:ecomapp/utils/bigtext.dart';
import 'package:ecomapp/utils/colors.dart';
import 'package:ecomapp/utils/constants.dart';
import 'package:ecomapp/utils/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var cards = [Constants.card1, Constants.card2, Constants.card3];
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Positioned(
            top: -120.h,
            height: height / 2.1,
            width: width,
            child: SvgPicture.asset(
              Constants.container,
              fit: BoxFit.fill,
              color: AppColors.mainColor,
            ),
          ),
          ListView(
            children: [
              Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 24.w),
                    title: SmallText(
                      text: "Good morning",
                      color: AppColors.textColor,
                    ),
                    subtitle: BigText(
                      text: "Hello Amelia !",
                      color: AppColors.textColor,
                    ),
                    leading: CircleAvatar(
                      radius: 22.r,
                      backgroundColor: AppColors.backgroundColor,
                      child: ClipOval(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Image.asset(Constants.avatar),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: height / 20,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.w),
                    child: CustomFormField(
                      backgroundColor: AppColors.textColor,
                      textSize: 14.sp,
                      hint: 'Search category',
                      hintFontSize: 14.sp,
                      hintColor: AppColors.mainColor,
                      maxLines: 1,
                      borderRound: 60.r,
                      contentPadding: EdgeInsets.symmetric(
                          vertical: 10.h, horizontal: 10.w),
                      focusedBorderColor: Colors.white,
                      isSearchField: true,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.search,
                      prefixIcon: SvgPicture.asset(
                        Constants.searchIcon,
                        fit: BoxFit.none,
                        color: AppColors.mainColor,
                      ),
                    ),
                  ),
                  20.verticalSpace,
                  Container(
                    width: width,
                    height: height / 3.5.h,
                    child: CarouselSlider.builder(
                      options: CarouselOptions(
                        initialPage: 1,
                        viewportFraction: 0.9,
                        enableInfiniteScroll: true,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                      ),
                      itemCount: cards.length,
                      itemBuilder: (context, itemIndex, pageViewIndex) {
                        return Image.asset(
                          cards[itemIndex],
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigText(
                          text: 'Best selling',
                          color: AppColors.textColor,
                        ),
                        InkWell(
                          onTap: () => Get.toNamed(Routes.PRODUCTS),
                          child: BigText(
                            text: 'Sell all',
                            color: AppColors.mainColor,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 16.w,
                          mainAxisSpacing: 16.h,
                          mainAxisExtent: 214.h,
                        ),
                        shrinkWrap: true,
                        primary: false,
                        itemCount: 2,
                        itemBuilder: (context, index) => ProductItem(
                              product: homeController.products[index],
                            )),
                    20.verticalSpace,
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
