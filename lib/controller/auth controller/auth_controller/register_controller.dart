import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lock_vault/main.dart';
import 'package:lock_vault/routes/app_pages.dart';
import 'package:lock_vault/view/widgets/custom_toast.dart';
import 'package:supabase_flutter/supabase_flutter.dart';



class RegisterController extends GetxController {
  RxBool isLoading = false.obs;
  RxBool isHidden = true.obs;
  var balanceKeypad = TextEditingController();

  var emailC = TextEditingController();
  var passwordC = TextEditingController();
  var nameC = TextEditingController();
  var imageUrl = ''.obs;
  RxString selectedAvatarUrl = ''.obs;
  List<String> avatarList = [
    'https://i.pinimg.com/originals/d4/3d/fb/d43dfb69c55f602950d23b9df2450cb6.jpg', // Add a camera icon
    'https://avatar.iran.liara.run/public/32',
    'https://avatar.iran.liara.run/public/35',
    'https://avatar.iran.liara.run/public/23',
    'https://avatar.iran.liara.run/public/50',
    'https://avatar.iran.liara.run/public/73',
    'https://avatar.iran.liara.run/public/64',
    'https://avatar.iran.liara.run/public/77',
  ];

  @override
  void dispose() {
    super.dispose();
    emailC.dispose();
    passwordC.dispose();
    nameC.dispose();
  }

  Future<void> register() async {
    if (emailC.text.isNotEmpty &&
        passwordC.text.isNotEmpty &&
        nameC.text.isNotEmpty) {
      isLoading.value = true;
      try {
        AuthResponse res = await supabaseC.auth
            .signUp(password: passwordC.text, email: emailC.text);
        isLoading.value = false;

        // insert registered user to table users
        await supabaseC.from("users").insert({
          "name": nameC.text,
          "email": emailC.text,
          "created_at": DateTime.now().toIso8601String(),
        });

        Get.offAllNamed(Routes.HOME);
      } catch (e) {
        isLoading.value = false;
        emailC.clear();
        nameC.clear();
        passwordC.clear();
        CustomToast.errorToast("Error", e.toString());
        debugPrint(e.toString());
      }
    } else {
      
      CustomToast.errorToast("ERROR", "Email, password and name are required");
    }
  }
}
