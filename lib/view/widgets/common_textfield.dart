import 'package:flutter/material.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/utils.dart';

class CommonTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final bool obscureText;
  final bool borderSide;
  final TextInputType keyboardType;
  final IconData? prefixIcon;

  const CommonTextField({
    super.key,
    required this.controller,
    required this.labelText,
    this.borderSide = false,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        hintText: labelText,
        hintStyle: normalText(16, AppColor.secondaryExtraSoft),
        fillColor: AppColor.white,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: borderSide == false
                ? BorderSide.none
                : BorderSide(
                    color: AppColor.secondaryExtraSoft,
                    width: 1,
                    style: BorderStyle.solid)),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon,
                color: AppColor.secondaryExtraSoft,
              )
            : null,
      ),
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }
}
