import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/utils.dart';

class CustomToast {
  static errorToast(String? title, String? message) {
    Get.rawSnackbar(
      duration: const Duration(seconds: 4),
      dismissDirection: DismissDirection.horizontal,
      messageText: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.info_outline_rounded,
            color: AppColor.white,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  child: Text(title ?? "error",
                      style: mediumTextStyle(16, AppColor.white)),
                ),
                Text(message ?? "Add your error message here",
                    style: normalText(14, AppColor.white)),
              ],
            ),
          ),
        ],
      ).padAll(4),
      backgroundColor: AppColor.error,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      borderRadius: 8,
      snackPosition: SnackPosition.TOP,
    );
  }

  static successToast(String? title, String? message) {
    Get.rawSnackbar(
      duration: const Duration(seconds: 3),
      dismissDirection: DismissDirection.horizontal,
      messageText: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Icon(Icons.check_circle),
          horizontalSpace(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 4),
                  child: Text(title ?? "Success",
                      style: normalText(16, AppColor.white)),
                ),
                Text(message ?? "Add your success message here",
                    style: normalText(16, AppColor.white)),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: AppColor.success,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 16),
      borderRadius: 8,
      snackPosition: SnackPosition.TOP,
    );
  }
}
