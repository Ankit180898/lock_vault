import 'package:flutter/material.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/utils/size_helpers.dart';
import 'package:lock_vault/utils/utils.dart';

class VaultListItems extends StatefulWidget {
  const VaultListItems({Key? key}) : super(key: key);

  @override
  State<VaultListItems> createState() => _VaultListItemsState();
}

class _VaultListItemsState extends State<VaultListItems> {
  List<String> items = List.generate(10, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final String item = items[index]; // Store the item value

        return Dismissible(
          key: Key(item), // Use item value as the key
          direction: DismissDirection.horizontal, // Set the direction of swipe
          onDismissed: (direction) {
            // Handle dismiss action here (e.g., delete item from list)
            setState(() {
              items.remove(item); // Remove item from the list
            });
          },
          background: Container(
            color: AppColor.primary, // Background color for delete action
            alignment: Alignment.centerLeft,
            child: Icon(Icons.delete, color: AppColor.white).padAll(12),
          ),
          secondaryBackground: Container(
            decoration: BoxDecoration(
              color: AppColor.secondary, // Background color for edit action
            ),
            alignment: Alignment.centerRight,
            child: Icon(Icons.edit, color: AppColor.white).padAll(12),
          ),
          child: Container(
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
                  "jhondoe123@gmail.com",
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
          ),
        );
      },
    );
  }
}
