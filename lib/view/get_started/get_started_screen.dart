import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/size_helpers.dart';
import 'package:lock_vault/utils/utils.dart';
import 'package:lock_vault/view/widgets/custom_button.dart';
import 'package:lottie/lottie.dart';

import '../../routes/app_pages.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: AppColor.backgroundGradient),
        child: Column(
          children: [
            Expanded(
                flex: 6,
                child: Lottie.asset(
                  "assets/lock.json",
                )),
            Text(
              "Manage all account",
              style: mediumTextStyle(24, AppColor.secondary),
            ),
            Text(
              ''' We store logins, IDs, and payment information in your vault. Just remember a master password and forget other things and its offline.''',
              style: normalText(16, AppColor.secondaryExtraSoft),
              textAlign: TextAlign.center,
            ).padAll(displayWidth(context) * 0.10),
            Expanded(
                child: CustomButton(
                        text: "Get Started",
                        onPressed: () {
                          Get.offAllNamed(Routes.REGISTER);
                        },
                        gradient: AppColor.primaryGradient,
                        bgcolor: AppColor.error,
                        height: displayHeight(context) * 0.08,
                        width: displayWidth(context),
                        borderRadius: 24,
                        textSize: 14,
                        textColor: AppColor.white)
                    .paddingAll(20))
          ],
        ),
      ),
    );
  }
}
