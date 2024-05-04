import 'package:flutter/material.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/utils.dart';

class CategoriesDropdown extends StatefulWidget {
  String? selectedCategory;
  final ValueChanged<String?>? onChanged;

  CategoriesDropdown({
    super.key,
    required this.selectedCategory,
    required this.onChanged,
  });

  @override
  _CategoriesDropdownState createState() => _CategoriesDropdownState();
}

class _CategoriesDropdownState extends State<CategoriesDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppColor.secondarySoft)),
      child: DropdownButton<String>(
        underline: Container(height: 0), // Remove underline
        isExpanded: true,
        hint: Text(
          "Select category",
          style: normalText(16, AppColor.secondarySoft),
        ),
        dropdownColor: AppColor.white,
        borderRadius: BorderRadius.circular(16),
        style: normalText(16, AppColor.secondary),
        value: widget.selectedCategory,
        onChanged: widget.onChanged,
        items: dropDownCategories.map((String category) {
          return DropdownMenuItem<String>(
            value: category,
            child: Text(category),
          );
        }).toList(),
      ).padAll(8),
    );
  }
}
