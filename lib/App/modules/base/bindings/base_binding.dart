import 'package:ecomapp/App/modules/calendar/controllers/calendar_controller.dart';
import 'package:ecomapp/App/modules/category/controllers/category_controller.dart';
import 'package:ecomapp/App/modules/home/controller/home_controller.dart';
import 'package:ecomapp/App/modules/profile/controllers/profile_controller.dart';
import 'package:get/get.dart';

import '../controllers/base_controller.dart';

class BaseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BaseController>(() => BaseController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<CategoryController>(() => CategoryController());
    Get.lazyPut<CalendarController>(() => CalendarController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}
