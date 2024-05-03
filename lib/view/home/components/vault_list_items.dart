import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/size_helpers.dart';
import 'package:lock_vault/utils/utils.dart';

class VaultListItems extends StatelessWidget {
  const VaultListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Container(
          height: displayHeight(context) * 0.10,
          margin: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColor.white,
          ),
          child: Center(
            child: ListTile(
              leading: Container(
                  height: displayHeight(context) * 0.090,
                  width: displayHeight(context) * 0.090,
                  decoration: BoxDecoration(
                    color: AppColor.primaryExtraSoft,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    Icons.email_rounded,
                    color: AppColor.primary,
                    size: displayHeight(context) * 0.05,
                  )),
              title: Text(
                "Gmail",
                style: mediumTextStyle(16, AppColor.secondary),
              ),
              subtitle: Text(
                "hello@designmonk.com",
                style: normalText(14, AppColor.secondaryExtraSoft),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite_rounded,
                    color: AppColor.primaryExtraSoft,
                  )),
            ),
          ),
        );
      },
    );
  }
}
