import 'dart:async';
import 'package:get/get.dart';
import 'package:lock_vault/main.dart';
import 'package:lock_vault/routes/app_pages.dart';
import 'package:lock_vault/utils/utils.dart';


class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Timer(200.ms, () => _checkAuthentication());
  }

  Future<void> _checkAuthentication() async {
    // Initialize shared preferences

    // Get current session
    final session = supabaseC.auth.currentSession;

    if (session != null) {
      // User is authenticated 
      // Navigate to the home screen
      Get.offAllNamed(Routes.HOME);
    } else {
      // User is not authenticated

      // Navigate to the get started screen
      Get.offAllNamed(Routes.GETSTARTED);
    }
  }
}
