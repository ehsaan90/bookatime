/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Ultimate Salon Full App Flutter V3
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2024-present initappz.
*/
import 'package:get/get.dart';
import 'package:owner/app/controller/profile_categories_controller.dart';

class ProfileCategoriesBinding extends Bindings {
  @override
  void dependencies() async {
    Get.lazyPut(() => ProfileCategoriesController(parser: Get.find()));
  }
}
