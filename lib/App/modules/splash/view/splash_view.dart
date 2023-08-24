import 'package:ecomapp/App/modules/splash/controller/splash_controller.dart';
import 'package:ecomapp/utils/colors.dart';
import 'package:ecomapp/utils/dimention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../utils/constants.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());

    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: CircleAvatar(
          radius: 100.r,
          backgroundColor: AppColors.backgroundColor,
          child: Image.asset(Constants.logo,
              width: Dimenssions.width30 * 20,
              height: Dimenssions.height30 * 20,
              fit: BoxFit.cover),
        )
            .animate()
            .fade()
            .slideY(duration: 600.ms, begin: 1, curve: Curves.easeInSine),
      ),
    );
  }
}
