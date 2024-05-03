import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock_vault/controller/home_controller.dart';
import 'package:lock_vault/utils/utils.dart';

import '../../../constants/app_color.dart';

class TopContents extends StatelessWidget {
  const TopContents({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Obx(
      () => ListTile(
        title: Text(
          "Hello, ${controller.userName}",
          style: mediumTextStyle(20, AppColor.white),
        ),
        subtitle: Text(
          "Welcome back again!",
          style: normalText(16, AppColor.white),
        ),
      ),
    );
  }
}
