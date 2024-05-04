import 'dart:async';
import 'package:get/get.dart';
import 'package:lock_vault/main.dart';
import 'package:lock_vault/routes/app_pages.dart';
import 'package:lock_vault/utils/utils.dart';

class SplashController extends GetxController {
  final RxBool isAuthenticated = false.obs;

  @override
  void onInit() {
    super.onInit();
    Timer(
        400.ms,
        () => supabaseC.auth.onAuthStateChange.listen((event) {
              isAuthenticated.value =
                  supabaseC.auth.currentUser != null ? true : false;
              if (isAuthenticated.value == false) {
                // User is no longer authenticated, navigate to login or register page
                Get.offAllNamed(
                    Routes.GETSTARTED); // Replace with your login route
              } else {
                Get.offAllNamed(Routes.HOME);
              }
            }));
  }
}
