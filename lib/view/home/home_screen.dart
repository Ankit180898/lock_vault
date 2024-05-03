import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lock_vault/constants/app_color.dart';
import 'package:lock_vault/controller/home_controller.dart';
import 'package:lock_vault/utils/size_helpers.dart';
import 'package:lock_vault/utils/utils.dart';
import 'package:lock_vault/view/home/components/main_content.dart';
import 'package:lock_vault/view/home/components/top_contents.dart';
import 'package:lock_vault/view/widgets/circular_progress/custom_circular_control.dart';
import 'package:lock_vault/view/widgets/common_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppColor.primarySoft,
          shape: const CircleBorder(eccentricity: 0.1),
          child: Icon(
            Icons.add,
            color: AppColor.white,
          ),
        ).padAll(8),
        body: Container(
          height: displayHeight(context),
          width: displayWidth(context),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 130, 5, 63),
                Color.fromARGB(255, 206, 65, 68)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TopContents(),
                verticalSpace(16),
                Center(
                  child: CustomCircularControl(
                    value: 0.9,
                    onChanged: (value) {
                      // Handle value change
                    },
                  ),
                ),
                verticalSpace(24),
                //main details container

                MainContent(),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}
