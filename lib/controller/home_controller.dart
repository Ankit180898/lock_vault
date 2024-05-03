import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock_vault/main.dart';
import 'package:lock_vault/routes/app_pages.dart';
import 'package:lock_vault/view/widgets/custom_toast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class HomeController extends GetxController {
  var userEmail = ''.obs;
  var userName = ''.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getProfile();
  }

  Future<void> getProfile() async {
    final prefs = await SharedPreferences.getInstance();

    final user = supabaseC.auth.currentUser;
    if (user != null) {
      final response = await supabaseC.from("users").select().eq('id', user.id);
      debugPrint("user: }");
      if (response.isEmpty) {
        // Handle error
        CustomToast.errorToast("Error", 'Error fetching user profile');
        return;
      }

      final userData = response.first;
      // Save user's email, name, and balance in shared preferences
      await prefs.setString('name', userData['name']);
      await prefs.setString('email', userData['email']);

      // Update reactive variables
      userEmail.value = userData['email'];
      userName.value = userData['name'];
    } else {
      // Handle case when no user is found
      CustomToast.errorToast("Error", 'User not found');
      // You may want to navigate the user to a specific screen or handle this case differently
    }
  }

  Future<void> signOut() async {
    final prefs = await SharedPreferences.getInstance();

    try {
      await supabaseC.auth.signOut();
      CustomToast.successToast("Success", "Signed out successfully");
    } on AuthException catch (error) {
      CustomToast.errorToast("Error", error.message);
    } catch (error) {
      CustomToast.errorToast("Error", 'Unexpected error occurred');
    } finally {
      prefs.clear();
      Get.offAllNamed(Routes.LOGIN);
    }
  }
}
