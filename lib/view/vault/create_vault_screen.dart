import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/size_helpers.dart';
import 'package:lock_vault/utils/utils.dart';
import 'package:lock_vault/view/vault/components/categories_drop_down.dart';
import 'package:lock_vault/view/vault/components/tags_chip.dart';
import 'package:lock_vault/view/widgets/common_textfield.dart';
import 'package:lock_vault/view/widgets/custom_button.dart';

class CreateVaultScreen extends StatelessWidget {
  const CreateVaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedCategory;

    return Scaffold(
        resizeToAvoidBottomInset: true,
        bottomNavigationBar: Container(
          color: Colors.transparent,
          width: double.infinity,
          child: CustomButton(
                  gradient: AppColor.primaryGradient,
                  borderRadius: 24,
                  text: "Create the vault",
                  onPressed: () {},
                  bgcolor: AppColor.primary,
                  height: displayHeight(context) * 0.08,
                  width: displayWidth(context),
                  textSize: 16,
                  textColor: Colors.white)
              .padAll(20),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: AppColor.cardGradient,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Theme(
                        data: ThemeData(
                          colorScheme: ColorScheme.light(
                            primary:
                                AppColor.white, // Set the custom color here
                          ),
                        ),
                        child: IconButton.filled(
                            onPressed: () {
                              Get.back();
                            },
                            icon: FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              color: AppColor.secondary,
                            ))),
                    Spacer(),
                    Text(
                      "Create New Vaults",
                      style: mediumTextStyle(20, AppColor.secondary),
                    ),
                    Spacer()
                  ],
                ).paddingOnly(top: 32),
                verticalSpace(32),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Credential",
                        style: mediumTextStyle(16, AppColor.secondary),
                      ),
                      verticalSpace(16),
                      Text(
                        "Select Category",
                        style: mediumTextStyle(14, AppColor.secondaryExtraSoft),
                      ),
                      verticalSpace(5),
                      CategoriesDropdown(
                        selectedCategory: selectedCategory,
                        onChanged: (String? newVal) {},
                      ),
                      verticalSpace(16),
                      Text(
                        "Site Address",
                        style: mediumTextStyle(14, AppColor.secondaryExtraSoft),
                      ),
                      verticalSpace(5),
                      CommonTextField(
                          borderSide: true,
                          controller: TextEditingController(),
                          labelText: 'Enter url'),
                      verticalSpace(16),
                      Text(
                        "Username/Email",
                        style: mediumTextStyle(14, AppColor.secondaryExtraSoft),
                      ),
                      verticalSpace(5),
                      CommonTextField(
                          borderSide: true,
                          controller: TextEditingController(),
                          labelText: 'Enter email'),
                      verticalSpace(16),
                      Text(
                        "Password",
                        style: mediumTextStyle(14, AppColor.secondaryExtraSoft),
                      ),
                      verticalSpace(5),
                      CommonTextField(
                          obscureText: true,
                          prefixIcon: Icons.lock_rounded,
                          borderSide: true,
                          controller: TextEditingController(),
                          labelText: '********'),
                    ],
                  ).padAll(16),
                ),
                verticalSpace(18),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColor.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Add Tag",
                          style: mediumTextStyle(16, AppColor.secondary),
                        ),
                        verticalSpace(16),
                        CategoriesChips(
                          onChanged: (value) {},
                          selectedCategory: '',
                        ),
                      ],
                    ).padAll(16))
              ],
            ).padAll(20),
          ),
        ));
  }
}
