import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/controller/auth%20controller/auth_controller/register_controller.dart';
import 'package:lock_vault/utils/size_helpers.dart';
import 'package:lock_vault/utils/utils.dart';
import 'package:lock_vault/view/widgets/custom_button.dart';

import '../../routes/app_pages.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(RegisterController());

    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: AppColor.secondarySoft,
                  fontSize: 16),
              "Already have an account?",
            ),
            TextButton(
                onPressed: () {
                  Get.toNamed(Routes.LOGIN);
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: AppColor.primary, fontSize: 16),
                ))
          ],
        ),
      ),
      body: SizedBox(
        height: displayHeight(context),
        width: displayWidth(context),
        child: ListView(
          shrinkWrap: true,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              padding: const EdgeInsets.only(left: 24, right: 24, top: 36),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 24),
                    child: Text(
                      'Create an account',
                      style: mediumTextStyle(24, AppColor.secondary),
                    ),
                  ),
                  verticalSpace(16),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 14, right: 14, top: 4),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1, color: AppColor.secondaryExtraSoft),
                    ),
                    child: TextField(
                      style: normalText(16, AppColor.secondary),
                      maxLines: 1,
                      controller: controller.nameC,
                      decoration: InputDecoration(
                        label: Text("Name",
                            style: normalText(14, AppColor.secondaryExtraSoft)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: InputBorder.none,
                        hintText: "John Doe",
                        hintStyle: normalText(16, AppColor.secondarySoft),
                      ),
                    ),
                  ),
                  verticalSpace(8),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(left: 14, right: 14, top: 4),
                    margin: const EdgeInsets.only(bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          width: 1, color: AppColor.secondaryExtraSoft),
                    ),
                    child: TextField(
                      style: normalText(16, AppColor.secondary),
                      maxLines: 1,
                      controller: controller.emailC,
                      decoration: InputDecoration(
                        label: Text("Email",
                            style: normalText(16, AppColor.secondaryExtraSoft)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        border: InputBorder.none,
                        hintText: "youremail@email.com",
                        hintStyle: normalText(16, AppColor.secondarySoft),
                      ),
                    ),
                  ),
                  verticalSpace(8),
                  Material(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          const EdgeInsets.only(left: 14, right: 14, top: 4),
                      margin: const EdgeInsets.only(bottom: 24),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1, color: AppColor.secondaryExtraSoft),
                      ),
                      child: Obx(
                        () => TextField(
                          style: normalText(16, AppColor.secondary),
                          maxLines: 1,
                          controller: controller.passwordC,
                          obscureText: controller.isHidden.value,
                          decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style:
                                  normalText(14, AppColor.secondaryExtraSoft),
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.always,
                            border: InputBorder.none,
                            hintText: "*************",
                            suffixIcon: IconButton(
                              icon: (controller.isHidden.value != false)
                                  ? const Icon(Icons.remove_red_eye_sharp)
                                  : const Icon(Icons.no_encryption_rounded),
                              onPressed: () {
                                controller.isHidden.value =
                                    !(controller.isHidden.value);
                              },
                            ),
                            hintStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'poppins',
                              fontWeight: FontWeight.w500,
                              color: AppColor.secondarySoft,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(16),
                  Obx(() => CustomButton(
                      text: controller.isLoading.isFalse
                          ? "Register"
                          : "...Loading",
                      onPressed: () {
                        if (controller.isLoading.isFalse) {
                          // Then proceed with user registration
                          controller.register();
                        }
                      },
                      borderRadius: 24,
                      bgcolor: AppColor.error,
                      gradient: AppColor.primaryGradient,
                      height: displayHeight(context) * 0.08,
                      width: displayWidth(context),
                      textSize: 14,
                      textColor: AppColor.white)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
