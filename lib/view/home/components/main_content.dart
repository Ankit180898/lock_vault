import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/size_helpers.dart';
import 'package:lock_vault/utils/utils.dart';
import 'package:lock_vault/view/home/components/vault_list_items.dart';
import 'package:lock_vault/view/widgets/common_textfield.dart';

class MainContent extends StatelessWidget {
  const MainContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: displayHeight(context),
        decoration: BoxDecoration(
            gradient: AppColor.cardGradient,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40), topRight: Radius.circular(40))),
        child: Column(
          children: [
            CommonTextField(
                prefixIcon: Icons.search,
                controller: TextEditingController(),
                labelText: "Search your vaults"),
            verticalSpace(20),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: displayHeight(context) * 0.15,
                    width: displayWidth(context),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(
                            colorScheme: ColorScheme.light(
                              primary: AppColor
                                  .primaryExtraSoft, // Set the custom color here
                            ),
                          ),
                          child: IconButton.filled(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.chrome,
                              color: AppColor.primary,
                            ),
                          ),
                        ),
                        Text(
                          "Browser",
                          style: mediumTextStyle(14, AppColor.secondary),
                        ),
                        Text(
                          "18 Password",
                          style: normalText(12, AppColor.secondaryExtraSoft),
                        )
                      ],
                    ),
                  ),
                ),
                horizontalSpace(12),
                Expanded(
                  child: Container(
                    height: displayHeight(context) * 0.15,
                    width: displayWidth(context),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(
                            colorScheme: ColorScheme.light(
                              primary: AppColor
                                  .primaryExtraSoft, // Set the custom color here
                            ),
                          ),
                          child: IconButton.filled(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.mobile,
                              color: AppColor.primary,
                            ),
                          ),
                        ),
                        Text(
                          "Browser",
                          style: mediumTextStyle(14, AppColor.secondary),
                        ),
                        Text(
                          "18 Password",
                          style: normalText(12, AppColor.secondaryExtraSoft),
                        )
                      ],
                    ),
                  ),
                ),
                horizontalSpace(12),
                Expanded(
                  child: Container(
                    height: displayHeight(context) * 0.15,
                    width: displayWidth(context),
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Theme(
                          data: ThemeData(
                            colorScheme: ColorScheme.light(
                              primary: AppColor
                                  .primaryExtraSoft, // Set the custom color here
                            ),
                          ),
                          child: IconButton.filled(
                            onPressed: () {},
                            icon: FaIcon(
                              FontAwesomeIcons.creditCard,
                              color: AppColor.primary,
                            ),
                          ),
                        ),
                        Text(
                          "Payment",
                          style: mediumTextStyle(14, AppColor.secondary),
                        ),
                        Text(
                          "06 Password",
                          style: normalText(12, AppColor.secondaryExtraSoft),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            verticalSpace(20),
            Expanded(child: VaultListItems()),
          ],
        ).padAll(20),
      ),
    );
  }
}
