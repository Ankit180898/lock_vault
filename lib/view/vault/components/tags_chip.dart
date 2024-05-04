import 'package:flutter/material.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/utils.dart';

class CategoriesChips extends StatelessWidget {
  final List<String> tags = ['Tag 1', 'Tag 2', 'Tag 3', 'Tag 4', 'Tag 5'];
  final String? selectedCategory;
  final ValueChanged<String?>? onChanged;

  CategoriesChips({
    super.key,
    required this.selectedCategory,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8, // Adjust spacing between chips as needed
      children: tags.map((category) {
        return ChoiceChip(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          selectedColor: AppColor.primary.withOpacity(0.6),
          backgroundColor: Colors.white,
          label: Text(
            category,
            style: normalText(16, AppColor.secondary),
          ),
          selected: selectedCategory == category,
          onSelected: (selected) {
            if (onChanged != null) {
              onChanged!(selected ? category : null);
            }
          },
        );
      }).toList(),
    );
  }
}
