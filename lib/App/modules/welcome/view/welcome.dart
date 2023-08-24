import 'package:ecomapp/App/components/custom_button.dart';
import 'package:ecomapp/routes/app_pages.dart';
import 'package:ecomapp/utils/bigtext.dart';
import 'package:ecomapp/utils/colors.dart';
import 'package:ecomapp/utils/constants.dart';
import 'package:ecomapp/utils/small_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Constants.background,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                90.verticalSpace,
                CircleAvatar(
                  radius: 120.r,
                  backgroundColor: AppColors.backgroundColor,
                  child: Image.asset(
                    Constants.logo,
                    width: 150.33.w,
                    height: 150.40.h,
                    fit: BoxFit.cover,
                  ),
                ).animate().fade().slideY(
                      duration: 300.ms,
                      begin: -1,
                      curve: Curves.easeInSine,
                    ),
                50.verticalSpace,
                BigText(
                  text: 'Get your Chair delivered to your home',
                  color: Colors.white,
                  size: 19,
                ).animate().slideY(
                      duration: 300.ms,
                      begin: -1,
                      curve: Curves.easeInSine,
                    ),
                50.verticalSpace,
                SmallText(
                  text:
                      'The best delivery app in town for \ndelivering your daily fresh Chairs',
                  size: 16,
                ).animate().fade().slideY(
                      duration: 300.ms,
                      begin: 1,
                      curve: Curves.easeInSine,
                    ),
                120.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 70.w),
                  child: CustomButton(
                    text: 'Shop now',
                    onPressed: () => Get.offNamed(Routes.HOME),
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
          )
        ],
      ),
    );
  }
}
