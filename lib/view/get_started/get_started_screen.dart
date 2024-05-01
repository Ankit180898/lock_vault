import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/size_helpers.dart';
import 'package:lock_vault/utils/utils.dart';
import 'package:lock_vault/view/widgets/custom_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomButton(
              text: "Get Started",
              onPressed: () {},
              gradient: AppColor.primaryGradient,
              bgcolor: AppColor.error,
              height: displayHeight(context) * 0.08,
              width: displayWidth(context),
              borderRadius: 24,
              textSize: 14,
              textColor: AppColor.secondaryExtraSoft)
          .paddingAll(20),
      body: Container(
        decoration: BoxDecoration(gradient: AppColor.backgroundGradient),
        child: Column(
          children: [
            SvgPicture.asset("assets/lock.svg"),
            Text("Manage all account"),
            Text(
                "We store tore logins, IDs, and payment information in your vault. Just remember a master password and forget other things and its offline."),
          ],
        ),
      ),
    );
  }
}
